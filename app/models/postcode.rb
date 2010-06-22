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
    matched = Supplier.find(:all, :include=>:supplier_areas, :conditions=>{:supplier_areas=>{:postcode=>postcode}, :active=> true}, :order=>"suppliers.hits_for_month", :limit=>3)

    puts "Not enough" if matched.length <3    # temporary code. Identifies not enough matches.

    self.suppliers = matched   # get this POSTCODE entry to relate to SUPPLIERS through the info in MATCHED
    @x = self

#    p "here"
    matched.each do |supplier|    # ARE WE PASSING IN A "matched" ROW/OBJECT AND CALLING IT "supplier" here?
#      p supplier.hits_for_month
      supplier.update_attributes(:hits_for_month => supplier.hits_for_month + 1, :hits_cumulative => supplier.hits_cumulative + 1)
      # SO THE LINE ABOVE, I USE "supplier." DOES THAT MEAN SUPPLIER PASSED IN OR SUPPLIER MODEL? SHOULD WE CHANGE PASSED IN NAME?
      #
      # do email to supplier whilst I have the supplier record and Postcode context
      @supplier = supplier
      Mailer.deliver_supplier_lead(@supplier)
#      Mailer.deliver_supplier_lead(supplier, @x)
    end
  end
end