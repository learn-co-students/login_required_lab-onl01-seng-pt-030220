class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def current_user
      session[:name]
  end

  def login_redirect
    redirect_to login_path unless current_user
  end

  def hello
    byebug
    login_redirect
  end
  
end
