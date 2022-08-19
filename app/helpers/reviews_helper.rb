module ReviewsHelper
   def update_rating
    if params[:product_id]
        @product = Product.find(params[:product_id])
    else
        @product = Product.find(params[:review][:product_id])
    end
  
    updated_number = 0

    @product.reviews.each do |review|
            updated_number += review.rating
        end

    if @product.reviews.count == 0
        @product.rating = 0
    else
        @product.rating = updated_number / @product.reviews.count
    end
    
    @product.save
   end
end