class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    !!current_user
  end 

  def authenticate
    redirect_to login_path if !logged_in?
  end 

  def current_user
    # User.find_by(id: session[:user_id])
    session[:name] ||= params[:name]
  end
  
end
