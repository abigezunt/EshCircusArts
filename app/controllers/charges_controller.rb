class ChargesController < ApplicationController
before_filter :authenticate_user! #unless user_signed_in? 

def new
  @amount = ( current_user.unpaid_balance * 100 )
  @unpaid_course_registrations = current_user.course_registrations.where(paid: nil)
end

def create
  # Amount in cents
  @amount = ( current_user.unpaid_balance * 100 )
  binding.pry

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
