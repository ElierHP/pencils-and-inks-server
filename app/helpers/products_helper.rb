module ProductsHelper
    # Filter products based on tags
    def product_filter(accepted_tags)
        @products = []
        @filtered_products = []

        # Get products based on category
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

     

    # Filter by given params and return products.
    def find_by_params()
        # Variables for the accepted tags of each category.
        @pencil_tags = ["featured", "graphite-pencil", "colored-pencil", "mechanical-pencil"]
        @paper_tags = ["featured", "sketch-paper", "sketchbook"]
        @ink_tags = ["featured", "artist-ink", "inking-pen"]
      
        # Check for the correct category and get products.
        if params[:category] == "pencils" && params[:tags]
           @products = product_filter @pencil_tags

        elsif params[:category] == "papers" && params[:tags]
            @products = product_filter @paper_tags
              
        elsif params[:category] == "inks" && params[:tags]
            @products = product_filter @ink_tags

        elsif params[:category] == nil
            @products = product_filter [*@pencil_tags, *@ink_tags, *@paper_tags]
        else
            @products = Product.where(category: params[:category]).all
        end
         
        # Filter by price
        if params[:price]
            @products = filter_by_price @products
        end

        # Sort the products by asc,desc or price
        if params[:sort]
            @products = sort_products @products
        end

        # Return final products
        @products
    end

    # Filter by search results
    def find_by_search(params)
        @products = Product.where("lower(title) like ?", "%#{params[:search].downcase}%")
        if @products == []
          @products = Product.where("lower(description) like ?", "%#{params.downcase}%")
        end
        @products
    end

    # Filter the products by price
    def filter_by_price(products)
        min_price = params[:price].split(',')[0].to_i
        max_price = params[:price].split(',')[1].to_i

        products = products.filter do |product|
            price = product[:price]
            price > min_price && price < max_price
        end
    end

    # Sort the products by asc,desc or price
    def sort_products(products)
        @sorted_products = []
        if params[:sort] == 'asc'
            @sorted_products = products.sort {
                |a,b| b[:title] <=> a[:title]
            }
        elsif params[:sort] == 'desc'
            @sorted_products = products.sort {
                |a,b| a[:title] <=> b[:title]
            }
        elsif params[:sort] == 'price-asc'
            @sorted_products = products.sort {
                |a,b| b[:price] <=> a[:price]
            }
        elsif params[:sort] == 'price-desc'
            @sorted_products = products.sort {
                |a,b| a[:price] <=> b[:price]
            }
        end

        @sorted_products
    end
end