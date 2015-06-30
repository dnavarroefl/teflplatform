class SessionsController < ApplicationController

	def new 
	end

	def create
		
	  if @user = user = login(params[:email], params[:password])
	    redirect_back_or_to home_url, :notice => "Logged in!"
	  else
	    flash.now[:alert] = "Invalid email or password"
	    render action: 'new'
	  end
	end

	def destroy
	  	session[:user_id] = nil
	  	redirect_to root_url, :notice => "Logged out!"
	end
end 

