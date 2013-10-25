class RemoveColumnsFromCourses < ActiveRecord::Migration
  def change
  	remove_column :courses, :end_date
  	remove_column :courses, :instructor_pay
  	add_column :courses, :session_id, :integer
  end
end
