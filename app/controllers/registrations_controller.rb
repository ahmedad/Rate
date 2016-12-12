class RegistrationsController < Devise::RegistrationsController
	before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :select_plan, only: :new
	def create
		super
	end

  private
    def select_plan
      unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2')
        flash[:notice] = "please choose a membership to sign up"
        redirect_to root_path
      end
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