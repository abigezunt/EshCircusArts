class Course < ActiveRecord::Base
  has_many :course_registrations
  has_many :users, through: :course_registrations
  belongs_to :discipline

  # accepts_attributes_for :users

  def future
  	self.start_date > Date.today
  end
end
