class CreateSiteDetails < ActiveRecord::Migration
  def self.up
    create_table :site_details do |t|
      t.string :quote_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.timestamps
    end
  end
  
  def self.down
    drop_table :site_details
  end
end
