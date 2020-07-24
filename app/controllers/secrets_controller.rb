class SecretsController < ApplicationController
before_action :require_login

private

def require_login
      redirect_to controller: 'sessions', action: 'new'  if !current_user  
end


end