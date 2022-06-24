# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

products = [
    {
        title: "12 pack pencils fantastic quality.",  
        price: 19.99, 
        description: "These are all high quality tools and pencils for professional use.", images: "https://m.media-amazon.com/images/I/719yuGfpBeL._AC_SL1274_.jpg,https://m.media-amazon.com/images/I/91i45jpEnbL._AC_SL1500_.jpg,https://m.media-amazon.com/images/I/71VhF2aRXVL._AC_SL1500_.jpg", 
        sku: "T22aFw243", 
        category: "pencil", 
        tags: "featured"
    }, 
    {
        title: "Professional grade lead pencil.",  
        price: 9.99, 
        description: "These are all high quality tools and pencils for professional use.", images: "https://m.media-amazon.com/images/I/719yuGfpBeL._AC_SL1274_.jpg,https://m.media-amazon.com/images/I/91i45jpEnbL._AC_SL1500_.jpg,https://m.media-amazon.com/images/I/71VhF2aRXVL._AC_SL1500_.jpg", 
        sku: "A12aFw244", 
        category: "pencil", 
        tags: ""
    }, 
    {
        title: "24 pack color pencils",  
        price: 19.99, 
        description: "These are all high quality tools and pencils for professional use.", images: "https://m.media-amazon.com/images/I/719yuGfpBeL._AC_SL1274_.jpg,https://m.media-amazon.com/images/I/91i45jpEnbL._AC_SL1500_.jpg,https://m.media-amazon.com/images/I/71VhF2aRXVL._AC_SL1500_.jpg", 
        sku: "B12aFw251", 
        category: "pencil", 
        tags: "colored-pencil,featured"
    }, 
    {
        title: "12 pack color pencils",  
        price: 5.99, 
        description: "These are all high quality tools and pencils for professional use.", images: "https://m.media-amazon.com/images/I/719yuGfpBeL._AC_SL1274_.jpg,https://m.media-amazon.com/images/I/91i45jpEnbL._AC_SL1500_.jpg,https://m.media-amazon.com/images/I/71VhF2aRXVL._AC_SL1500_.jpg", 
        sku: "C12aFw253", 
        category: "pencil", 
        tags: "colored-pencil"
    }, 
    {
        title: "Dark inks duo pack.",  
        price: 39.99, 
        description: "These are all high quality tools and inks for professional use.", images: "https://m.media-amazon.com/images/I/719yuGfpBeL._AC_SL1274_.jpg,https://m.media-amazon.com/images/I/91i45jpEnbL._AC_SL1500_.jpg,https://m.media-amazon.com/images/I/71VhF2aRXVL._AC_SL1500_.jpg", 
        sku: "D12aFw280", 
        category: "ink", 
        tags: "featured,black-ink"
    }, 
    {
        title: "Top quality Ink mix pack.",  
        price: 39.99, 
        description: "These are all high quality tools and inks for professional use.", images: "https://m.media-amazon.com/images/I/719yuGfpBeL._AC_SL1274_.jpg,https://m.media-amazon.com/images/I/91i45jpEnbL._AC_SL1500_.jpg,https://m.media-amazon.com/images/I/71VhF2aRXVL._AC_SL1500_.jpg", 
        sku: "E12aFw285", 
        category: "ink", 
        tags: ""
    }, 
   ]

products.each do |product|
    Product.create!(title: product[:title], price: product[:price], description: product[:description], images: product[:images], sku: product[:sku], category: product[:category], tags: product[:tags])
end

