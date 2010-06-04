require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  should "be valid" do
    assert Supplier.new.valid?
  end
end
