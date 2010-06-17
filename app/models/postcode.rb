class Postcode < ActiveRecord::Base
  attr_accessible :postcode
  has_one :select_product
  has_one :site_details
  has_one :site_survey
  has_one :sizing
  has_one :free_report

  has_many :supplier_leads
  has_many :suppliers, :through =>:supplier_leads

  def distribute_leads
    matched = Supplier.find(:all, :include=>:supplier_areas, :conditions=>{:supplier_areas=>{:postcode=>postcode}}, :order=>"suppliers.hits_for_month", :limit=>3)
    puts "Not enough" if matched.length <3

    self.suppliers = matched   # get this POSTCODE entry to relate to SUPPLIERS through the info in MATCHED


  end
end