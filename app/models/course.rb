class Course < ActiveRecord::Base
  has_many :course_registrations
  has_many :users, through: :course_registrations
  belongs_to :discipline
  belongs_to :seven_week_session
  after_save :assign_instructors
  scope :future, -> { where("'start_date' > ?", Date.today)}
  scope :equivalent, ->(price) {where("drop_in_price <= ?", price)} # 
  # accepts_attributes_for :users

  # working on automatically creating an instructor assignment whenever a course is created

  def assign_instructors
    self.instructor_ids.each do |instructor_id|
      CourseRegistration.create(user_id: instructor_id, role: "instructor", course_id: self.id, paid: true)
    end
  end

  def short_description
    "#{self.name} #{self.start_date.strftime("%b %-d")} #{self.start_time.strftime("%-l:%M%P")} - #{self.end_time.strftime("%-l:%M%P")}"
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
  
  def one_time_price
    drop_in_price || price
  end

end
