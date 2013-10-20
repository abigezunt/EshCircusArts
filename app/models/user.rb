class User < ActiveRecord::Base
  has_many :courses, through: :registrations

  def unpaid_balance
  	unpaid_registrations = Registration.find(:all, :conditions => [:user_id == self.id, :paid == false])
  	balance = 0
  	unpaid_registrations.each do |registration|
  		balance += registration.course.price
  	end
  	return balance
  end

end
