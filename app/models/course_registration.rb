class CourseRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  def self.check_out(user)
    unpaid_reg = user.course_registrations.where(paid: nil)
    unpaid_reg.each do |reg|
      reg.paid = true 
      reg.save
    end
  end
  
end
