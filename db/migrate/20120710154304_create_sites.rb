class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :manager
      t.integer :plotsMax
      t.integer :plotsUsed

      t.timestamps
    end
  end
end
