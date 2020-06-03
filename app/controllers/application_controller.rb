class ApplicationController < ActionController::Base
    protect_forgery_with :exception
    before_action :login_required

    def login_required
        if !logged_in?
            redirect_to login_path :notice => "You are not logged in, please do so or signup"
        end
    end

    def logged_in?
        !!current_user
    end
    helper_method :logged_in?

    def current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
            @current_user
        else
            false
        end
    end
    helper_method :current_user
end
