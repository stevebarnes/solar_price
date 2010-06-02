class CreateSizings < ActiveRecord::Migration
  def self.up
    create_table :sizings do |t|
      t.integer :number_of_people_in_home
      t.string :current_hw_type
      t.string :current_hw_size
      t.string :current_hw_location
      t.decimal :last_quarter_elec_bill
      t.string :preferred_solar_power_size
      t.timestamps
    end
  end
  
  def self.down
    drop_table :sizings
  end
end
