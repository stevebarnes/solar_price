require 'test_helper'

class SelectProductTest < ActiveSupport::TestCase
  should "be valid" do
    assert SelectProduct.new.valid?
  end
end
