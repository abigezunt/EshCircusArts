class User < ActiveRecord::Base
  has_many :courses, through: :registrations

  def unpaid_balance
  	unpaid_registrations = Registration.where(user_id: self.id, paid: nil)
  	balance = 0
  	unpaid_registrations.each do |registration|
  		balance += registration.course.price
  	end
  	return balance
  end

end
