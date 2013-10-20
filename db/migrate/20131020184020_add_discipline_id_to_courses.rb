class AddDisciplineIdToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :discipline_id, :integer, :references=>"disciplines"
  	remove_column :courses, :discipline
  end
end
