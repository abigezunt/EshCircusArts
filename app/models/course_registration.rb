class CourseRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :seven_week_session, counter_cache: true
  belongs_to :course, counter_cache: true
  scope :current, -> { where("'course.start_date' > ?", Date.today)}
  validate :cannot_duplicate_registrations
  after_save :create_sub_registrations
  validates :role, inclusion: { in: %w(student instructor)}
  # validates :

  def self.check_out(user)
    unpaid_reg = user.course_registrations.where(paid: nil)
    unpaid_reg.each do |reg|
      reg.paid = true 
      reg.save
    end
  end

  def cannot_duplicate_registrations
    if course_id.present?
      if user.courses.where(id: course_id).any?
        errors.add(:user_id, "is already registered for this course")
      end
    elsif seven_week_session_id.present?
      if user.seven_week_sessions.where(id: seven_week_session_id).any?
        errors.add(:user_id, "is already registered for this session")
      end
    end
  end

  def create_sub_registrations
    if self.seven_week_session_id
      self.seven_week_session.courses.each do |course|
        CourseRegistration.create(user_id: self.user_id, role: self.role, paid: self.paid, sub: true, course_id: course.id, price: 0, comments: self.comments)
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
    course || seven_week_session
  end

  def is_full_registration
    self.price > 0
  end
  
end
