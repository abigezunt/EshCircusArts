class SevenWeekSession < ActiveRecord::Base
  has_many :courses
  after_save :create_courses

  # def reserve(user)
  # 	self.number_of_sessions.times do 
  # 		CourseRegistration.create(user_id: user.id, course_id: x)
  # 	end
  # end

  def create_courses
  	self.number_of_sessions.times do
  		Course.create(session_id: self.id, name: self.name, start_date: self.start_date, start_time: self.start_time, end_time: self.end_time)
  end
end
