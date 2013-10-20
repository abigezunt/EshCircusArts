class Course < ActiveRecord::Base
  has_many :users, through: :registrations
end
