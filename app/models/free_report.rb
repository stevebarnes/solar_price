class FreeReport < ActiveRecord::Base
  attr_accessible :confirmation
  belongs_to :postcode
end
