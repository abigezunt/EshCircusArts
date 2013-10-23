class AddCourseRegistrationsCountToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :course_registrations_count, :integer
  	add_column :courses, :max_class_size, :integer, default: 6
  end
end
