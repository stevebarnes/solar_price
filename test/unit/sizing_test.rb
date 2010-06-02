require 'test_helper'

class SizingTest < ActiveSupport::TestCase
  should "be valid" do
    assert Sizing.new.valid?
  end
end
