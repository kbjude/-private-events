class SessionsController < ApplicationController
    skip_before_action :login_required, :only => [:new, :create]
    def new
        @user = User.new
    end

    def create
        user = User.find_by_name(params[:name])
        if user && user.authenticate(params[:username])
            session[:user_id] = user_id
            redirect_to root_path, :notice => "Wlecome back, #{user.name}"
        else
            flash.now[:alert] = 'Invalid name or username'
            render 'new'
        end
    end

    # def destroy
    #     session[:user_id] = nil
    #     redirect_to root_path 
    # end

    def show
        
    end

    private
    def login(user)
      session[:user_id] = nil
    end
end