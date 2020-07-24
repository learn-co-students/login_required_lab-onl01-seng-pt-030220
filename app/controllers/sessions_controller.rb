class SessionsController < ApplicationController
   # before_action :require_login
   # skip_before_action :require_login,only: [:show,:index,:new,:create,:edit,:update,:destroy]
  

    def create
        
        if !params[:name].present?
           redirect_to '/login'
        end
          session[:name] = params[:name]
    end

    def destroy 
        session.delete :name 
    end

    private
   # def require_login
    #   return head(:forbidden) unless session.include? :name  
   # end

end