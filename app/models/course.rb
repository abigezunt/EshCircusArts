class Course < ActiveRecord::Base
  has_many :users, through: :course_registrations
  belongs_to :discipline
end
