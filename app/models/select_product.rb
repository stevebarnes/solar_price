class SelectProduct < ActiveRecord::Base
  attr_accessible :product, :timeframe
  belongs_to :postcode

  validate :check_fields
  
  def check_fields
    # following statement does not work
    #
    # You have a nil object when you didn't expect it!
    #You might have expected an instance of Array.
    #The error occurred while evaluating nil.empty?
    #
    #RAILS_ROOT: /home/steve/RailsProjects/solarprice_nifty
    #Application Trace | Framework Trace | Full Trace
    #
    #/home/steve/RailsProjects/solarprice_nifty/app/models/select_product.rb:9:in `check_fields'

#    errors.add_to_base("Please supply an interest") if self.product.empty?
  end
end
