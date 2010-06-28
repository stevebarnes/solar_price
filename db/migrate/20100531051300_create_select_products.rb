class CreateSelectProducts < ActiveRecord::Migration
  def self.up
    create_table :select_products do |t|
      t.boolean :product_se
      t.boolean :product_shw
      t.string :timeframe
      t.references :postcode
      t.timestamps
    end
  end
  
  def self.down
    drop_table :select_products
  end
end