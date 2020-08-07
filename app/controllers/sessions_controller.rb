class SessionsController < ApplicationController
  def create

    if !params[:name].present?
       redirect_to '/login'
    end
      session[:name] = params[:name]
end

def destroy 
    session.delete :name 
end

end
