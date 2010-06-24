require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  context "matched suppliers" do

    should("return no matches") { assert_equal 0, Supplier.matched("1000").length }
    should("return 3 matches") { assert_equal 3, Supplier.matched("4001").length }

    should "return supplier with least monthly hits first" do
      s2 = suppliers :two
      s2.update_attribute(:hits_for_month, 10)
      assert_equal s2, Supplier.matched(4001).first
    end

    context "disable all suppliers" do
      setup { Supplier.update_all :active=>false }

      should("not return inactive supplier") { assert_equal 0, Supplier.matched("4001").length }
    end

    context "suppliers without credits" do
      setup { Supplier.update_all :credit => 0 }

      should("not return supplier without credits") { assert_equal 0, Supplier.matched("4001").length }
    end

  end
end
