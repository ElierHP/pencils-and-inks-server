require "test_helper"

class ProductTest < ActiveSupport::TestCase
  setup do
    @product = products(:one)
    @second_product = products(:two)
  end
  
  test "title should be valid" do
    @product.title = ""
    assert_not @product.valid?
    @product.title = "a" * 101
    assert_not @product.valid?
    @product.title = "a" * 9
    assert_not @product.valid?
    # not case sensitive
    @product.title = @second_product.title.upcase
    assert_not @product.valid?
  end

  test "title should be unique" do
    @second_product.title = @product.title
    assert_not @second_product.valid?
    @second_product.sku = @product.sku
    assert_not @second_product.valid?
  end

  test "price should exist" do
    @product.price = nil
    assert_not @product.valid?
  end

  test "description should be valid" do
    @product.description = ""
    assert_not @product.valid?
    @product.description = "a" * 2001
    assert_not @product.valid?
    @product.description = "a" * 19
    assert_not @product.valid?
  end

  test "sku should be valid" do
    @product.sku = ""
    assert_not @product.valid?
    @product.sku = "a" * 21
    assert_not @product.valid?
    @product.sku = "a" * 5
    assert_not @product.valid?
    # not case sensitive
    @product.sku = @second_product.sku.upcase
    assert_not @product.valid?
  end

  test "images should be valid" do
    @product.images = ""
    assert_not @product.valid?
    @product.images = "a" * 5001
    assert_not @product.valid?
    @product.images = "a" * 5
    assert_not @product.valid?
  end

  test "category should be valid" do
    @product.category = ""
    assert_not @product.valid?
    @product.category = "a" * 21
    assert_not @product.valid?
    @product.category = "a" * 2
    assert_not @product.valid?
  end

  test "tags should be valid" do
    @product.tags = ""
    assert @product.valid?
    @product.tags = "a" * 51
    assert_not @product.valid?
  end
end
