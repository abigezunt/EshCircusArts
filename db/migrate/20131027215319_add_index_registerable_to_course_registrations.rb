class AddIndexRegisterableToCourseRegistrations < ActiveRecord::Migration
  def change
  	add_index :course_registrations, :registerable_id
  end
end
