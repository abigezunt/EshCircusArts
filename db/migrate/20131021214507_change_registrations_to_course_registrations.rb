class ChangeRegistrationsToCourseRegistrations < ActiveRecord::Migration
  def change
  	rename_table :registrations, :course_registrations
  end
end
