class SevenWeekSession < ActiveRecord::Base
  has_many :courses
  after_save :create_courses

  # def reserve(user)
  # 	self.number_of_sessions.times do 
  # 		CourseRegistration.create(user_id: user.id, course_id: x)
  # 	end
  # end

  def create_courses
  	self.number_of_sessions.times do |x|
  		Course.create(seven_week_session_id: self.id, 
  									name: self.name, 
  									start_time: self.start_time, 
  									end_time: self.end_time,
  									discipline_id: self.discipline_id,
  									description: self.description,
  									photo_url: self.photo_url,
  									instructor_ids: self.instructor_ids,
  									max_class_size: self.max_class_size,
  									price: (self.price.to_f/self.number_of_sessions.to_f).to_i
  									start_date: self.start_date + (7 * x)
  									)
  end
end
