class Mailer < ActionMailer::Base
  

  def supplier_lead(postcode, sent_at = Time.now)
    subject    'New lead from mysolarprice.com.au'
    recipients 'test1@busigeeks.com.au'
#    from       'lead-generator@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    
#    body       :postcode => postcode
  end

  def thankyou(sent_at = Time.now)
    subject    'Mailer#thankyou'
    recipients ''
    from       ''
    sent_on    sent_at
    
#    body       :greeting => 'Hi,'
  end

    def free_report(sent_at = Time.now)
    subject    'Here is your free report from mysolarprice.com.au'
    recipients @postcode.site_details.email
    from       'test1@busigeeks.com.au'
    sent_on    sent_at

#    body       :greeting => 'Hi,'
  end


end
