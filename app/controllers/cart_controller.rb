class CartController < ApplicationController
    # GET /cart
    def index
        render json: session[:cart]
    end

    # POST /cart
    def create
        @product = Product.find_by(id: params[:product_id])
        @similar_item = session[:cart].include?(params[:product_id].to_s)

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
        @cart_session = session[:cart].split(',');
        @cart = @cart_session.filter do |id|
            id != params[:id].to_s
        end
        session[:cart] = @cart.join(',')
    end
end
