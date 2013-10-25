class AddSevenWeekSessionIdToCourseRegistrations < ActiveRecord::Migration
  def change
  	add_column :course_registrations, :seven_week_session_id, :integer, :references=>"seven_week_sessions", index: true
  end
end
 