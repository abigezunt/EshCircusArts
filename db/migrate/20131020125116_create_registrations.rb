class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
      t.boolean :paid
      t.string :timestamps

      t.timestamps
    end
  end
end
