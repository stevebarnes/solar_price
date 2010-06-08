require 'test_helper'

class FreeReportTest < ActiveSupport::TestCase
  should "be valid" do
    assert FreeReport.new.valid?
  end
end
