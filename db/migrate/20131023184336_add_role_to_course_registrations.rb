class AddRoleToCourseRegistrations < ActiveRecord::Migration
  def change
  	add_column :course_registrations, :role, :string, default: "student"
  end
end
