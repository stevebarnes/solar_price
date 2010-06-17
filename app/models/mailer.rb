class Mailer < ActionMailer::Base
  

  def supplier_lead(postcode, sent_at = Time.now)
    subject    'New lead from mysolarprice.com.au'
    recipients 'test1@busigeeks.com.au'
#    from       'lead-generator@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    body       :x => postcode
  end

  def thankyou(postcode, sent_at = Time.now)
    subject    'Thankyou for applying to be a supplier/installer for mysolarprice.com.au'
    recipients postcode.site_details.email
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    body       :x => postcode
  end

    def free_report(postcode, sent_at = Time.now)
    subject    'Here is your free report from mysolarprice.com.au'
    recipients postcode.site_details.email
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    body       :x => postcode
  end
end
