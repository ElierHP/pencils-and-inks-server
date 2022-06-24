require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get show" do
    get user_url(@user)
    assert_response :success
  end

  test "should post to create" do
    assert_difference("User.count") do
      post users_url, params: {user: {email: 'example_user', password: 'secret', password_confirmation: 'secret', role: 'member'} }, as: :json
    end

    assert_response :created
  end

  test "should get update" do
    patch user_url(@user), params: {user: {email: 'example_user_2', password: 'secret2', password_confirmation: 'secret2', role: 'admin'} }, as: :json

    assert_response :success
  end

  test "should get destroy" do
    assert_difference("User.count", -1) do
      delete user_url(@user), as: :json
    end

    assert_response :no_content
  end
end
