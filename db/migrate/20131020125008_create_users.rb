class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :role
      t.string :injuries
      t.string :photo
      t.string :emergency_contact_name
      t.string :emergency_contact_number
      t.string :email
      t.string :phone_number
      t.text :address

      t.timestamps
    end
  end
end
