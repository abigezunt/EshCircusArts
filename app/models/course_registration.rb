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
  
end
