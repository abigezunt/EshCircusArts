class RemoveDropInRateFromSessions < ActiveRecord::Migration
  def change
  	remove_column :courses, :drop_in_rate, :integer
  end
end
