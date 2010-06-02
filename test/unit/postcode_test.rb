require 'test_helper'

class PostcodeTest < ActiveSupport::TestCase
  should "be valid" do
    assert Postcode.new.valid?
  end
end
