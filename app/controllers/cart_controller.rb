class CartController < ApplicationController
    include CartHelper
    # GET /cart
    def index
        @cart = []

        # Check if there's a cart session
        if session[:cart]
            @cart = session[:cart].sort_by{|item| item["product_id"]}
        end

        # Returns empty array if there is nothing in cart.
        render json: @cart
    end

    # POST /cart
    def create   
        # Create a new item to add to cart.
        @new_item = {product_id: params[:product_id], quantity: params[:quantity]}

        product_exists = find_product params[:product_id]

        already_in_cart = is_product_in_cart? @new_item[:product_id]

        # Checks that product exists and is not already in the cart.
        if product_exists && !already_in_cart
            # If session already exists, add to it.
            if session[:cart]
                session[:cart] = session[:cart].push @new_item
            else
            # Else create a new session
                session[:cart] = [@new_item]
            end
        else
            render json: "Product not found or already in the cart.", status: :unprocessable_entity
        end
    end

    # Update /cart/1
    def update
        if session[:cart]
            session[:cart] = session[:cart].map do |item|
                if item["product_id"].to_s == params[:id]
                        { product_id: item["product_id"], quantity: params[:quantity] }
                else
                        item
                end
            end
        else
            render json: "There is nothing in the cart.", status: :unprocessable_entity
        end
    end

    # DELETE /cart/1
    def destroy
        # If there's more than 1 item in cart, run this.
        if session[:cart].count >= 1
            session[:cart] = session[:cart].filter do |item|
                item["product_id"].to_s != params[:id]
            end
        # Else delete session
        else
            session[:cart] = nil
        end
    end

    # DELETE /cart
    def destroyCart
        session[:cart] = nil
    end
end
