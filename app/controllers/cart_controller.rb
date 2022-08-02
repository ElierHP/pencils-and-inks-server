class CartController < ApplicationController
    # GET /cart
    def index
        @products = []

        # Check if there's a cart session
        if session[:cart]
            # Check if there's multiple items
            if session[:cart].include?(',')
                @cart_ids = session[:cart].split(',');
                @cart_ids = @cart_ids.map do |id|
                    id.to_i
                end
                @products = Product.find(@cart_ids)
            else
                # Run this if there's only 1 item.
                @product = Product.find(session[:cart])
                # Turn single product into array.
                @products = [@product]
            end
        end

        # Returns empty array if there is nothing in cart.
        render json: @products
    end

    # POST /cart
    def create
        @product = Product.find_by(id: params[:product_id])
        @similar_item = session[:cart].include?(params[:product_id].to_s) unless session[:cart] == nil

        # Checks that product exists and is not already in the cart.
        if @product && !@similar_item
            # If session already exists, add to it.
            if session[:cart]
                session[:cart] = session[:cart] + ',' + params[:product_id].to_s
            else
            # Else create a new session
                session[:cart] = params[:product_id].to_s
            end
        else
            render json: "Product not found or already in the cart.", status: :unprocessable_entity
        end
    end

    # DELETE /cart/1
    def destroy
        # If there's more than 1 item in cart, run this.
        if session[:cart].include?(',')
            @cart_session = session[:cart].split(',');
            @cart = @cart_session.filter do |id|
                id != params[:id].to_s
            end
            session[:cart] = @cart.join(',')
        # Else delete session
        else
            session[:cart] = nil
        end
    end
end
