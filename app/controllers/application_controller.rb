class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller?
  before_action :configure_devise_paramss, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def configure_devise_paramss
        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
        user_params.permit(:name, :email)
      end
  end
end
