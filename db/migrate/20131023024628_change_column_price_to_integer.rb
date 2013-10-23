class ChangeColumnPriceToInteger < ActiveRecord::Migration
  def change
  	change_column :courses, :price, :integer
  end
end
