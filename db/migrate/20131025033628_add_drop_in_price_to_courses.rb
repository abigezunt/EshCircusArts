class AddDropInPriceToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :drop_in_price, :integer
  end
end
