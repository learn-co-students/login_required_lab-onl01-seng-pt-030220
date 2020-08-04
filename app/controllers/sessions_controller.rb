class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    end
     session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end

end
