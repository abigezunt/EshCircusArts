class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_sessions
      t.float :price
      t.float :instructior_pay
      t.string :level
      t.text :description
      t.string :discipline

      t.timestamps
    end
  end
end
