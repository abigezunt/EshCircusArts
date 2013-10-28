class SevenWeekSession < ActiveRecord::Base
  has_many :courses
  has_many :course_registrations, as: :registerable
  has_many :users, through: :course_registrations
  after_create :assign_instructors
  after_create :create_courses
  scope :future, -> { where("'start_date' > ?", Date.today)}
  scope :equivalent, ->(price) {where("full_price <= ?", price)} 

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
                    drop_in_price: self.drop_in_price
  									)
    end
    # Create make-up class
    Course.create(
              name: "Make-up class for #{self.name}", 
              start_time: self.start_time, 
              end_time: self.end_time,
              discipline_id: self.discipline_id,
              description: "Make-up class",
              photo_url: self.photo_url,
              instructor_ids: self.instructor_ids,
              max_class_size: self.max_class_size,
              drop_in_price: self.drop_in_price,
              start_date: self.start_date + (56)
              )
  end

  def assign_instructors
    self.instructor_ids.each do |instructor_id|
      CourseRegistration.create(user_id: instructor_id, role: "instructor", registerable_id: self.id, registerable_type: "SevenWeekSession", paid: true)
    end
  end

  def future
    self.start_date > Date.today
  end

  def short_description
    "#{self.name} #{self.start_date.strftime("%As")} #{self.start_time.strftime("%-l:%M%P")} - #{self.end_time.strftime("%-l:%M%P")} starting on #{self.start_date.strftime("%b %-d %Y")}"
  end

  def full
    self.max_class_size <= (self.course_registrations.size - self.course_registrations.where(role: "instructor").size)
  end

  def self.where_user_not_registered(user)
    where('id NOT IN (?)', SevenWeekSession.joins(:course_registrations).where({ course_registrations: { user_id: user.id }}).pluck(:id))
  end


  def students_registered
    self.course_registrations.size - self.course_registrations.where(role: "instructor")
  end

  def spots_left
    self.max_class_size - (self.course_registrations.size - self.course_registrations.where(role: "instructor").size)
  end
end
