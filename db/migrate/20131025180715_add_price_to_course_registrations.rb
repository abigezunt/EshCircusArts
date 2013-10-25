class AddPriceToCourseRegistrations < ActiveRecord::Migration
  def change
  	add_column :course_registrations, :price, :integer
  end
end
