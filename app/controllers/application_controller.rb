class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:provider])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:uid])
    devise_parameter_sanitizer.permit(:account_update, keys: [:provider])
    devise_parameter_sanitizer.permit(:account_update, keys: [:uid])
  end
end

