class SiteDetails < ActiveRecord::Base
  attr_accessible :quote_type, :first_name, :last_name, :email, :street_address, :suburb, :state, :postcode, :country
  belongs_to :postcode
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  validate :check_fields

  def check_fields
    errors.add_to_base("Please supply your first name") if self.first_name.empty?
    errors.add_to_base("Please supply your last name") if self.last_name.empty?
    errors.add_to_base("Please supply your address") if self.street_address.empty?
    errors.add_to_base("Please supply your suburb") if self.suburb.empty?
  end
end
