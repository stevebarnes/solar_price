class SupplierArea < ActiveRecord::Base
  attr_accessible :postcode
  belongs_to :supplier
end
