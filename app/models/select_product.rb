class SelectProduct < ActiveRecord::Base
  attr_accessible :product, :timeframe
  belongs_to :postcode
end
