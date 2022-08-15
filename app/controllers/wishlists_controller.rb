class WishlistsController < ApplicationController
  include WishlistsHelper
  before_action :authorize_user, only: %i[ index create update destroy destroy_wishlist ]
  before_action :set_wishlist, only: %i[ index create update destroy ]
  
  # GET /wishlists
  def index
    @wishlist_products = Product.find(@wishlist["product_ids"].split(','))
    render json: @wishlist_products
  end

  # POST /wishlists
  def create
    # Check if current user already has a wishlist.
    if @wishlist.nil?
      @wishlist = current_user.build_wishlist(wishlist_params)

      if @wishlist.save
        render json: @wishlist, status: :created
      else
        render json: @wishlist.errors, status: :unprocessable_entity
      end

    else
      render json: 'wishlist already exists'
    end
  end

  # PATCH/PUT /wishlists
  def update
    product_exists = find_product
    already_in_list = is_product_in_list?

    if product_exists && !already_in_list
      # Update wishlist with the new product_id
      @updated_wishlist = add_product_id_to_wishlist
      @wishlist.update(product_ids: @updated_wishlist)

      render json: @wishlist
    else
      render json: "Product does not exist or is already on the list."
    end
  end

  # DELETE /wishlists/id
  def destroy
    @updated_wishlist = filter_out_id @wishlist

    if @updated_wishlist != []
      @wishlist.update(product_ids: @updated_wishlist.join(','))

      render json: @wishlist
    else
      # If the updated wishlist is an empty array, destroy it.
      current_user.wishlist.destroy
    end
  end

  # DELETE /wishlists
  def destroy_wishlist
    current_user.wishlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = current_user.wishlist
    end

    # Only allow a list of trusted parameters through.
    def wishlist_params
      params.require(:wishlist).permit(:product_ids, :user_id)
    end
end
