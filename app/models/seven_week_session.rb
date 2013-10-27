class SevenWeekSession < ActiveRecord::Base
  has_many :courses
  has_many :course_registrations, as: :registerable
  has_many :users, through: :course_registrations
  after_save :create_courses
  scope :future, -> { where("'start_date' > ?", Date.today)}

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

  def future
    self.start_date > Date.today
  end

  def short_description
    "#{self.name} #{self.start_date.strftime("%b %-d")} #{self.start_time.strftime("%-l:%M%P")} - #{self.end_time.strftime("%-l:%M%P")}"
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
