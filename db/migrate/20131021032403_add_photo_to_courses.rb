class AddPhotoToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :photo_url, :string
  end
end
