module ProductsHelper
    def pencil_filter(tags)
         # Find all products where category is "pencil".
        @pencils = Product.where(category: "pencil").all

        # Map over the pencils and return any product that matches the tags sent via body request.
        @mapPencils = @pencils.map do |product|  
            if tags.include?("featured") && product.tags.include?("featured")
                product
        
            elsif tags.include?("graphite-pencil") && product.tags.include?("graphite-pencil")
                 product
        
            elsif tags.include?("colored-pencil") && product.tags.include?("colored-pencil")
                product
            end
        end

        # Filter out any nils left over from the previous map.
        @products = @mapPencils.filter do |product|
            product != nil
        end

      return @products
    end
end