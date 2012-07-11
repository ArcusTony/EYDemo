class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :site
      t.float :size
      t.integer :length
      t.integer :width
      t.boolean :shed
      t.boolean :disabledAccess

      t.timestamps
    end
  end
end
