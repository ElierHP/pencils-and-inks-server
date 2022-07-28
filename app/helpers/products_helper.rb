module ProductsHelper
    # Filter products based on tags
    def product_filter(tags, category, accepted_tags)
        @products = Product.where(category: category).all
        @filtered_products = []

        # Loop over products and push any product that matches the tags into @filtered_products
        @products.each do |product|  
            valid = false
            accepted_tags.each do |tag|
                if tags.include?(tag) && product.tags.include?(tag)
                    valid = true
                end
            end 
            if valid
                @filtered_products.push(product)
            end     
        end

        @filtered_products
    end

     

    # Filter by tags and return products.
    def find_by_tags(category, tags)
        # Variables for the accepted tags of each category.
        @pencil_tags = ["featured", "graphite-pencil", "colored-pencil", "mechanical-pencil"]
        @paper_tags = ["featured", "sketch-paper", "sketchbook"]
        @ink_tags = ["featured", "artist-ink", "inking-pen"]

        # Check for the correct category.
        if category == "pencils" && tags
           @products = product_filter params[:tags], "pencils", @pencil_tags

        elsif category == "papers" && tags
            @products = product_filter tags, "papers", @paper_tags
              
        elsif category == "inks" && tags
            @products = product_filter tags, "inks", @ink_tags
              
        else
            @products = Product.where(category: category).all
        end
    end
end