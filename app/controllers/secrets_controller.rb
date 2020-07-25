class SecretsController < ApplicationController
    before_action :require_login, only: [:show]

    def show 
        # if !current_user 
        #     redirect_to login_path
        # end 
        #refactor here before_action
    end 

    private 

    def require_login
        if !current_user 
            redirect_to login_path
        end 
    end 
end
