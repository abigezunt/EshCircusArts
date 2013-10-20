class User < ActiveRecord::Base
  has_many :courses, through: :registrations
end
