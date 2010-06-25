class Mailer < ActionMailer::Base
  def supplier_lead(postcode, supplier, sent_at = Time.now)
    subject    'New lead from mysolarprice.com.au'
    recipients supplier.email; 'leadhistory@mysolarprice.com.au'
#    from       'lead-generator@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    content_type  "text/html"
    body       :x => postcode, :y => supplier
  end

  def underserviced(postcode, sent_at = Time.now)
    subject    'Insufficient matches for mysolarprice.com.au query'
    recipients 'leadhistory@mysolarprice.com.au'
#    from       'lead-generator@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    content_type  "text/html"
    body       :x => postcode
  end

  def thankyou(postcode, sent_at = Time.now)
    subject    'Thankyou for using mysolarprice.com.au'
    recipients postcode.site_details.email; 'leadhistory@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    content_type  "text/html"
    body       :x => postcode
  end

  def free_report(postcode, sent_at = Time.now)
    subject    'Here is your free report from mysolarprice.com.au'
    recipients postcode.site_details.email; 'leadhistory@mysolarprice.com.au'
    from       'test1@busigeeks.com.au'
    sent_on    sent_at
    content_type  "text/html"
    body       :x => postcode
  end
end
