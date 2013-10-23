class Course < ActiveRecord::Base
  has_many :course_registrations
  has_many :users, through: :course_registrations
  belongs_to :discipline

  # accepts_attributes_for :users

  # working on automatically creating an instructor assignment whenever a course is created

  # def initialize(instructor_ids)
  #   @instructor_ids = instructor_ids
  #   assign_instructor(@instructor_ids)
  # end 

  # def assign_instructor(instructor_ids)
  #   self.instructor_ids.each do |instructor_id|
  #     CourseRegistration.create(user_id: instructor_id, role: "teacher", course_id: self.id, comments: "Teacher assigned by #{current_user.name}")
  #   end
  # end

  def future
  	self.start_date > Date.today
  end

end
