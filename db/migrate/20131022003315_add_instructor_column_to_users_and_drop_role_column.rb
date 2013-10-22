class AddInstructorColumnToUsersAndDropRoleColumn < ActiveRecord::Migration
  def change
  	remove_column :users, :role
  	add_column :users, :instructor, :boolean
  end
end
