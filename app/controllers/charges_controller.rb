class ChargesController < ApplicationController
before_filter :authenticate_user! #unless user_signed_in? 

def new
  @unpaid_course_registrations = current_user.course_registrations.where(paid: nil)
end

def create
  # Amount in cents
  @amount = current_user.unpaid_balance

  customer = Stripe::Customer.create(
    :email => current_user.email,
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => current_user.id,
    :amount      => @amount,
    :description => current_user.name,
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end

end
