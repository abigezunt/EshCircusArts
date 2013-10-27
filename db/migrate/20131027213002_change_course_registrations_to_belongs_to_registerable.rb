class ChangeCourseRegistrationsToBelongsToRegisterable < ActiveRecord::Migration
  def change
  	rename_column :course_registrations, :course_id, :integer
  	remove_column :course_registrations, :seven_week_session_id, :integer
    add_reference :course_registrations, :registerable, polymorphic: true
  end
end
