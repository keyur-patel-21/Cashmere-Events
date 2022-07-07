class CheckoutController < ApplicationController
    
  def create
		event = Event.find(params[:id])
		@session = Stripe::Checkout::Session.create({
			customer: current_user.stripe_customer_id,
			payment_method_types: ['card'],
			line_items: [{
				name: event.name,
				amount: event.ticket_price,
				currency: "inr",
				quantity: 1
			}],
			mode: 'payment',
			success_url: root_url,
			cancel_url: root_url,
		})	
		respond_to do |format|
			format.js 
		end
  end
end
