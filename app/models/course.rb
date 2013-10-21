class Course < ActiveRecord::Base
  has_many :users, through: :course_registrations
  belongs_to :discipline

  def future
  	self.start_date > Date.today
  end
end
