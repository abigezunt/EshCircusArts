class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.text :bio
      t.string :photo
      t.string :email
    end
  end
end
