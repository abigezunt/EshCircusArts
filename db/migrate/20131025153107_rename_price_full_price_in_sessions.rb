class RenamePriceFullPriceInSessions < ActiveRecord::Migration
  def change
  	rename_column :seven_week_sessions, :price, :full_price
  end
end
