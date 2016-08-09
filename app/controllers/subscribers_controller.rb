class SubscribersController < ApplicationController

	before_filter :authenticate_user!

	def index
		
	end

	def update
		token = params[:stripeToken]

		customer = Stripe::customer.create(
			card: token,
			plan: 26,
			email: current_user.email
			)
		current_user.subscribed = true
		current_user.stripeid = customer.id
		current_user.save

		redirect_to new_pin_path
	end
end
