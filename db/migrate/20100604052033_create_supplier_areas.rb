class CreateSupplierAreas < ActiveRecord::Migration
  def self.up
    create_table :supplier_areas do |t|
      t.string :postcode
      t.integer :hits_for_month
      t.integer :hits_cumulative
      t.timestamps
      t.references :supplier
    end
  end
  
  def self.down
    drop_table :supplier_areas
  end
end
