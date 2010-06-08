class Supplier < ActiveRecord::Base
  attr_accessible :name, :first_name, :last_name, :abn, :phone, :email, :suburb, :state, :country, :active, :postcodes_requested
  has_many :supplier_areas

#  after_save :store_postcodes
#
#  def store_postcodes
#    supp = self
#    a = self.postcodes_requested.split(",")
#    a.each do |x|
#      supplier_areas.new
#      :postcode == x
#      supplier_areas.save
#    end
#  end
end