class AddInstructorToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :instructor_id, :integer
  end
end
