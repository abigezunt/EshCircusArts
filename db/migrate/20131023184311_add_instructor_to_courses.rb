class AddInstructorToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :instructor_ids, :integer, array: true
  end
end
