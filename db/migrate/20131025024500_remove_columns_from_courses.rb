class RemoveColumnsFromCourses < ActiveRecord::Migration
  def change
  	remove_column :courses, :end_date, :date
  	remove_column :courses, :instructor_pay, :integer
  	add_column :courses, :seven_week_session_id, :integer
  end
end
