class RenameDropInRateToDropInPriceInSessions < ActiveRecord::Migration
  def change
  	rename_column :seven_week_sessions, :drop_in_rate, :drop_in_price
  end
end
