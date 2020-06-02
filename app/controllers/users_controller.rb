class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save
        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end

    def show
        @user = User.find(user_params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :username)
    end
end
