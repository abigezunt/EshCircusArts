class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.text :description
      t.string :photo_url
      t.text :photo_caption
      t.text :level_1_description
      t.text :level_2_description
      t.text :level_3_description
      t.text :level_4_description
      t.text :all_levels
      t.text :apparatus_description
      t.string :apparatus_photo_urls, :array => true
      t.string :apparatus_photo_urls, :array => true

      t.timestamps
    end
  end
end
