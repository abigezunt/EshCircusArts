class AddTimeToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :time, :datetime
  end
end
