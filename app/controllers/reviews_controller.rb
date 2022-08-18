class ReviewsController < ApplicationController
  before_action :authorize_user, only: %i[ create update destroy ]
  before_action :set_review, only: %i[ update destroy ]

  # GET /reviews
  def index
    # If there is a product_id param, get all reviews that belong to that product.
    if params[:product_id]
      @reviews = Product.find(params[:product_id]).reviews.order('created_at DESC')
    else
      # Else, get all the reviews.
      @reviews = Review.all
    end
  
    if @reviews
      render json: @reviews
    else
      render json: @reviews.errors, status: :unprocessable_entity
    end
  end

  # GET /reviews/1
  def show
    @review = Review.find(params[:id])

    if @review
      render json: @review
    else
      render json:  @review.errors, status: :unprocessable_entity
    end
   
  end

  # POST /reviews
  def create
    @review = current_user.reviews.build(review_params)

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
  end

  private
    # Set review based on current user.
    def set_review
      @review = current_user.reviews.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:title, :comment, :rating, :recommended, :user_id, :product_id)
    end
end