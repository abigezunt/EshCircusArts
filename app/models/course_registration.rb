class CourseRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :seven_week_session
  belongs_to :course, counter_cache: true
  scope :current, -> { where("'course.start_date' > ?", Date.today)}

  def self.check_out(user)
    unpaid_reg = user.course_registrations.where(paid: nil)
    unpaid_reg.each do |reg|
      reg.paid = true 
      reg.save
    end
  end

  def price
    if self.course.price
      self.course.price
    elsif self.course.seven_week_session.price
      self.course.seven_week_session.price / self.course.seven_week_session.number_of_sessions
    else
      self.course.drop_in_price
    end
  end
end
