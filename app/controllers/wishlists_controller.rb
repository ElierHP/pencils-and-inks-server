class WishlistsController < ApplicationController
  before_action :authorize_user, only: %i[ index create update destroy ]
  before_action :set_wishlist, only: %i[ index update destroy ]
  
  
  # GET /wishlists
  def index
    render json: @wishlist
  end

  # POST /wishlists
  def create
    wishlist_exists = current_user.wishlist

    # Check if current user already has a wishlist.
    if wishlist_exists.nil?
      @wishlist = current_user.build_wishlist(wishlist_params)

      if @wishlist.save
        render json: @wishlist, status: :created, location: @wishlist
      else
        render json: @wishlist.errors, status: :unprocessable_entity
      end

    else
      render json: 'wishlist already exists'
    end
  end

  # PATCH/PUT /wishlists
  def update
    @wishlist = current_user.wishlist
    @product_ids = @wishlist.product_ids

    # Check if product exists.
    @product = Product.find_by(id: params[:wishlist][:product_ids])

    # Check if product is already on the wishlist
    already_in_cart = false;
    @product_ids.split(',').each do |id|
      if params[:wishlist][:product_ids].to_s == id
        already_in_cart = true
      end
    end

    if @product != nil && !already_in_cart

      @updated_wishlist = @product_ids + "," + wishlist_params[:product_ids].to_s

      @wishlist.update(product_ids: @updated_wishlist)
      render json: @wishlist
      
    else
      render json: "Product does not exist or is already on the list."
    end
  end

  # DELETE /wishlists/id
  def destroy
    @wishlist = current_user.wishlist.product_ids
    @updated_wishlist = @wishlist.split(',').filter do |id|
      id != params[:id]
    end

    if @updated_wishlist != []
      current_user.wishlist.update(product_ids: @updated_wishlist.join(','))
    else
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
