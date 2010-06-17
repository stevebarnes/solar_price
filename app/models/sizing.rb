class Sizing < ActiveRecord::Base
  belongs_to :postcode
  attr_accessible :number_of_people_in_home, :current_hw_type, :current_hw_size, :current_hw_location, :last_quarter_elec_bill, :preferred_solar_power_size

  after_save :distribute_leads

  def distribute_leads
      # 1. match suppliers
      #
      # 2. Increment couters (all 4)
      #
  end
end
