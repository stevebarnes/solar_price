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
      t.boolean :active
      t.string :postcodes_requested
      t.timestamps
    end
  end
  
  def self.down
    drop_table :suppliers
  end
end
