class ApplicationController < ActionController::API
  # protect_from_forgery with: :exception
  # before_action :verified_user
  # helper_method :current_user
 
    def logged_in?
      !!current_user
    end

    def current_user
      User.find_by(id: session[:user_id])
    end
end
