require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = log_in_test_user('member')
    @product = create_test_product
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url, as: :json
    assert_response :success
  end

  test "should create review" do
    assert_difference("Review.count") do
      post reviews_url, params: { review: { comment: @review.comment, product_id: @product.id, rating: @review.rating, recommended: @review.recommended, title: @review.title, user_id: @user.id } }, as: :json
    end

    assert_response :created
  end

  test "should show review" do
    get review_url(@review), as: :json
    assert_response :success
  end

  test "should update review" do
    @review = create_test_review(@user, @product)

    patch review_url(@review), params: { review: { comment: @review.comment, product_id: @review.product_id, rating: @review.rating, recommended: @review.recommended, title: @review.title, user_id: @review.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy review" do
    @review = create_test_review(@user, @product)
    @review.save
    
    assert_difference("Review.count", -1) do
      delete review_url(@review), params: {product_id: @review.product_id}, as: :json
    end

    assert_response :no_content
  end
end
