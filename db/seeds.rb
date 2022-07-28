# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

products = [
    {
        title: 'artPOP! Drawing Pencil Set',  
        price: 14.99, 
        description: 'Perfect for artists and hobbyists who want to take their drawings and illustrations to the next level, this set of artPOP! Drawing Pencils features an assortment of 12 Premium Plus professional-quality pencils in a versatile range of hardness grades. Made with opaque, artist-grade graphite leads that are both clean-erasing and lightfast, they are ideal for every drawing technique, from dramatic cross-hatching and stippling to the smoothest and most subtle shading. Pencils have hexagonal casings that feel comfortable in the hand and prevent rolling. The hardness grade is printed on each pencil for reference.

        Set of 12 - Includes one each of 6B, 5B, 4B, 3B, 2B, B, HB, F, H, 2H, 3H, and 4H in a tin tray.', 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/31Dkj7MHIh4Rx28iaTXiMY/0b9e72dd920a6aaf86155cfc55bf6fd3/82410-1012-M-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/2nFyVAqbPDBX9C9cq5MIsw/9db499a595b1d9fe35577775b9a8cbd4/82410-1012-3-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/6OkySuCXnvNLv5uewj0OoN/670b9dddd5369c2ccc9bb184a31e761f/82410-1012-4-4ww.jpg?q=80&w=300', 
        sku: 'P2022-001', 
        category: 'pencils', 
        tags: 'graphite-pencil,featured'
    }, 
    {
        title: "Daler-Rowney Calli Calligraphy Inks",  
        price: 7.15, 
        description: "Calli is a range of acrylic-based , pigmented, water-resistant inks designed by Daler-Rowney especially for calligraphy. Calli Calligraphy Inks are available in six popular colors and offer optimum flow characteristics from a pen or brush.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/daEveLcumJzS5BXPLXoNj/9a17feb6cb64d46d77e6e0eaf311cf4f/20852-group-3ww-l.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/3rX1m2uC6iUNkIdc2NtS2n/062f6b2fba0c4e5f6e522639ecf23265/20852-2021-3ww-l.jpg?q=80&w=300",
        sku: "I2022-001", 
        category: "inks", 
        tags: "artist-ink"
    }, 
    {
        title: "Roller Ball Pens, Black, 0.5mm Nib - Set of 20
        ",  
        price: 18.99, 
        description: "Convenient Bulk Set - With this large pack of 20, you’ll always have enough rollerball ink pens for your office, classroom or home
        Won’t Scratch or Skip - The premium gel ink flows smoothly and uninterrupted for an easy glide across your paper
        Smear-Free & Easy-to-Use - No need to worry about getting ink on your hands or desk, as the quick-drying ink is smudge-free
        Non-toxic & Safe - The acid-free ink of these pens conforms to ASTM D-4236 and EN71 standards
        Experience these smooth-gliding rollerball ink pens that work perfectly for notes, lists, study guides, and reminders with this pack of 20. Aside from homework and professional notes, these can be used for sketches and artwork. They’re also great to use in journals, scrapbooks, and calendars since they won’t bleed. Unlike standard liquid ink, these pens use a gel-based formula. They are formulated to be long-lasting and non-fading so you can continue writing without worry. 
        
        Keep your desk, paper, or hands smudge-free, as the quick-dry formula will keep your work on the paper. These rollerball pens are acid-free, which will keep your pieces bright and bold. Get the ultimate comfort with an ergonomic grip that fits perfectly in your hand, and a durable pocket clip for easy portability. These pens have 0.5mm stainless steel tips that write a precise line every time. Whether you’re at work, school, or at home, have the perfect balance of convenience and practicality and get incredible results every time.", 
        images: "https://cdn.shopify.com/s/files/1/1903/8473/products/roller-ball-pens-set-of-20-pcs-black-0-5mm-point_uCqBEJY3_1275x1459.jpg?v=1652891108,https://cdn.shopify.com/s/files/1/1903/8473/products/roller-ball-pens-set-of-20-pcs-black-0-5mm-point_EJCCw5Aw_1460x1452.jpg?v=1652891109", 
        sku: "I2022-002", 
        category: "inks", 
        tags: "inking-pen,featured"
    }, 
    {
        title: "Drawing Pad, 18 x 24, 30 Sheets - Pack of 2",  
        price: 30.99, 
        description: "Premium Paper - Off-white, medium weight, smooth acid-free paper with a fine tooth surface ideal for a variety of dry media
        Spiral Bound - Twin, black loop wire binding allows for effortless 360 degree mobility
        Micro-Perforated - Each page tears flawlessly into 18 x 24” sheets, great for framing, gifting or selling
        Convenient Two Pack - Double the enjoyment with two pads, each containing 30 drawing sheets
        Satisfaction Guaranteed - Providing artists with a 100% satisfaction guarantee on all our products; here to assist you & answer questions via email, phone, and social media from 6am - 10:30pm ET daily
        
        Arteza’s 18”x24” Drawing Pad 2-pack is a recommended purchase for all visual artists. This convenient twin set provides artists with 60 pages of premium drawing and sketching paper. Each off-white, medium weight, acid-free paper features a smooth and fine tooth surface which is perfect for a variety of dry media. Each premium sketch pad’s page is held together by a 360° spiral binding which allows artists to effortlessly flip through their drawing pads. The premium paper in this convenient pack of drawing pads is easy to remove due to their micro-perforated design; simply tear out pages as you complete them.
        ", 
        images: "https://cdn.shopify.com/s/files/1/1903/8473/products/drawing-pad-18x24-2-pack_Q7TTjjJW_648x700.jpg?v=1652889216,https://cdn.shopify.com/s/files/1/1903/8473/products/drawing-pad-18x24-2-pack_8Vy6EgJ7_1479x1482.jpg?v=1652889217,https://cdn.shopify.com/s/files/1/1903/8473/products/drawing-pad-18x24-2-pack_YAk6HkvM_1317x1454.jpg?v=1652889219", 
        sku: "SP2022-001", 
        category: "papers", 
        tags: "sketch-paper"
    }, 
    {
        title: 'artPOP! Drawing Pencil Set 2',  
        price: 17.99, 
        description: 'Perfect for artists and hobbyists who want to take their drawings and illustrations to the next level, this set of artPOP! Drawing Pencils features an assortment of 12 Premium Plus professional-quality pencils in a versatile range of hardness grades.',
        images: 'https://images.ctfassets.net/f1fikihmjtrp/31Dkj7MHIh4Rx28iaTXiMY/0b9e72dd920a6aaf86155cfc55bf6fd3/82410-1012-M-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/2nFyVAqbPDBX9C9cq5MIsw/9db499a595b1d9fe35577775b9a8cbd4/82410-1012-3-4ww.jpg?q=80&w=400', 
        sku: 'P2022-002', 
        category: 'pencils', 
        tags: 'graphite-pencil'
    },
    {
        title: 'artPOP! Drawing Pencil Set 3',  
        price: 19.99, 
        description: 'Perfect for artists and hobbyists who want to take their drawings and illustrations to the next level, this set of artPOP! Drawing Pencils features an assortment of 12 Premium Plus professional-quality pencils in a versatile range of hardness grades.',
        images: 'https://images.ctfassets.net/f1fikihmjtrp/31Dkj7MHIh4Rx28iaTXiMY/0b9e72dd920a6aaf86155cfc55bf6fd3/82410-1012-M-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/2nFyVAqbPDBX9C9cq5MIsw/9db499a595b1d9fe35577775b9a8cbd4/82410-1012-3-4ww.jpg?q=80&w=400', 
        sku: 'P2022-003', 
        category: 'pencils', 
        tags: 'colored-pencil'
    }, 
   ]

products.each do |product|
    Product.create!(title: product[:title], price: product[:price], description: product[:description], images: product[:images], sku: product[:sku], category: product[:category], tags: product[:tags])
end

