class CreateFreeReports < ActiveRecord::Migration
  def self.up
    create_table :free_reports do |t|
      t.boolean :confirmation
      t.timestamps
    end
  end
  
  def self.down
    drop_table :free_reports
  end
end
