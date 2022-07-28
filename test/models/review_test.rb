require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  setup do
    @review = reviews(:one)
  end
  
  test "title should be valid" do
    @review.title = ""
    assert_not @review.valid?
    @review.title = "a" * 41
    assert_not @review.valid?
    @review.title = "a" * 3
    assert_not @review.valid?
  end

  test "comment should be valid" do
    @review.comment = ""
    assert_not @review.valid?
    @review.comment = "a" * 256
    assert_not @review.valid?
    @review.comment = "a" * 9
    assert_not @review.valid?
  end

  test "rating should be 1-5" do
    @review.rating = 0
    assert_not @review.valid?
    @review.rating = 6
    assert_not @review.valid?
  end

  test "recommended should be true or false" do
    @review.recommended = true
    assert @review.valid?
    @review.recommended = false
    assert @review.valid?
    @review.recommended = nil
    assert_not @review.valid?
  end

  test "review should have a user_id and product_id" do
    @review.user_id = nil
    assert_not @review.valid?
    @review.product_id = nil
    assert_not @review.valid?
  end
end
