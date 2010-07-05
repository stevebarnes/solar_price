class SelectProduct < ActiveRecord::Base
  attr_accessible :product_se, :product_shw, :timeframe
  belongs_to :postcode

end
#["immediately",0],["in the next month",1],["in the next six months",6],["in the next year",12],["Just looking, thanks", 99]