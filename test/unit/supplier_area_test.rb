require 'test_helper'

class SupplierAreaTest < ActiveSupport::TestCase
  should "be valid" do
    assert SupplierArea.new.valid?
  end
end
