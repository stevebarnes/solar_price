class CreateSiteSurveys < ActiveRecord::Migration
  def self.up
    create_table :site_surveys do |t|
      t.string :roof_type
      t.string :meterage_ok_solar_power
      t.string :meterage_ok_solar_hot_water
      t.string :approximate_roof_slope
      t.string :percentage_shade_on_north_facing_roof
      t.integer :house_stories
      t.string :unique_features
      t.references :postcode
      t.timestamps
    end
  end
  
  def self.down
    drop_table :site_surveys
  end
end
