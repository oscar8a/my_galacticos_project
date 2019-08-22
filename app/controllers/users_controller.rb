class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]


    def show 

    end
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session["user_id"] = @user.id
            flash[:message] = "Created Profile for #{@user.name}"
            redirect_to main_path
        else
            flash[:message] = "Invalid email or Password."
            redirect_to new_user_path
        end
    end
    
    def edit 
    end 

    def update 
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy 
        session["user_id"] = nil
        redirect_to login_path
    end

    def main
        # byebug
        # @user = User.find(params[:id])
        @current_user
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :nationality, :password)
    end    


    def find_user 
        @user = User.find(params[:id])
    end

    
end
