class Course < ActiveRecord::Base
  has_many :course_registrations
  validates_associated :course_registrations
  has_many :users, through: :course_registrations
  belongs_to :discipline
  belongs_to :seven_week_session
  after_save :assign_instructors, :create_gcal_event
  before_destroy :destroy_gcal_event
  scope :future, -> { where("'start_date' > ?", Date.today)}
  scope :equivalent, ->(price) {where("drop_in_price <= ?", price)} # 
  # accepts_attributes_for :users

  # working on automatically creating an instructor assignment whenever a course is created

  def assign_instructors
    self.instructor_ids.each do |instructor_id|
      CourseRegistration.create(user_id: instructor_id, role: "instructor", course_id: self.id, paid: true)
    end
  end


  def create_gcal_event
    event = Cal.create_event do |e|
      e.title = self.name
      e.start_time = DateTime.new(self.start_date.year, self.start_date.month, self.start_date.day, self.start_time.hour, self.start_time.min, self.start_time.sec).to_s
      e.end_time = DateTime.new(self.start_date.year, self.start_date.month, self.start_date.day, self.end_time.hour, self.end_time.min, self.end_time.sec).to_s
    end
  end




  # def destroy_gcal_event
  #   Cal.find

  # end

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

  def title
    name
  end

end
