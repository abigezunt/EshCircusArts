class RemoveColumnsUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :name
  	remove_column :users, :bio
  	remove_column :users, :injuries
  	remove_column :users, :photo
  	remove_column :users, :emergency_contact_number
  	remove_column :users, :emergency_contact_name
  	remove_column :users, :phone_number
  	remove_column :users, :address
  	remove_column :users, :instructor
  end
end

