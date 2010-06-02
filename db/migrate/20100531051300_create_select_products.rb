class CreateSelectProducts < ActiveRecord::Migration
  def self.up
    create_table :select_products do |t|
      t.string :product
      t.string :timeframe
      t.timestamps
    end
  end
  
  def self.down
    drop_table :select_products
  end
end
