class SecretsController < ApplicationController
before_action :require_login


def index 

end


def show 
   session[:name]
end

def new

end

def create

end

def edit

end

def update
end


private

def require_login
    return head(:forbidden) unless session.include? :user_id  
end


end