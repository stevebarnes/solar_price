class SupplierLead < ActiveRecord::Base
  belongs_to :postcode
  belongs_to :supplier
end
