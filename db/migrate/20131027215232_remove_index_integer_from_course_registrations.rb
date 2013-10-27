class RemoveIndexIntegerFromCourseRegistrations < ActiveRecord::Migration
  def change
  	remove_index :course_registrations, :integer
  end
end
