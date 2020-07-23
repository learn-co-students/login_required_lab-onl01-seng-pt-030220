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

    private


def require_login
    return head(:forbidden) unless session.include? :user_id  
end

end