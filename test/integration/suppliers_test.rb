require 'test_helper'

class SuppliersTest < ActionController::IntegrationTest
  fixtures :all


  context "Logged Out" do
    setup do
      visit logout_path
    end
    context "New Supplier" do
      should "Allow new signups" do
        visit root_path
        click_link "Supplier Signup"
        assert_path new_supplier_path
      end
    end
  end

  context "logged In" do
    setup do
      visit login_path
      fill_in :login, :with => "admin"
      fill_in :password, :with => "secret"
      click_button "Log in"
      assert_path suppliers_path
    end

    should "list suppliers" do
      assert_path suppliers_path
    end

    should "display a single supplier" do

    end

  end
end
