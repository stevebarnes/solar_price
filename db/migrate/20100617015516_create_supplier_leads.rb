class CreateSupplierLeads < ActiveRecord::Migration
  def self.up
    create_table :supplier_leads do |t|
      t.references :postcode
      t.references :supplier

      t.timestamps
    end
  end

  def self.down
    drop_table :supplier_leads
  end
end
