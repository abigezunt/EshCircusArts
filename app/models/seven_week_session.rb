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
  									start_date: self.start_date + (7 * x),
                    drop_in_price: self.drop_in_price,
  									)
    end
  end

  def future
    self.start_date > Date.today
  end

  def full
    self.max_class_size <= (self.course_registrations.size - self.course_registrations.where(role: "instructor").size)
  end

  def students_registered
    self.course_registrations.size - self.course_registrations.where(role: "instructor")
  end

  def spots_left
    self.max_class_size - (self.course_registrations.size - self.course_registrations.where(role: "instructor").size)
  end
end
