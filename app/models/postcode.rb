class Postcode < ActiveRecord::Base
  attr_accessible :postcode
  has_one :select_product
  has_one :site_details
  has_one :site_survey
  has_one :sizing
  has_one :free_report


  def distribute_leads
    matched = Supplier.find(:all, :include=>:supplier_areas, :conditions=>{:supplier_areas=>{:postcode=>postcode}}, :order=>"suppliers.hits_for_month", :limit=>3)
    
  end
end
