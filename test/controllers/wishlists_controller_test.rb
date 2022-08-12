require "test_helper"

class WishlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = log_in_test_user('member')
    @product = create_test_product ""
    @wishlist = wishlists(:one)
  end
  
  test "should get index" do
    get wishlists_url, as: :json
    assert_response :success
  end

  test "should create wishlist" do
    assert_difference("Wishlist.count") do
      post wishlists_url, params: { wishlist: { user_id: @user.id, product_ids: @product.id } }, as: :json
    end

    assert_response :created
  end

  test "should update wishlist" do
    @wishlist = create_test_wishlist @user, @product

    patch wishlists_url, params: { wishlist: { product_ids: @product.id } }, as: :json
    assert_response :success
  end

  test "should destroy wishlist if there is only one item in it." do
    @wishlist = create_test_wishlist @user, @product

    assert_difference("Wishlist.count", -1) do
      delete wishlist_url(@product.id), as: :json
    end
    assert_response :no_content
  end

  test "should destroy one wishlist item." do
    @wishlist = create_test_wishlist @user, @product
    @product_2 = create_test_product "sample"

    @wishlist.update!({product_ids: @product_2.id})

    delete wishlist_url(@wishlist), params: {id: @product_2.id}
    
    assert_response :ok
  end

  test "should destroy wishlist" do
    @wishlist = create_test_wishlist @user, @product
    
    assert_difference("Wishlist.count", -1) do
      delete wishlists_url, as: :json
    end

    assert_response :no_content
  end
end
