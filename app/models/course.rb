class Course < ActiveRecord::Base
  has_many :course_registrations
  has_many :users, through: :course_registrations
  belongs_to :discipline
  after_save :assign_instructors
  # accepts_attributes_for :users

  # working on automatically creating an instructor assignment whenever a course is created

  def assign_instructors
    self.instructor_ids.each do |instructor_id|
      CourseRegistration.create(user_id: instructor_id, role: "instructor", course_id: self.id, paid: true)
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

end
