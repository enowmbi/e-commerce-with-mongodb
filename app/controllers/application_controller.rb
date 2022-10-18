class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:first_name])
    devise_parameter_sanitizer.permit(:signup, keys: [:last_name])
    devise_parameter_sanitizer.permit(:signup, keys: [:image])

    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image])
  end
end
