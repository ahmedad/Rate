class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_up_path_for(user)
  #   if user.is_candidate?
  #   	new_subscription_path
  #   end
  # end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :user_type, :email, :password) }
  # end
end
