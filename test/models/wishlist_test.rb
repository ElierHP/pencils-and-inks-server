require "test_helper"

class WishlistTest < ActiveSupport::TestCase
  setup do
    @wishlist = wishlists(:one)
  end

  test "wishlist should have product_ids" do
    @wishlist.product_ids = nil
    assert_not @wishlist.valid?
  end

  test "product_ids should have a minimum length of 1" do
    @wishlist.product_ids = ""
    assert_not @wishlist.valid?
  end

  test "product_ids should have a maximum length of 200" do
    @wishlist.product_ids = "a" * 201
    assert_not @wishlist.valid?
  end
end
