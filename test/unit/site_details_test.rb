require 'test_helper'

class SiteDetailsTest < ActiveSupport::TestCase
  should "be valid" do
    assert SiteDetails.new.valid?
  end
end
