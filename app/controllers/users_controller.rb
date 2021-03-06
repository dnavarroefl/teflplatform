class UsersController < ApplicationController
    
    def index 
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end 

    def new
      @user = User.new
    end

    def contact
       @user = User.find(params[:id])
    end 
    
    def edit  
        @user = User.find(params[:id])
    end 

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to  user_path(@user)
    end 

    def create
        @user = User.new(user_params)

      if @user.save
          redirect_to root_url, :notice => "Signed up!"
      else
        render :new
      end
    end  

    def destroy
      @user = User.find(params[:id])
      @user.destroy
     
      redirect_to users_path
    end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end 
