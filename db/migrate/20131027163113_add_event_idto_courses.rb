class AddEventIdtoCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :event_id, :string
  end
end
