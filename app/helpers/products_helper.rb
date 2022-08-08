module ProductsHelper
    # Filter products based on tags
    def product_filter(accepted_tags)
        @products = []
        @filtered_products = []

        if params[:category]
            @products = Product.where(category: params[:category]).all   
        else
            @products = Product.all
        end

        # Loop over products and push any product that matches the tags into @filtered_products
        @products.each do |product|  
            valid = false
            accepted_tags.each do |tag|
                if params[:tags].include?(tag) && product.tags.include?(tag)
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
    def find_by_tags()
        # Variables for the accepted tags of each category.
        @pencil_tags = ["featured", "graphite-pencil", "colored-pencil", "mechanical-pencil"]
        @paper_tags = ["featured", "sketch-paper", "sketchbook"]
        @ink_tags = ["featured", "artist-ink", "inking-pen"]
      
        # Check for the correct category.
        if params[:category] == "pencils" && params[:tags]
           @products = product_filter @pencil_tags

        elsif params[:category] == "papers" && params[:tags]
            @products = product_filter @paper_tags
              
        elsif params[:category] == "inks" && tags
            @products = product_filter @ink_tags

        elsif params[:category] == nil
            @products = product_filter [*@pencil_tags, *@ink_tags, *@paper_tags]
        else
            @products = Product.where(category: params[:category]).all
        end
    end

    # Filter by search results
    def find_by_search(params)
        @products = Product.where("lower(title) like ?", "%#{params[:search].downcase}%")
        if @products == []
          @products = Product.where("lower(description) like ?", "%#{params.downcase}%")
        end
        @products
    end
end