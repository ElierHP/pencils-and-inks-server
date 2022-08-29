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
        tags: 'graphite-pencil,featured',
        rating: 0
    }, 
    {
        title: 'Blick Studio Drawing Pencils and Sets',  
        price: 23.50, 
        description: 'Create dramatic effects in your illustrations, drawings, and sketches with Blick Studio Drawing Pencils. They have professional-quality, highly opaque graphite leads that are lightfast and clean-erasing.

        Every pencil features a hexagonal lacquered cedar casing to prevent it from rolling off surfaces. The hardness grade is printed on all six sides for quick reference.
        
        Set of 12 - This set includes one each of 6B, 5B, 4B, 3B, 2B, B, HB, F, H, 2H, 4H, and 6H, in a tin case.', 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/6ATHjUkrvbX9lQkdrdoIK9/28eab3f94b19d9c8756906cd9f63bfdf/22220-2009-5-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/3FuniXyxJkXKMPKQbE0wxa/844941e79c3d6d3aa2cd1e054dea54ae/22220-single3-3ww-l.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/3TpxtgjcJAv5DPAqTBDEeY/cdc4659608d9f9b37385ab52a906e25c/22220-2144-2-3ww-l.jpg', 
        sku: 'P2022-002', 
        category: 'pencils', 
        tags: 'graphite-pencil',
        rating: 0
    },
    {
        title: 'Derwent Sketching Collection',  
        price: 27.59, 
        description: 'An ideal gift for the serious drawing student. Attractive tins with removable lids hold assortments of sketching pencils, graphite sticks, pastel pencils, compressed charcoal, and other accessories. Pencils are pre-sharpened . Available in a variety of sets.

        Set Contents - Please refer to the Item Specs tab of this page for a complete listing of set contents.', 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/1dzhROUG4bfNyZFVus13to/b24e860565e1b42c489350596d865978/20404-0009-2-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/5I0vKI29txLj9qJcPu20PS/bbb95f5775e53bf0b58c808efd2c41fd/20404-0019-2-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/5HDBIfrNBkBKTwiAxi7pAK/2ced5bf1ce5d79772b76700a2c9a0228/20404-0019-1-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/7HAbBiTFqbIhhJO5Wzb1zk/f01d10d2b7995b76ec1e60c884f81ef8/20404-group-swatch-4ww.jpg', 
        sku: 'P2022-004', 
        category: 'pencils', 
        tags: 'graphite-pencil',
        rating: 0
    },
    {
        title: 'Prismacolor Premier Colored Pencils and Sets',  
        price: 25.14, 
        description: 'Prismacolor Premier Colored Pencils feature thick, soft cores made from brilliant, light-resistant pigments to ensure smooth, rich laydown and color saturation.

        The colors are easy to blend, slow to wear, and break-resistant. Each 3.8 mm core is enclosed in a round cedar casing that is lacquered to match the core.
        
        Manual sharpening is recommended for Prismacolor colored pencils. Clogging can be prevented in electric sharpeners by periodically sharpening a graphite pencil to keep the blades clean.
        
        Set contents may occasionally vary from the colors listed.
        
        Set of 12 - This set contains Apple Green, Black, Canary Yellow, Crimson Red, Dark Brown, Grass Green, Orange, Sienna Brown, True Blue, Violet, Violet Blue, and White.', 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/3JtKmA6per67s01ojkzVVl/9480d71265db743c90930e49405b4da4/20508-1029-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/5IuAcxRmZpUkfO4XKdGTZR/7e7f54e59f5c210c0e7c5670be66b3b7/20508-1209-M-4ww.jpg,https://images.ctfassets.net/f1fikihmjtrp/20dZHPBDgpmO9IAlLx6SnC/fb4829d8f73997d514336669cc9e55c6/20508-1209-1-4ww.jpg,https://images.ctfassets.net/f1fikihmjtrp/7aaoojgRAurJq8fHepxEih/ddbc7a6149662aa5659c40d3388eb5b1/20508-1049-4ww.jpg', 
        sku: 'P2022-003', 
        category: 'pencils', 
        tags: 'colored-pencil,featured',
        rating: 0
    },
    {
        title: 'Expert Colored Pencils - Set of 120',  
        price: 67.99, 
        description: 'Get this complete set of 120 colored pencils and discover all of the original color combinations you can make. Use these versatile tools for adult coloring books, drawings, sketches, and mixed media designs. The break-resistant cores allow you to layer colors and shade your artwork without having the tips break while you work. These smooth and highly-pigmented pencils make blending, layering, and mixing colors a breeze. 

 

        Create realistic highlights and shadows or use these to fill in bold details in your pieces. The smooth, wax-based core will also help get rid of any harsh transition lines you may have in your pieces. Each pencil is crafted to sharpen easily and work perfectly every time. The set comes in a durable, double-hinged metal tin that’s large enough to store all of your pencils in your art studio or when you take them with you on-the-go. Whether you’re a beginner or expert, you’ll definitely enjoy this large selection of vibrant colors!
        
         
        
        Color with our very best colored pencils set with this expert-grade Professional Colored Pencils Set of 120. Whether you’re an artist or looking to become more artistically equipped, adding this colored pencils set to your collection will ensure creative success. Invest in your craft by upgrading to our Professional Colored Pencils Set of 120!', 
        images: 'https://cdn.shopify.com/s/files/1/1903/8473/products/professional-colored-pencils-set-of-120_I1SauiIg_1478x1477.jpg?v=1652891151,https://cdn.shopify.com/s/files/1/1903/8473/products/professional-colored-pencils-set-of-120_eE7FOYmS_1500x1500.jpg?v=1656526401,https://cdn.shopify.com/s/files/1/1903/8473/products/professional-colored-pencils-set-of-120_a9fvoeFp_1500x1450.jpg?v=1656526401', 
        sku: 'P2022-005', 
        category: 'pencils', 
        tags: 'colored-pencil,featured',
        rating: 0
    },
    {
        title: 'Pastel Colored Pencils - Set of 50',  
        price: 18.99, 
        description: "Brighten up your drawings with our Pastel Colored Pencils Set of 50. The stunning colored pencils featured in this set are packed with a soft, yet vivid pastel core. Our innovative triangle-shaped colored pencils are comfortable to hold and ergonomically correct for both left-handed and right handed artists. Additionally, our colored pencils' unique shape ensures they won’t roll away from you when you’re creating.  

        Our Pastel Colored Pencils Set of 50 makes a wonderful introductory colored pencils set for creatives of all skill sets. Artists can pair these colored pencils with any of our coloring books for a relaxing way to stay creative, or pair with one of Arteza’s sketchbooks for doodles and sketches of their own. Regardless of your intended use, our Pastel Colored Pencils are just what you need!
        
        Enhance your drawings and mixed media masterpieces with our Pastel Colored Pencils Set of 50. Whether you’re creating a pastel-filled sketch or using these colored pencils for subtle highlights and shading, our colored pencils make an excellent addition to any artist’s collection. Secure your Pastel Colored Pencils Set of 50 while supplies last!", 
        images: 'https://cdn.shopify.com/s/files/1/1903/8473/products/pastel-colored-pencils-set-of-50_E57M9jOV_1500x1500.jpg?v=1652895423,https://cdn.shopify.com/s/files/1/1903/8473/products/pastel-colored-pencils-set-of-50_X3rMSVV9_1500x1500.jpg?v=1652895423,https://cdn.shopify.com/s/files/1/1903/8473/products/pastel-colored-pencils-set-of-50_V9EuJXgS_1500x1500.jpg?v=1652895424', 
        sku: 'P2022-006', 
        category: 'pencils', 
        tags: 'colored-pencil',
        rating: 0
    },
    {
        title: 'Pentel Graph Gear 500 Pencil',  
        price: 5.87, 
        description: "This technical drafting pencil with an industrial design features a 4 mm fixed sleeve for template work and technical drawings.

        The Pentel Graph Gear 500 features a metallic mesh grip on a slim, beveled barrel for precision and control. Other features include a top-click, stationary eraser and tip. Both the lead and the eraser are refillable.", 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/4Nt0SDQuzwmiMo8bh6DnYt/bd215905665bfff03c8f5ab68fb2f2aa/20672-8003-3ww-l.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/7GWGru8G3nGrkX2B23ODIh/ff5d11fffc5bf0ec98a1b034cce4691e/20672-4807-3ww-l.jpg?q=80&w=400', 
        sku: 'P2022-007', 
        category: 'pencils', 
        tags: 'mechanical-pencil',
        rating: 0
    },
    {
        title: 'Pentel Twist-Erase Click Mechanical Pencil',  
        price: 3.2, 
        description: "Pre-loaded with Pentel's Super Hi-Polymer HB lead, the Twist-Erase Click Mechanical Pencil never needs sharpening and produces a sharp, dark line. Mistakes are no match for the extra-long , non-abrasive twist-up eraser , and a quick-click side button advances the lead without interruption. Other features of the Pentel Twist-Erase include a smooth, latex-free Comfort-Zone grip and a stylish metal pocket clip. The colorful tinted barrel lets you see how much lead is left. The Pentel Twist-Erase contains 59% recycled plastic.", 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/7E6BCeUsndXteQuscz3TiU/5bd46ce61ade1629b0d92a58b3882b11/20686-5017-4ww.jpg?q=80&w=400', 
        sku: 'P2022-008', 
        category: 'pencils', 
        tags: 'mechanical-pencil',
        rating: 0
    },
    {
        title: 'Blick Premier Mechanical Pencils',  
        price: 9.91, 
        description: "Blick Premier Mechanical Pencils offer all the benefits of more expensive drafting and drawing pencils at an exceptional Blick value. Featuring a sleek and durable aluminum body, a knurled anti-slip metal grip provides enhanced control. Advance the lead with a single click. A double-click lead advancement system allows both the lead and surrounding pipe to retract, protecting the pencil and preventing damage to your bag or pocket. A 4 mm fixed lead sleeve includes a cushion mechanism to prevent breakage, while a built-in lead hardness indicator lets you check the hardness of your lead at a glance.

        Additional features include a metal clip and protective metal eraser cap. Erasers are refillable. Each Blick Premier Mechanical Pencil comes pre-loaded with two HB leads.", 
        images: 'https://images.ctfassets.net/f1fikihmjtrp/7DwyCAT9Ob2IcftaM7DOhD/7e992d64bcdef368914952e540a9511e/26813-9337-2-4ww.jpg,https://images.ctfassets.net/f1fikihmjtrp/4Er0tQczpvgvZNYQY0ccbb/55cc3225fc21f2db90773bb68561f430/26813-9335-5-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/5lSlSWC35OL2HjcpM8sN4G/1f6835a25c4cb8d704037bfb95035a71/26813-9335-4-4ww.jpg?q=80&w=400', 
        sku: 'P2022-009', 
        category: 'pencils', 
        tags: 'mechanical-pencil,featured',
        rating: 0
    },
    {
        title: "Daler-Rowney Calli Calligraphy Inks",  
        price: 7.15, 
        description: "Calli is a range of acrylic-based , pigmented, water-resistant inks designed by Daler-Rowney especially for calligraphy. Calli Calligraphy Inks are available in six popular colors and offer optimum flow characteristics from a pen or brush.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/daEveLcumJzS5BXPLXoNj/9a17feb6cb64d46d77e6e0eaf311cf4f/20852-group-3ww-l.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/3rX1m2uC6iUNkIdc2NtS2n/062f6b2fba0c4e5f6e522639ecf23265/20852-2021-3ww-l.jpg?q=80&w=300",
        sku: "I2022-001", 
        category: "inks", 
        tags: "artist-ink",
        rating: 0
    }, 
    {
        title: "Ranger Tim Holtz Alcohol Inks",  
        price: 9.86, 
        description: "Tim Holtz Alcohol Inks are dye-based, acid-free inks that can be applied to a variety of surfaces, including glossy paper, shrink plastic, glass, and other slick surfaces. Choose from a variety of complementary three-color palettes for coloring, journaling, even doodling. Permanent, fast-drying, and transparent, these inks can be intermixed — or added to Metallic Mixatives to create luminous highlights. Sets include three 0.5 oz (14 ml) bottles with precision tips. Note — Ranger does not recommend using Tim Holtz Alcohol Inks and Metallic Mixatives in spray bottles as they contain alcohol and should not be airborne.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/49KbfrCWp4RYG43QHBonSQ/e21895b6d64570b6da94187c8e942074/02204-1006-1-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/39RrLWi0SE2uPDMEiMa8GY/63a7bb6b10b3b53f13c4d6bdfa9d215f/02204-1007-1-4ww.jpg?q=80&w=400",
        sku: "I2022-003", 
        category: "inks", 
        tags: "artist-ink",
        rating: 0
    }, 
    {
        title: "Dr. Ph. Martin's Bombay India Inks and Sets",  
        price: 20.76, 
        description: "Dr. Ph. Martin's Bombay India Inks offer powerful color in a convenient dropper-stopper glass bottle. These highly pigmented India inks not only remain lightfast and permanent, but are also totally waterproof when dry. They adhere to nearly all surfaces and are non-clogging when used in pens.
        Inks can be diluted with water and used with brushes in traditional watercolor techniques or in dip pens, technical drawing pens, and airbrushes. All colors are brilliant and transparent, except Black and White, which are opaque and have excellent covering power.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/5deagr3XD6y8Ssq2vHhXpK/a521336701bb48fea76079b2278db6bc/21122-OB3ww-l.jpg,https://images.ctfassets.net/f1fikihmjtrp/43XATQqF4YjBR5EjXW8btX/23f027fab8548a0465dc34a8f3a0c02d/21122-0129-3ww-l.jpg?q=80&w=400",
        sku: "I2022-004", 
        category: "inks", 
        tags: "artist-ink",
        rating: 0
    }, 
    {
        title: "Roller Ball Pens, Black, 0.5mm Nib - Set of 20",  
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
        tags: "inking-pen,featured",
        rating: 0
    }, 
    {
        title: "Micro-Line Pen, Black Japanese Ink, Assorted Nibs- Set of 10",  
        price: 16.99, 
        description: "Arteza’s Micron Pens Set of 10 features a wide range of black pens in different sizes and nib styles. This plentiful pen set includes the following tip sizes: 005, 01, 02, 03, 04, 05, 08, and 2 mm. Our set of 10 black micro-line pens features chisel, felt, and brush tips, providing artists with true range in their pens. Our black Japanese Archival ink is completely non-toxic. 

        The water-based pigment ink that fills our Micron Pens leaves water-resistant marks, making this set of micro-line pens ideal for countless arts and crafts projects. Whether you’re a comic artist, an illustrator, a crafter, or watercolor painter, our Micron Pens Set of 10 is an absolute must-have in your collection! Use this Micron Pens Set to elevate your craft. 
        
        Whether you’re an artist, writer, student, or educator, one thing is for certain, you need this Micro-Line Pen Set of 10 in your collection. This diverse set of 10 micron pens with assorted nibs is ideal for anyone looking to add more range in their pen collection. Write, outline, and draw with complete accuracy and total comfort with our Micro-Line Pen Set of 10!", 
        images: "https://cdn.shopify.com/s/files/1/1903/8473/products/microline-pen-black-japaneseink-assorted-nibs-setof10_QDzrTZFY_1500x1500.jpg?v=1652895222,https://cdn.shopify.com/s/files/1/1903/8473/products/micron-pens-black-assorted-setof10_Mkos7lqp_1500x1500.png?v=1652895222,https://cdn.shopify.com/s/files/1/1903/8473/products/microline-pen-black-japaneseink-assorted-nibs-setof10_pbvwiZYL_1500x1500.jpg?v=1652895233,https://cdn.shopify.com/s/files/1/1903/8473/products/microline-pen-black-japaneseink-assorted-nibs-setof10_pCC1utvL_1500x1500.jpg?v=1652895224", 
        sku: "I2022-005", 
        category: "inks", 
        tags: "inking-pen,featured",
        rating: 0
    }, 
    {
        title: "Pentel Arts Pointliner Pens and Set",  
        price: 10.24, 
        description: "Pentel Arts Pointliner Pens have pigmented black ink that is water-resistant and fade-resistant. Their durable plastic nibs in a variety of point sizes are designed for drawing, illustration, comics, and sketching.

        Pkg of 5, Assorted Sizes - includes one each of 0.05 mm, 0.1 mm, 0.3 mm, 0.5 mm, and 0.8 mm tip sizes.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/gSHpl53xtRTb5uIejbwDx/90408216a9040869a589b265b3ed14e0/21063-2025-1-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/KR0Y0K2yjFgihew1ffUYJ/3d23c354341f1a13f6b687145bce41b8/21063-2025-M-4ww.jpg?q=80&w=400", 
        sku: "I2022-006", 
        category: "inks", 
        tags: "inking-pen",
        rating: 0
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
        tags: "sketch-paper",
        rating: 0
    },
    {
        title: "artPOP! Kids Marker Pad",  
        price: 3.99, 
        description: 'Give young artists a special place to draw, color, and express themselves with this artPOP! Kids Marker Pad. Each tape-bound pad contains 40 sheets of smooth, bright white paper suitable for use with any type of marker. Papers resist bleeding, so little ones can make the most of every page. Each 70 lb (114 gsm) sheet measures 9" x 12". Pages are easily removed from this tape-bound pad.', 
        images: "https://images.ctfassets.net/f1fikihmjtrp/5eVwFU8jrlAsb4B8iP7BX/e3c6008eea7ace5d9647deefef3b692e/10671-1223-M-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/1nJp7ZUuIj2OXl8nTj0dMA/2ea970be7abf3081884fee6e0d89bc5e/10671-1223-1-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/3YpPYBY13VbKIUoouLtvOS/902164313d918131831e3b9b98fd5bd2/10671-1223-2-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/2xDXghwVnbTyX2zZJI2jTw/bb1f79ab32a30b4b8a0bf0f7795c525e/10671-1223-3-4ww.jpg?q=80&w=400", 
        sku: "SP2022-003", 
        category: "papers", 
        tags: "sketch-paper",
        rating: 0
    },
    {
        title: 'Strathmore 500 Series Charcoal Paper - Assorted Pack, 25 Sheets, 19" x 25"',  
        price: 49.72, 
        description: "Strathmore's 500 Series Charcoal Paper is a 100% cotton fiber, acid-free paper that has a traditional laid pattern for precise shading with charcoal and pastels. Its raised texture is also suitable for pen, pencil, or art crayon. 64 lb (95 gsm) weight.

        Assorted Pack, 25 Sheets, 19\" x 25\" - Includes 5 sheets each of Black, Bright White, Blue Gray, Olive, and Smoke Gray.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/1ciQZagA9w0CKtjyOGvXR7/f6afd3e5a1249e6e1166c45492149f0a/10703-1051-2-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/5kFhmbiBkEjGPC7PICES4H/9c34390450f2e10538330d7061183b44/10703-1021-2-4ww.jpg,https://images.ctfassets.net/f1fikihmjtrp/6PPyAFAYHrMQxPOwg6J4CV/a2508c604bc5ccfd1ce22879a381a380/10703-1021-M-4ww.jpg?q=80&w=400", 
        sku: "SP2022-004", 
        category: "papers", 
        tags: "sketch-paper",
        rating: 0
    },
    {
        title: "artPOP! Hardbound Sketchbooks",  
        price: 24.99, 
        description: 'Perfect for quick studies, sketches, doodles, and drawings, this artPOP! Sketchbook includes two hardcover sketchbooks perfect for creating with a variety of dry media. Each sketchbook contains 108 pages of white, acid-free, 65 lb (100 gsm) sketch paper suitable for graphite, ink, charcoal, colored pencils, and more. Perfect for the studio, classroom, or creating on-the-go, sleek hardcover binding protects artwork from the elements and ensures work stores beautifully.

        Sketchbooks measure 8 ½" W x 11" L.', 
        images: "https://images.ctfassets.net/f1fikihmjtrp/6eeYrFwtsxmzNEoBGvCCFk/aa0ade7924219c7a8a7eded4f5199c5f/13884-1001-M-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/BYQeJBSIKYO5ZeJZ2iVoH/2622327d8c4006acb53ea9eb3bb1d2e3/13884-1001-1-4ww.jpg,https://images.ctfassets.net/f1fikihmjtrp/7wGHQQglPeLKiapMukVhU7/6010f1bc443a2e1d4b0a39381bba5f40/13884-1001-3-4ww.jpg?q=80&w=400", 
        sku: "SP2022-002", 
        category: "papers", 
        tags: "sketchbook",
        rating: 0
    },
    {
        title: 'Sketchbook, 9" x 12", 100 Sheets - Pack of 2',  
        price: 25.99, 
        description: "Bring your creative ideas to life with a 2-pack of 9\" x 12\" cardboard cover sketchbooks. Each book contains 100 blank sheets that are perfect for a variety of dry media like drawing pencils, pastels, charcoal, gel ink pens, colored pencils, and more. Easily erase, revise, and layer your media without having to worry about the paper getting torn, as the fine-tooth 68 lb sheets are durable and able to handle whatever technique you’d like to use. 

        The pages are acid-free, so your designs will stay fresh and vibrant over time. Each sheet is also perforated and can be easily removed from your sketchbook whenever you’re ready to display your work. The flexible spiral binding allows you to rotate your pages all the way back so that you can either create on a flat two-page spread or work on a single page at a time. With this convenient 2-pack, you’ll always have a premium sketchbook in hand every time inspiration arrives. 
        
        Invest in your artistic growth, start by stocking up on all the supplies you’ll need, including this 2-pack of 100-sheet, 9” x 12” sketchbooks. Regardless of your busy schedule, there’s always time to create. Commit to sketching for as little as five minutes a day, using this 2-pack of sketchbooks. Supply yourself with this pack of two well-crafted sketchbooks, while supplies last.", 
        images: "https://cdn.shopify.com/s/files/1/1903/8473/products/9x12-sketch-book-100-sheets-2-pack_GDl8AAw_1388x1492.jpg?v=1652888580,https://cdn.shopify.com/s/files/1/1903/8473/products/9x12-sketch-book-100-sheets-2-pack_23nHHBQm_1398x1482.jpg?v=1652888584", 
        sku: "SP2022-005", 
        category: "papers", 
        tags: "sketchbook",
        rating: 0
    },
    {
        title: "Canson Universal Sketch Pad",  
        price: 21.57, 
        description: "This heavy 65 lb (96 gsm) weight, acid-free paper is well suited for pencil, charcoal, pen, and light wash. It's manufactured from French made Crobart paper to near drawing quality standards. All 100-sheet pads are bound on the long side with a double wire. The 35-sheet pad is bound on the short side with a double wire. All pads contain micro perforated true size sheets.", 
        images: "https://images.ctfassets.net/f1fikihmjtrp/1PzwfsBB6leJl7MlPgXidh/9777bda3b6488cd960f1f6f59d9d73d3/10322-1003-M-4ww.jpg?q=80&w=400,https://images.ctfassets.net/f1fikihmjtrp/5lYAGTTZqqNgxEUfvbupZQ/e3b2672bc5a360e760ce32cd568d9968/10322-1003-3-3ww-l.jpg?q=80&w=400", 
        sku: "SP2022-006", 
        category: "papers", 
        tags: "sketchbook",
        rating: 0
    }
   ]

products.each do |product|
    Product.create!(title: product[:title], price: product[:price], description: product[:description], images: product[:images], sku: product[:sku], category: product[:category], tags: product[:tags], rating: product[:rating])
end

