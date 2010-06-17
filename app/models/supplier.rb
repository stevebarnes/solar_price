class Supplier < ActiveRecord::Base
  attr_accessible :name, :first_name, :last_name, :abn, :phone, :email, :suburb, :state, :country, :active, :postcodes_requested
  has_many :supplier_areas
  has_many :supplier_leads
  has_many :postcodes, :through =>:supplier_leads

  after_save :store_postcodes

  def store_postcodes
    @requested.split(",").each do |x|
      supplier_areas.create(:postcode=>x)
    end
  end

  def postcodes_requested=(requested)
    @requested = requested
  end
end