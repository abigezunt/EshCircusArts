class AddDropInRateToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :drop_in_rate, :integer
  end
end
