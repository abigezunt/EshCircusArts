class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :courses, through: :course_registrations

  def unpaid_balance
  	unpaid_course_registrations = CourseRegistration.where(user_id: self.id, paid: nil)
  	balance = 0
  	unpaid_course_registrations.each do |course_registration|
  		balance += course_registration.course.price
  	end
  	return balance
  end

end
