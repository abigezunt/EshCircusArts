# class RemoveColumnsUsers < ActiveRecord::Migration
#   def change
#   	remove_column :users, :name, :string
#   	remove_column :users, :bio, :text
#   	remove_column :users, :injuries, :string, array: true
#   	remove_column :users, :photo, :string
#   	remove_column :users, :emergency_contact_number, :string
#   	remove_column :users, :emergency_contact_name, :string
#   	remove_column :users, :phone_number, :string
#   	remove_column :users, :address, :text
#   	remove_column :users, :instructor, :boolean
#   end
# end

# rolled back, working on getting the 
# has_many :courses, through: :course_registrations
# relationship to work.