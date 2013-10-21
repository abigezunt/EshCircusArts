class AddNameToCoursesTable < ActiveRecord::Migration
  def change
  	add_column :courses, :name, :text
  end
end
