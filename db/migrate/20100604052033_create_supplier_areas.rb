class CreateSupplierAreas < ActiveRecord::Migration
  def self.up
    create_table :supplier_areas do |t|
      t.string :postcode
      t.timestamps
    end
  end
  
  def self.down
    drop_table :supplier_areas
  end
end
