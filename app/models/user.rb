class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :course_registrations
  has_many :courses, :through => :course_registrations, :source => :registerable, :source_type => "course_registrations.registerable_type = 'Course'"
  has_many :seven_week_sessions, :through => :course_registrations, :source => :registerable, :source_type => "course_registrations.registerable_type = 'SevenWeekSession'"


  def unpaid_balance
  	unpaid_course_registrations = CourseRegistration.where(user_id: self.id, paid: nil, role: "student")
  	balance = 0
  	unpaid_course_registrations.each do |course_registration|
  		  balance += course_registration.price
  	end
  	return balance
  end

  def courses_teaching
    CourseRegistration.where(user_id: self.id, role: "instructor").current
  end

  def courses_taking
    CourseRegistration.where(user_id: self.id, role: "student").current
  end

end
