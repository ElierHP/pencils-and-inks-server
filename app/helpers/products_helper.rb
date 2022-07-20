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

    # Variables for the accepted tags of each category.
    pencil_tags = ["featured", "graphite-pencil", "colored-pencil", "mechanical-pencil"]
    paper_tags = ["featured", "sketch-paper", "sketchbook"]
    ink_tags = ["featured", "artist-ink", "inking-pen"]

    # Filter by tags and return products.
    def find_by_tags(category, tags)
        if category == "pencil" && tags
           @products = product_filter params[:tags], "pencil", pencil_tags
        elsif category == "paper" && tags
            @products = product_filter tags, "paper", paper_tags
              
        elsif category == "ink" && tags
            @products = product_filter tags, "ink", ink_tags
              
        else
            @products = Product.where(category: category).all
        end
    end
end