class SecretsController < ApplicationController
  before_action :authenticate

  def show
    
  end

  # private

  # def require_login
  #   redirect_to controller: 'sessions', action: 'new' unless current_user
  # end
end
