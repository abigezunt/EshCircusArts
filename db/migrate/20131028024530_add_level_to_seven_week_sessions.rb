class AddLevelToSevenWeekSessions < ActiveRecord::Migration
  def change
    add_column :seven_week_sessions, :level, :string
    change_column :courses, :level, :string
  end
end
