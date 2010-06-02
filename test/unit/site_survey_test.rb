require 'test_helper'

class SiteSurveyTest < ActiveSupport::TestCase
  should "be valid" do
    assert SiteSurvey.new.valid?
  end
end
