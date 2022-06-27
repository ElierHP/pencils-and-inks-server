ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def log_in_test_user(role)
    # Create a User, needed to obtain proper Bcrypt hash.
    @user = User.create(email: "example@user.com", password: "secret", password_confirmation: "secret", role: role)

    # Login the User. Required for protected routes.
    post login_url, params: { session: { email: @user.email, password: 'secret' } }, as: :json

    return @user
  end
end
