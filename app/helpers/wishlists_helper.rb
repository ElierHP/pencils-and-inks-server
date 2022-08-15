module WishlistsHelper

    # Check if product exists.
    def find_product
        @product = Product.find_by(id: params[:wishlist][:product_ids])
    end

     # Check if product is already on the wishlist
    def is_product_in_list?
        already_in_list = false;
        @wishlist.product_ids.split(',').each do |id|
            if params[:wishlist][:product_ids].to_s == id
            already_in_list = true
            end
        end
        already_in_list
    end

    # Add the product_id sent via the body request to the wishlist.
    def add_product_id_to_wishlist
        @updated_wishlist = @wishlist.product_ids + "," + wishlist_params[:product_ids].to_s
    end

    # Filters out the product_id from the wishlist using the id params.
    def filter_out_id(wishlist)
        wishlist.product_ids.split(',').filter do |id|
            id != params[:id]
          end
    end
end