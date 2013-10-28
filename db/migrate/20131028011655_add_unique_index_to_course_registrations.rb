class AddUniqueIndexToCourseRegistrations < ActiveRecord::Migration
  def change
  	add_index :course_registrations, [:user_id, :registerable_id, :registerable_type], unique: true, :name => 'unique_registration_index'
  end
end
