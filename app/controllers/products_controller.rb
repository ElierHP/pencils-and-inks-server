class ProductsController < ApplicationController
  include ProductsHelper
  before_action :set_product, only: %i[ show update destroy ]
  before_action :authorize_admin, only: %i[ create update destroy ]

  # GET /products
  def index
      # GET /products?category=pencil
      if params[:category]
        @products = find_by_tags params[:category], params[:tags]  

      # GET /products?filter=latest
      elsif params[:filter] == "latest"
        @products = Product.order('created_at DESC').limit(4)

      # Get /products?search=query
      elsif params[:search]
        @products = find_by_search(params[:search])

      else
        @products = Product.all
      end

    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :price, :description, :sku, :images, :category, :tags)
    end
end
