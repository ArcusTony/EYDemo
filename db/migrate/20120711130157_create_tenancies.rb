class CreateTenancies < ActiveRecord::Migration
  def change
    create_table :tenancies do |t|
      t.date :startDate
      t.date :stopDate
      t.string :billingType
      t.float :charge
      t.string :creator
      
      t.integer :customer_id
      t.integer :plot_id
      
      
      t.timestamps
    end
  end
end
