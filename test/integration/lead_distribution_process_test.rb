require 'test_helper'

class LeadDistributionProcessTest < ActionController::IntegrationTest
  fixtures :all

  context "all" do
    setup do
      visit logout_path
    end

    should "do full process" do
      visit root_path

      postcode_search = "4001"
      fill_in :postcode_postcode, :with => postcode_search
      click_button :submit_button
      postcode = Postcode.last(:order=>:id)  # get the entry we just put in postcode table
      suppliers = Supplier.matched(postcode_search)
      supplier1 = suppliers.first

      assert_path new_postcode_select_product_path(postcode)

      click_button :next
      assert_path new_postcode_site_detail_path(postcode)

      fill_in :email, :with => "peter@pan.com.au"
      fill_in :first_name, :with => "Peter"
      fill_in :last_name, :with => "Pan"
      fill_in :street_address, :with => "Neverland"
      fill_in :suburb, :with => "Island"
      click_button :next
      assert_path new_postcode_site_survey_path(postcode)

      click_button :next

      assert_path new_postcode_sizing_path(postcode)

      assert_difference "supplier1.credit", -1 do
        assert_difference "supplier1.hits_for_month" do
          assert_difference "supplier1.hits_cumulative" do
            click_button :next
            supplier1.reload
          end
        end
      end
      assert_path new_postcode_free_report_path(postcode)

      





      




    end

  end

end
