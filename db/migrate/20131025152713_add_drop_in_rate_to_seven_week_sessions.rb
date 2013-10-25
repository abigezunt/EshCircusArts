class AddDropInRateToSevenWeekSessions < ActiveRecord::Migration
  def change
  	add_column :seven_week_sessions, :drop_in_rate, :integer
  end
end
