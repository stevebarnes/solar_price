require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "supplier_lead" do
    @expected.subject = 'Mailer#supplier_lead'
    @expected.body    = read_fixture('supplier_lead')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_supplier_lead(@expected.date).encoded
  end

  test "thankyou" do
    @expected.subject = 'Mailer#thankyou'
    @expected.body    = read_fixture('thankyou')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_thankyou(@expected.date).encoded
  end

end
