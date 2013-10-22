class CreateAcrobats < ActiveRecord::Migration
  def change
    create_table :acrobats do |t|
      t.string :name
      t.text :bio
      t.string :injuries
      t.string :photo
      t.string :emergency_contact_name
      t.string :emergency_contact_number
      t.string :email
      t.string :phone_number
      t.text :address
      t.boolean :instructor
      t.timestamps
    end
  end
end
