class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :first_name, :last_name, :admin])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password, :first_name, :last_name, :admin])
  end

end
