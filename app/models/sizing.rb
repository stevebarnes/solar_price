class Sizing < ActiveRecord::Base
  attr_accessible :number_of_people_in_home, :current_hw_type, :current_hw_size, :current_hw_location, :last_quarter_elec_bill, :preferred_solar_power_size
end
