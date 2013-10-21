class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
