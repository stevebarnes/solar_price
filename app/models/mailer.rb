class Mailer < ActionMailer::Base
  

  def supplier_lead(postcode, select_product, site_details, site_survey, sizing, sent_at = Time.now)
    subject    'New lead from mysolarprice.com.au'
    recipients 'test1@busigeeks.com.au'
#    from       'lead-generator@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def thankyou(sent_at = Time.now)
    subject    'Mailer#thankyou'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
