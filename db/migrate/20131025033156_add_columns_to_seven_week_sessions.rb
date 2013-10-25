class AddColumnsToSevenWeekSessions < ActiveRecord::Migration
  def change
  	add_column :seven_week_sessions, :description, :text
  	add_column :seven_week_sessions, :discipline_id, :integer
  	add_column :seven_week_sessions, :photo_url, :string
  	add_column :seven_week_sessions, :instructor_ids, :integer, array: true
  	add_column :seven_week_sessions, :course_registrations_count, :integer
  	add_column :seven_week_sessions, :max_class_size, :integer
  end
end
