class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only:[:new, :create, :destroy]
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to "/sessions/login"
    else
      redirect_to "/welcome"
    end
  end

  def welcome
    @user = session[:name]
  end

  def destroy
    session[:name] = nil
  end

end
