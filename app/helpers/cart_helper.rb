module CartHelper

    # Check if the product exists.
    def find_product(product_id)
        @product = Product.find_by(id: product_id)
    end


    # Check if a similar item already exists in cart.
    def is_product_in_cart?(new_item_id)
        similar_item = false
        if session[:cart]
            session[:cart].each do |item|
                if item["product_id"] == new_item_id
                    similar_item = true
                end
            end
        end
        similar_item
    end

end