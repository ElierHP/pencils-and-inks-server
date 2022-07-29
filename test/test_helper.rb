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

  def create_test_product
    @product = Product.create!(  
      title: 'Test Set! Drawing Pencil Set 2',  
      price: 17.99, 
      description: 'This is a test description that is perfect for testing the database and routes of this application.',
      images: 'https://test.images.net', 
      sku: 'T1232-001', 
      category: 'pencils', 
      tags: 'graphite-pencil')

      return @product
  end

  def create_test_review(user, product)
    @review = Review.create!(title: "Text Review Title", comment: "This is a test review comment.", rating: 5, recommended: true, user_id: user.id, product_id: product.id)

    return @review
  end
end
