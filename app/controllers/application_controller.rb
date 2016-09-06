class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
  	# Find user model based on the session's user_id
  	# and only do this if session user id exists.
  	# Cache above in instance variable due to likelyhood of 
  	# being called more than once
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Helper method allows us to access the current user method
  # inside the views.
  helper_method :current_user


  def authorize
    redirect_to login_path, alert: "Not authorized" if current_user.nil?
  end
end
