class Supplier < ActiveRecord::Base
  attr_accessible :name, :first_name, :last_name, :abn, :phone, :email, :suburb, :state, :country, :active
end
