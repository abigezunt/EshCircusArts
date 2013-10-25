class CreateSevenWeekSession < ActiveRecord::Migration
  def change
    create_table :seven_week_sessions do |t|
      t.string :name
      t.integer :instructor_id
      t.integer :price
      t.date :start_date
      t.time :start_time
      t.time :end_time
      t.integer :number_of_sessions
    end
  end
end
