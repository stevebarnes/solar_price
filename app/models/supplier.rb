class Supplier < ActiveRecord::Base
  attr_accessible :name, :first_name, :last_name, :abn, :phone, :email, :suburb, :state, :country, :active, :postcodes_requested
  has_many :supplier_areas
end
