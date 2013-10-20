class RenameMainstoMain < ActiveRecord::Migration
  def change
  	rename_table :mains, :main
  end
end
