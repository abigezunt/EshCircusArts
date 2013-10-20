class Course < ActiveRecord::Base
  has_many :users, through: :registrations
  belongs_to :discipline
end
