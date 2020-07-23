class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login,only: [:index,:new,:create,:edit,:update]
    def index

    end


    def show

    end

    def new
    end

    def create
        if !session[:name].present?
            redirect_to '/login'
        else
            session[:name] = params[:name]
        end

        if !!session[:name] 
           redirect_to '/'
        end
    end

    def update

    end

    def destroy
      if  ! session.include? "name"
         session[:name] = nil
      else
       
        session.delete :name 
      end

        
    end

    private


def require_login
    return head(:forbidden) unless session.include? :session_id  
end

end