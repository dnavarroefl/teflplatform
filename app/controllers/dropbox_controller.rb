
# ---------------------------------------------------------------------------------------
# A Rails 3 controller that:
# - Runs the through Dropbox's OAuth 2 flow, yielding a Dropbox API access token.
# - Makes a Dropbox API call to upload a file.
#
# To set up:
# 1. Create a Dropbox App key and secret to use the API. https://www.dropbox.com/developers
# 2. Add http://localhost:3000/dropbox/auth_finish as a Redirect URI for your Dropbox app.
# 3. Copy your App key and App secret into APP_KEY and APP_SECRET below.
#
# To run:
# 1. You need a Rails 3 project (to create one, run: rails new <folder-name>)
# 2. Copy dropbox_sdk.rb into <folder-name>/vendor
# 3. Copy this file into <folder-name>/app/controllers/
# 4. Add the following lines to <folder-name>/config/routes.rb
#        get  "dropbox/main"
#        post "dropbox/upload"
#        get  "dropbox/auth_start"
#        get  "dropbox/auth_finish"
# 5. Run: rails server
# 6. Point your browser at: https://localhost:3000/dropbox/main

require 'dropbox_sdk'
require 'securerandom'
require "active_support/core_ext/hash/keys"


APP_KEY = "al6ru270vblzjzv"
APP_SECRET = "onlnomqwilec4cg"

=begin
flow = DropboxOAuth2FlowNoRedirect.new(APP_KEY, APP_SECRET)
       authorize_url = flow.start()

# Have the user sign in and authorize this app
        puts '1. Go to: ' + authorize_url
        puts '2. Click "Allow" (you might have to log in first)'
        puts '3. Copy the authorization code'
        print 'Enter the authorization code here: '
        code = gets.strip

        # This will fail if the user gave us an invalid authorization code
        access_token, user_id = flow.finish(code)

        client = DropboxClient.new(access_token)
        puts "linked account:", client.account_info().inspect
=end

class DropboxController < ApplicationController

    def main
        client = get_dropbox_client
        unless client
            redirect_to(:action => 'auth_start') and return
        end

        account_info = client.account_info

        # Show a file upload page
        render :inline =>
            "#{account_info['email']} <br/><%= form_tag({:action => :upload}, :multipart => true) do %><%= file_field_tag 'file' %><%= submit_tag 'Upload' %><% end %>"
    end

module Dropbox
  module Explorer
    class Folder
      def initialize(folder_metadata)
        @folder_metadata = folder_metadata.symbolize_keys
      end

      def get_contents_paths(options = {})
        if @folder_metadata[:contents]
          if options[:only_files]
            @folder_metadata[:contents].map { |content| content unless content['is_dir'] }.compact
          else
            @folder_metadata[:contents]
          end
        else
          raise ArgumentError, "There is no contents for this folder metadata"
        end
      end
    end
  end
end

=begin
    def get_file_and_metadata
        client = DropboxClient.new(access_token)
        puts "linked account:", client.account_info().inspect

        file = open('working-draft.txt')
        response = client.put_file('/magnum-opus.txt', file)
        puts "uploaded:", response.inspect

        root_metadata = client.metadata('/')
        puts "metadata:", root_metadata.inspect

        contents, metadata = client.get_file_and_metadata('/magnum-opus.txt')
        open('magnum-opus.txt', 'w') {|f| f.puts contents }
    end 
=end

    def upload
        client = get_dropbox_client
        unless client
            redirect_to(:action => 'auth_start') and return
        end

        begin
            # Upload the POST'd file to Dropbox, keeping the same name
            resp = client.put_file(params[:file].original_filename, params[:file].read)
            render :text => "Upload successful.  File now at #{resp['path']}"
        rescue DropboxAuthError => e
            session.delete(:access_token)  # An auth error means the access token is probably bad
            logger.info "Dropbox auth error: #{e}"
            render :text => "Dropbox auth error"
        rescue DropboxError => e
            logger.info "Dropbox API error: #{e}"
            render :text => "Dropbox API error"
        end
    end

    def get_dropbox_client
        if session[:access_token]
            begin
                access_token = session[:access_token]
                DropboxClient.new(access_token)
            rescue
                # Maybe something's wrong with the access token?
                session.delete(:access_token)
                raise
            end
        end
    end

    def get_web_auth()
        redirect_uri = url_for(:action => 'auth_finish')
        DropboxOAuth2Flow.new(APP_KEY, APP_SECRET, redirect_uri, session, :dropbox_auth_csrf_token)
    end

    def auth_start
        authorize_url = get_web_auth().start()

        # Send the user to the Dropbox website so they can authorize our app.  After the user
        # authorizes our app, Dropbox will redirect them here with a 'code' parameter.
        redirect_to authorize_url
    end

    def auth_finish
        begin
            access_token, user_id, url_state = get_web_auth.finish(params)
            session[:access_token] = access_token
            redirect_to :action => 'main'
        rescue DropboxOAuth2Flow::BadRequestError => e
            render :text => "Error in OAuth 2 flow: Bad request: #{e}"
        rescue DropboxOAuth2Flow::BadStateError => e
            logger.info("Error in OAuth 2 flow: No CSRF token in session: #{e}")
            redirect_to(:action => 'auth_start')
        rescue DropboxOAuth2Flow::CsrfError => e
            logger.info("Error in OAuth 2 flow: CSRF mismatch: #{e}")
            render :text => "CSRF error"
        rescue DropboxOAuth2Flow::NotApprovedError => e
            render :text => "Not approved?  Why not, bro?"
        rescue DropboxOAuth2Flow::ProviderError => e
            logger.info "Error in OAuth 2 flow: Error redirect from Dropbox: #{e}"
            render :text => "Strange error."
        rescue DropboxError => e
            logger.info "Error getting OAuth 2 access token: #{e}"
            render :text => "Error communicating with Dropbox servers."
        end
    end
end
