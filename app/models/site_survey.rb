class SiteSurvey < ActiveRecord::Base
  attr_accessible :roof_type, :meterage_ok_solar_power, :meterage_ok_solar_hot_water, :approximate_roof_slope, :percentage_shade_on_north_facing_roof, :house_stories, :unique_features
end
