require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @user = log_in_test_user('admin')
  end

  test "should get index" do
    get products_url, as: :json
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { category: @product.category, description: @product.description, images: @product.images, price: @product.price, sku: "examplesku", tags: @product.tags, title: "example title" } }, as: :json
    end

    assert_response :created
  end

  test "should not create product unless admin" do
    @user.role = 'member'
    @user.save
    
    post products_url
    assert_response :unauthorized
  end

  test "should show product" do
    get product_url(@product), as: :json
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { category: @product.category, description: @product.description, images: @product.images, price: @product.price, sku: "examplesku", tags: @product.tags, title: "example title" } }, as: :json
    assert_response :success
  end

  test "should not update product unless admin" do
    @user.role = 'member'
    @user.save
    
    patch product_url(@product)

    assert_response :unauthorized
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product), as: :json
    end

    assert_response :no_content
  end

  test "should not destroy product unless admin" do
    @user.role = 'member'
    @user.save
    
    patch product_url(@product)

    assert_response :unauthorized
  end
end
