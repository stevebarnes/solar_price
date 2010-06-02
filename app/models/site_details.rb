class SiteDetails < ActiveRecord::Base
  attr_accessible :quote_type, :first_name, :last_name, :email, :street_address, :suburb, :state, :postcode, :country
  belongs_to :postcode
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  
end
