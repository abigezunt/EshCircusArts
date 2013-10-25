class CourseRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :seven_week_session, counter_cache: true
  belongs_to :course, counter_cache: true
  scope :current, -> { where("'course.start_date' > ?", Date.today)}
  after_save :create_sub_registrations

  def self.check_out(user)
    unpaid_reg = user.course_registrations.where(paid: nil)
    unpaid_reg.each do |reg|
      reg.paid = true 
      reg.save
    end
  end

  def create_sub_registrations
    if self.seven_week_session_id

      self.seven_week_session.courses.each do |course|
        CourseRegistration.create(user_id: self.user_id, role: self.role, paid: self.paid, sub: true, course_id: course.id, price: 0, comments: "Registered for entire session")
      end

    end
  end

  def name
    if self.course 
      self.course.name
    elsif self.seven_week_session
      self.seven_week_session.name
    end
  end

  def course_page
    if self.course
      self.course
    elsif self.seven_week_session
      self.seven_week_session
    end
  end

  def is_full_registration
    self.price > 0
  end
  
end
