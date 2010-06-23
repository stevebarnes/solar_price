class Supplier < ActiveRecord::Base
  attr_accessible :name, :first_name, :last_name, :abn, :phone, :email, :suburb, :state, :country, :active, :postcodes_requested, :hits_for_month, :hits_cumulative, :credit, :postcodes_change
  has_many :supplier_areas
  has_many :supplier_leads
  has_many :postcodes, :through =>:supplier_leads

  after_create :store_postcodes

  def self.matched postcode
#      find(:all, :include=>:supplier_areas, :conditions=>{:supplier_areas=>{:postcode=>postcode}, :active=> true, :suppliers=>{:credit => 'gt 0'}}, :order=>"suppliers.hits_for_month", :limit=>3)
      find(:all, :include=>:supplier_areas, :conditions=>["supplier_areas.postcode=? and active = ? and suppliers.credit > 0", postcode, true ], :order=>"suppliers.hits_for_month", :limit=>3)
  end

  def store_postcodes
    @requested.split(",").each do |x|
      supplier_areas.create(:postcode=>x.strip)
    end
  end

  def postcodes_requested=(requested)
    @requested = requested
  end

  def postcodes_change=(postcodes)
    self.supplier_area_ids = postcodes
  end

  def postcodes
    supplier_areas.map(&:postcode).join ", "
#    supplier_areas.map {|x| x.postcode}.join ", "   is long hand for the line above
  end
end