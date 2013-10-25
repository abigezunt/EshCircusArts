class AddSubToCourseRegistrations < ActiveRecord::Migration
  def change
  	add_column :course_registrations, :sub, :boolean
  end
end
