require "test_helper"

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_index_url, as: :json
    assert_response :success
  end
end
