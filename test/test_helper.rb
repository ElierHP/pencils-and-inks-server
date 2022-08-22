ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def log_in_test_user(role, randomizer = "")
    # Create a User, needed to obtain proper Bcrypt hash.
    @user = User.create!(email: "example" + randomizer + "@user.com", password: "secret", password_confirmation: "secret", role: role, first_name: "User", last_name: 'Testing')

    # Login the User. Required for protected routes.
    post login_url, params: { session: { email: @user.email, password: 'secret' } }, as: :json

    return @user
  end

  def create_test_product(randomizer = "")
    @product = Product.create!(  
      title: 'Test Set! Drawing Pencil Set 2' + randomizer,  
      price: 17.99, 
      description: 'This is a test description that is perfect for testing the database and routes of this application.' + randomizer,
      images: 'https://test.images.net' + randomizer, 
      sku: 'T1232-001' + randomizer, 
      category: 'pencils', 
      tags: 'graphite-pencil', rating: 0)

      return @product
  end

  def create_test_review(user, product)
    @review = Review.create!(title: "Text Review Title", comment: "This is a test review comment.", rating: 5, recommended: true, user_id: user.id, product_id: product.id)

    return @review
  end

  def create_test_wishlist(user, product)
    @wishlist = Wishlist.create!(user_id: user.id, product_ids: product.id)

    return @wishlist
  end
end
