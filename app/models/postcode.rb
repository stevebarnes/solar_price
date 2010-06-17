class Postcode < ActiveRecord::Base
  attr_accessible :postcode
  has_one :select_product
  has_one :site_details
  has_one :site_survey
  has_one :sizing
  has_one :free_report

  has_many :supplier_leads
  has_many :suppliers, :through =>:supplier_leads

  validate :check_postcode

  def check_postcode
    errors.add_to_base("Please supply a postcode") if self.postcode.empty?
  end

  def distribute_leads
    matched = Supplier.find(:all, :include=>:supplier_areas, :conditions=>{:supplier_areas=>{:postcode=>postcode}}, :order=>"suppliers.hits_for_month", :limit=>3)

    puts "Not enough" if matched.length <3    # temporary code. Identifies not enough matches.

    self.suppliers = matched   # get this POSTCODE entry to relate to SUPPLIERS through the info in MATCHED
    @x = self

#    p "here"
    matched.each do |supplier|
#      p supplier.hits_for_month
      supplier.update_attributes(:hits_for_month => supplier.hits_for_month + 1, :hits_cumulative => supplier.hits_cumulative + 1)
      Mailer.deliver_supplier_lead(supplier)  # do this email whilst I have the supoplier record and Postcode context
#      Mailer.deliver_supplier_lead(supplier, @x)
    end
  end
end