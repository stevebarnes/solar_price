class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :abn
      t.string :phone
      t.string :email
      t.string :suburb
      t.string :state
      t.string :country
      t.boolean :active, :default => false
      t.string :postcodes_requested
      t.integer :hits_for_month, :default => 0
      t.integer :hits_cumulative, :default => 0
      t.integer :credit, :default => 0
      t.timestamps
    end
  end
  
  def self.down
    drop_table :suppliers
  end
end
