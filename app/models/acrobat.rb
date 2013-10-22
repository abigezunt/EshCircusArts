class Acrobat < ActiveRecord::Base
	has_many :courses, through: :course_registrations
end
