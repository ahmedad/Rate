class RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters, if: :devise_controller?
	def create
		super
	end

	protected
	def after_sign_up_path_for(resource)
    if resource.is_candidate?
    	new_subscription_path
    else
    	root_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :user_type, :passw])
  end
end