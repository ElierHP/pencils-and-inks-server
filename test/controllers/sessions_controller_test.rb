require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
  @user = User.create(email: 'example@user.com', password: 'secret', password_confirmation: 'secret', role: 'member', first_name: "Example", last_name: "User")
  end

  test "should send post req to /login & authenticate user" do
    post login_url, params: {session: { email: 'example@user.com', password: 'secret'}}, as: :json

    assert_response :success
  end

  test "should send delete request to /logout" do
    delete logout_url
    assert_response :no_content
  end
end
