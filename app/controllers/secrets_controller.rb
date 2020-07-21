class SecretsController < ApplicationController

  before_action :require_logged_in

  def show
  end

  # private

  # def require_login
  #   if !current_user
  #     redirect_to login_path
  #   end
  # end
end