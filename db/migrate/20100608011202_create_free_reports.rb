class CreateFreeReports < ActiveRecord::Migration
  def self.up
    create_table :free_reports do |t|
      t.boolean :confirmation
      t.timestamps
      t.references :postcode
    end
  end
  
  def self.down
    drop_table :free_reports
  end
end
