DROP TABLE IF EXISTS shoeData;

CREATE TABLE shoeData (
    id SERIAL,
    name varchar(30),
    type varchar(30),
    color varchar(30),
    style varchar(30),
    description text,
    price integer,
    purchased integer,
    /* For Image Gallery */
    thumbnails text[],
    expandedImg text[],
    /* For shoe sizes */
    shoeSize JSONB[],
    /* For "How Others Are Wearing It" Carousel */
    howOthersCarousel JSONB[],
    -- Complete The Look & Modal
    completeTheLook JSONB[],
    /* For "Exploration" Images */
    ExplorationImg text[],
    -- For comparing the stores that are available
    stores text[],
    -- Benefits for product modal and exploration,
    benefits text[],
    --  Details for product modal
    details text[],
    -- origing on shoe
    origin text,
    --primary review comments
    primary_review_comment text[],
    --star rating
    star_rating real[],
   --customer username
    customer_username text[],
    --review date
    review_date text[],
    --secondary review comments
    secondary_review_comment text[]
);

/* White on White */
INSERT INTO shoeData(
    name,
    type,
    color,
    style,
    description,
    price,
    purchased,
    thumbnails,
    expandedImg,
    shoeSize,
    howOthersCarousel,
    completeTheLook,
    ExplorationImg,
    stores,
    benefits,
    details,
    origin,
    primary_review_comment,
    star_rating,
    customer_username,
    review_date,
    secondary_review_comment
) VALUES(
    /* Details */
    'Nike Air Force 1 ''07',
    'Men''s Shoes',
    'White/White',
    'CW2288-111',
    'The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.',
    115,
    3220,
    /* Image Gallery //////////////////////////////////////////////////////////////////// */ 
    ARRAY[
        'https://static.nike.com/a/images/t_default/4f37fca8-6bce-43e7-ad07-f57ae3c13142/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/so_1.82/cd7718c0-9577-4006-81ce-bda237edf6ce/air-force-1-07-mens-shoes-jBrhbr.jpg',
        'https://static.nike.com/a/images/t_default/c9e622c0-f478-4ffb-8def-fc11280e45bf/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/1ca41965-1f17-4133-9844-f6347262a727/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/15bcd4d6-2636-4e9d-8b90-47d556a2cc0a/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/1241c085-a703-49dd-8a84-5694d5fd8feb/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/894df3e6-1f5b-4a0a-8d9d-dc5112833d0c/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/120cea43-932a-4743-a537-052f9c664956/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/b4fff5a0-0204-4437-9181-c56817812daa/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/aa33f175-561c-4635-bea2-b516b18a70b8/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/9bf152de-bad7-4ee9-aab7-245d89c5d86c/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    ARRAY[
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/q_90/cd7718c0-9577-4006-81ce-bda237edf6ce/video.mp4',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/00375837-849f-4f17-ba24-d201d27be49b/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3cc96f43-47b6-43cb-951d-d8f73bb2f912/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/33533fe2-1157-4001-896e-1803b30659c8/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a0a300da-2e16-4483-ba64-9815cf0598ac/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/82aa97ed-98bf-4b6f-9d0b-31a9f907077b/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ef92df87-6098-4fa5-bc88-7107492febcf/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/120a31b0-efa7-41c7-9a84-87b1e56ab9c3/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/1c1e5f55-99c2-4522-b398-2352e01ba566/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0a0e1b96-043c-46d4-96a0-22408b6c771d/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    /* Sizing /////////////////////////////////////////////////////////////////////////////// */
ARRAY[
    '{"size": "M 5 / W 6.5", "inStock": false}'::JSONB,
    '{"size": "M 5.5 / W 7", "inStock": false}'::JSONB,
    '{"size": "M 6 / W 7.5", "inStock": true}'::JSONB,
    '{"size": "M 6.5 / W 8", "inStock": true}'::JSONB,
    '{"size": "M 7 / W 8.5", "inStock": true}'::JSONB,
    '{"size": "M 7.5 / W 9", "inStock": true}'::JSONB,
    '{"size": "M 8 / W 9.5", "inStock": true}'::JSONB,
    '{"size": "M 8.5 / W 10", "inStock": true}'::JSONB,
    '{"size": "M 9 / W 10.5", "inStock": true}'::JSONB,
    '{"size": "M 9.5 / W 11", "inStock": true}'::JSONB,
    '{"size": "M 10 / W 11.5", "inStock": true}'::JSONB,
    '{"size": "M 10.5 / W 12", "inStock": true}'::JSONB,
    '{"size": "M 11 / W 12.5", "inStock": true}'::JSONB,
    '{"size": "M 11.5 / W 13", "inStock": true}'::JSONB,
    '{"size": "M 12 / W 13.5", "inStock": true}'::JSONB,
    '{"size": "M 12.5 / W 14", "inStock": true}'::JSONB,
    '{"size": "M 13 / W 14.5", "inStock": true}'::JSONB,
    '{"size": "M 14 / W 15.5", "inStock": true}'::JSONB,
    '{"size": "M 15 / W 16.5", "inStock": true}'::JSONB,
    '{"size": "M 16 / W 17.5", "inStock": true}'::JSONB,
    '{"size": "M 17 / W 18.5", "inStock": true}'::JSONB,
    '{"size": "M 18 / W 19.5", "inStock": true}'::JSONB
],
    /* Carousels //////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{
            "image": "https://static.pxlecdn.com/photos/559121339/original/4f0eec324b8270cb583d.jpg",
            "text": "@anier_888",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/522355164/original/dfad24671f909b4590b4.jpg",
            "text": "@rawww.af",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/522953445/original/b5bcb2294415960fae67.jpg",
            "text": "@nastyflemme",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/514663663/original/d399fc5b1a6f958f6a7e.jpg",
            "text": "@blackthacreator",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                },
                {
                    "name":"Nike Air Force 1 ''07 EasyOn",
                    "type":"Shoes",
                    "image":"https://static.pxlecdn.com/products/64908515/primary/thumb/90c7f8420224a15d0d9ce335d70b7bf7.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460294486/original/52ec21038e50472a3496",
            "text": "@otb_stro",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460293780/original/ae6c7c100f2550dae1f7",
            "text": "@trelltheplug",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/537632132/original/61d22c9a154bf6e9e2e9.jpg",
            "text": "@mailys.chv",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460292737/original/e0e172192f29679b725b",
            "text": "@reda_fegrouch",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/564948243/original/95013837de9c8485486a.jpg",
            "text": "@don.y47",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB
    ],
    -- Complete The Look
    ARRAY[
        '{
        "image": "https://i.postimg.cc/zf4h7JZ2/set1.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/L5p1dNsz/1.webp",
            "type": "Men''s Full-Zip Hoodie",
            "colors": "10 Colors",
            "price": "$70"
            },
            {
            "name": "Nike Ready",
            "img": "https://i.postimg.cc/KY1Lt1Vg/2.webp",
            "type": "Men''s Dri-FIT Fitness Tank",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike Club",
            "img": "https://i.postimg.cc/kg1KVQjm/3.webp",
            "type": "Men''s Woven Washed Flow Shorts",
            "colors": "1 Color",
            "price": "$45.97"
            },
            {
            "name": "Nike Show X Rush",
            "img": "https://i.postimg.cc/gJRZBfGz/4.webp",
            "type": "Sunglasses",
            "colors": "3 Colors",
            "price": "$30"
            }
        ]
        }'::JSONB,
        '{
            "image": "https://i.postimg.cc/NFqP3qTp/set2.png",
            "items": [
                {
                "name": "Nike Sportswear Tech Fleece Men''s Crew",
                "img": "https://i.postimg.cc/hGvwx0cb/1.webp",
                "type": "Crew Neck Pullover",
                "colors": "3 Colors",
                "price": "$35"
                },
                {
                "name": "Nike Rise 365 Men''s Dri-FIT Short-Sleeve Running Top",
                "img": "https://i.postimg.cc/XYQmpPSY/2.webp",
                "type": "Athletic Shirt",
                "colors": "3 Colors",
                "price": "$55"
                },
                {
                "name": "Nike Sportswear Club Fleece",
                "img": "https://i.postimg.cc/50FRKNHX/3.webp",
                "type": "Men''s Pants",
                "colors": "2 Colors",
                "price": "$22"
                },
                {
                "name": "Nike Multiplier",
                "img": "https://i.postimg.cc/8CYYbrC8/4.webp",
                "type": "Running No-Show Socks (2 Pairs)",
                "colors": "2 Colors",
                "price": "$99"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/rzXJnFqy/set3.png",
            "items": [
                {
                "name": "Nike Sportswear Tech Fleece Reimagined",
                "img": "https://i.postimg.cc/kXbYxL7X/1.webp",
                "type": "Men''s Oversized Shacket",
                "colors": "2 Colors",
                "price": "$34.97"
                },
                {
                "name": "Nike Running Energy Rise 365",
                "img": "https://i.postimg.cc/jjXFDNtH/2.webp",
                "type": "Men''s Dri-FIT Short-Sleeve Running Top",
                "colors": "7 Colors",
                "price": "$40.97"
                },
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/gjwStTRs/3.webp",
                "type": "Men''s Woven Tapered Leg Pants",
                "colors": "2 Colors",
                "price": "$69.97"
                },
                {
                "name": "Nike Elemental",
                "img": "https://i.postimg.cc/1z9W1twf/4.webp",
                "type": "Backpack (21L)",
                "colors": "3 Colors",
                "price": "$57"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/TYdFXtxR/set4.png",
            "items": [
                {
                "name": "Nike Rave Polarized Sunglasses",
                "img": "https://i.postimg.cc/L87bLR1X/3.webp",
                "type": "Athletic Sunglasses",
                "colors": "1 Color",
                "price": "$34.97"
                },
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/YSW-yxV6x/1.webp",
                "type": "Men''s Allover Print T-Shirt",
                "colors": "4 Colors",
                "price": "$55"
                },
                {
                "name": "Nike Sportswear Tech Pack Men''s Woven Utility Shorts",
                "img": "https://i.postimg.cc/9XtKSvv8/2.webp",
                "type": "Athletic Shorts",
                "colors": "2 Colors",
                "price": "$24"
                },
                {
                "name": "Nike Multiplier Crew Sock (2 Pairs)",
                "img": "https://i.postimg.cc/MpXLnXXN/4.webp",
                "type": "Athletic Socks",
                "colors": "3 Colors",
                "price": "$52"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/fTMkXS4H/set5.png",
            "items": [
                {
                "name": "Nike Sportswear Club Fleece Men''s Crew",
                "img": "https://i.postimg.cc/7LjfTBD7/1.webp",
                "type": "Crew Neck Pullover",
                "colors": "4 Colors",
                "price": "$95"
                },
                {
                "name": "Nike Sportswear Men''s T-Shirt",
                "img": "https://i.postimg.cc/HWwVV4Nc/2.webp",
                "type": "Athletic Shirt",
                "colors": "8 Colors",
                "price": "$30"
                },
                {
                "name": "Nike Life",
                "img": "https://i.postimg.cc/nLXXr88p/3.webp",
                "type": "Men''s Pleated Chino Shorts",
                "colors": "11 Colors",
                "price": "$100"
                },
                {
                "name": "Nike Swerve",
                "img": "https://i.postimg.cc/rpRpcSW-p/4.webp",
                "type": "Polarized Sunglasses",
                "colors": "2 Colors",
                "price": "$24"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/SNjRDFs8/set6.png",
            "items": [
                {
                "name": "Nike Solo Swoosh Men''s Fleece Crew",
                "img": "https://i.postimg.cc/hvtjkN1k/1.webp",
                "type": "Crew Neck Pullover",
                "colors": "10 Colors",
                "price": "$70"
                },
                {
                "name": "Nike Sportswear T-Shirt",
                "img": "https://i.postimg.cc/Jnq0dRZ3/2.webp",
                "type": "Athletic Shirt",
                "colors": "12 Colors",
                "price": "$30"
                },
                {
                "name": "Nike Solo Swoosh",
                "img": "https://i.postimg.cc/J7ptN41M/3.webp",
                "type": "Men''s Fleece Pants",
                "colors": "7 Colors",
                "price": "$60"
                },
                {
                "name": "Nike Everyday Essential Ankle Socks (3 Pairs)",
                "img": "https://i.postimg.cc/SR1skVZJ/4.webp",
                "type": "Athletic Socks",
                "colors": "2 Colors",
                "price": "$102"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/FKF0rCpx/set7.png",
            "items": [
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/FH4jqHJ8/3.webp",
                "type": "Unstructured \"Air Max 1\" Cap",
                "colors": "14 Colors",
                "price": "$45.97"
                },
                {
                "name": "Nike Solo Swoosh Men''s Fleece Crew",
                "img": "https://i.postimg.cc/FH4jqHJ8/3.webp",
                "type": "Crew Neck Pullover",
                "colors": "14 Colors",
                "price": "$45.97"
                },
                {
                "name": "Nike Solo Swoosh",
                "img": "https://i.postimg.cc/QNvgQbNX/2.webp",
                "type": "Fleece Shorts",
                "colors": "3 Colors",
                "price": "$55"
                },
                {
                "name": "Nike Everyday Plus Cushioned",
                "img": "https://i.postimg.cc/8zctw5QG/4.webp",
                "type": "Ankle Socks",
                "colors": "2 Colors",
                "price": "$22"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/Y9KG4XfV/set8.png",
            "items": [
                {
                "name": "Nike Club Unstructured Swoosh Cap",
                "img": "https://i.postimg.cc/c4sDghFr/1.webp",
                "type": "Baseball Hat",
                "colors": "3 Colors",
                "price": "$125"
                },
                {
                "name": "Nike Dri-FIT Legend",
                "img": "https://i.postimg.cc/ZYP752FG/2.webp",
                "type": "Men''s Fitness T-Shirt",
                "colors": "17 Colors",
                "price": "$35"
                },
                {
                "name": "Nike Sportswear Club",
                "img": "https://i.postimg.cc/m28mQ9nV/3.webp",
                "type": "Men''s Graphic Shorts",
                "colors": "17 Colors",
                "price": "$27.97"
                },
                {
                "name": "Nike Everyday Plus Cushioned",
                "img": "https://i.postimg.cc/8zctw5QG/4.webp",
                "type": "Ankle Socks",
                "colors": "2 Colors",
                "price": "$22"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/9Qk1khC7/set9.png",
            "items": [
                {
                "name": "Nike Sportswear Windrunner",
                "img": "https://i.postimg.cc/c4sDghFr/1.webp",
                "type": "Men''s Hooded Jacket",
                "colors": "3 Colors",
                "price": "$125"
                },
                {
                "name": "Nike Sportswear Men''s Long-Sleeve T-Shirt",
                "img": "https://i.postimg.cc/ZYP752FG/2.webp",
                "type": "Active Long Sleeve Shirt",
                "colors": "17 Colors",
                "price": "$35"
                },
                {
                "name": "Nike Sportswear Tech Fleece Men''s Joggers",
                "img": "https://i.postimg.cc/m28mQ9nV/3.webp",
                "type": "Jogger Pants",
                "colors": "17 Colors",
                "price": "$27.97"
                },
                {
                "name": "Nike Everyday Plus Cushioned",
                "img": "https://i.postimg.cc/8zctw5QG/4.webp",
                "type": "Ankle Socks",
                "colors": "2 Colors",
                "price": "$22"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/m2vtpXKr/set10.png",
            "items": [
                {
                "name": "Nike Sportswear Windrunner",
                "img": "https://i.postimg.cc/K8t467yD/1.webp",
                "type": "Men''s Athletic Button-up",
                "colors": "1 Color",
                "price": "$39.97"
                },
                {
                "name": "Big Athlete White T-Shirt",
                "img": "https://i.postimg.cc/xjFkMTRM/2.webp",
                "type": "Men''s Athletic T-Shirt",
                "colors": "6 Colors",
                "price": "$55"
                },
                {
                "name": "Cool Black Pants",
                "img": "https://i.postimg.cc/3N6dTnRn/3.webp",
                "type": "Men''s Really Cool Pants",
                "colors": "5 Colors",
                "price": "$36.97"
                },
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/15n8HhCT/4.webp",
                "type": "Baseball Cap",
                "colors": "1 Color",
                "price": "$12"
                }
            ]
            }'::JSONB
        ],
    /* Explorer Images ////////////////////////////////////////////////////////////////// */
    ARRAY[
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/243a7c32-0aa7-4c0c-a238-c2b91b91d67e/pdp-replace.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/b2f8e5b8-ffe4-45e1-8b70-ed502fcf6243/pdp-replace.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/d5ff67b4-6bb1-47ec-ae67-3484c21ac5de/pdp-replace.jpg'
    ],
    -- Stores where shoes are available
    ARRAY[
        'Nike Factory Store - Paramus',
        'Nike Factory Store - Staten Island'
    ],
    -- Benefits for products in the modal and explore section
    ARRAY[
        'The stitched overlays on the upper add heritage style, durability and support.',
        'Originally designed for performance hoops, the Nike Air cushioning adds lightweight, all-day comfort.',
        'The low-cut silhouette adds a clean, streamlined look.',
        'The padded collar feels soft and comfortable.'
    ],
    -- Details for product modal
    ARRAY[
        'Foam midsole',
        'Perforations on the toe',
        'Rubber sole'
    ],
    -- Origin for shoe
    'Debuting in 1982, the AF1 was the first basketball shoe to house Nike Air, revolutionizing the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.',
    --primary_review_comment
    ARRAY[
        'Awesome shoes!',
        'Shoes',
        'Classic like always'
    ],
    --star_rating
    ARRAY[
        1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,
        2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,
        3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,
        4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,
        5.0
    ],
    --customer username
    ARRAY['loretor519667877', 'Leairah52cb098261ca4e868c08b70a05c0fbd4', 'Michael677065232'],
    --review date
    ARRAY['Jan 28, 2024', 'Jan 23, 2024', 'Jan 23, 2024'],
    --secondary review comment
    ARRAY['Perfectly awesome pair of shoes', 'I like them I also want more jordan 4''s on this app and university blue.', 'Nice and clean, Classic like always']
);

/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* Black on Black */

INSERT INTO shoeData(
    name,
    type,
    color,
    style,
    description,
    price,
    purchased,
    thumbnails,
    expandedImg,
    shoeSize,
    howOthersCarousel,
    completeTheLook,
    ExplorationImg,
    stores,
    benefits,
    details,
    origin,
    primary_review_comment,
    star_rating,
    customer_username,
    review_date,
    secondary_review_comment
) VALUES(
    /* Details */
    'Nike Air Force 1 ''07',
    'Men''s Shoes',
    'Black/Black',
    'CW2288-001',
    'The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.',
    115,
    878,
    /* Image Gallery //////////////////////////////////////////////////////////////////// */ 
    ARRAY[
        'https://static.nike.com/a/images/t_default/21d38052-598b-44f6-a857-123c9f72b015/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/so_2.25/d58e9afa-e042-497c-917d-d625c432b72b/air-force-1-07-mens-shoes-jBrhbr.jpg',
        'https://static.nike.com/a/images/t_default/68cb650b-834c-4a7f-9bc6-f5d152a2a09c/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/dc114f8a-7f07-4cb9-a231-e90c46d8b6c6/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/823a35ac-268c-4afe-8a5c-c5094b4e1269/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/7816bb7c-2bb9-4eac-b552-8d0573a0e9fc/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/766c9b98-5356-4195-8e18-f3aa4baa8268/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/766c9b98-5356-4195-8e18-f3aa4baa8268/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/489c7ab1-0ee9-457d-98ff-c4115686ccaa/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/6dd19015-1d31-4126-bbd6-c25a9c996064/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/ed5de6a6-ac79-4fdd-9b3e-54fb2e96a16d/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    ARRAY[
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fc4622c4-2769-4665-aa6e-42c974a7705e/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/q_90/d58e9afa-e042-497c-917d-d625c432b72b/video.mp4',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/e248cb89-2222-49d9-a9d5-d38193863e79/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0ac482bd-f8e4-4d59-a652-4a50de7dbce5/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7cd0845e-4eba-4ccf-8237-bc47f1e31f3e/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/c331ff82-87dd-453f-b6d4-1c81ef5e29aa/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/900c2ac8-8a3e-45f7-aac7-c92ccce8505a/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ddec7bcc-6100-4d27-ac7c-d15771e1780e/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/364d6a11-fad9-4a21-a763-59e458e41463/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f430f78b-6107-4c30-a4b2-f6df4fd228be/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/89a2cdd6-992b-4224-aab3-e49681f01e00/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    /* Sizing /////////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{"size": "M 4 / W 5.5", "inStock": false}'::JSONB,
        '{"size": "M 4.5 / W 6", "inStock": false}'::JSONB,
        '{"size": "M 5 / W 6.5", "inStock": false}'::JSONB,
        '{"size": "M 5.5 / W 7", "inStock": false}'::JSONB,
        '{"size": "M 6 / W 7.5", "inStock": true}'::JSONB,
        '{"size": "M 6.5 / W 8", "inStock": true}'::JSONB,
        '{"size": "M 7 / W 8.5", "inStock": true}'::JSONB,
        '{"size": "M 7.5 / W 9", "inStock": true}'::JSONB,
        '{"size": "M 8 / W 9.5", "inStock": true}'::JSONB,
        '{"size": "M 8.5 / W 10", "inStock": true}'::JSONB,
        '{"size": "M 9 / W 10.5", "inStock": true}'::JSONB,
        '{"size": "M 9.5 / W 11", "inStock": true}'::JSONB,
        '{"size": "M 10 / W 11.5", "inStock": true}'::JSONB,
        '{"size": "M 10.5 / W 12", "inStock": true}'::JSONB,
        '{"size": "M 11 / W 12.5", "inStock": true}'::JSONB,
        '{"size": "M 11.5 / W 13", "inStock": true}'::JSONB,
        '{"size": "M 12 / W 13.5", "inStock": true}'::JSONB,
        '{"size": "M 12.5 / W 14", "inStock": true}'::JSONB,
        '{"size": "M 13 / W 14.5", "inStock": true}'::JSONB,
        '{"size": "M 14 / W 15.5", "inStock": true}'::JSONB,
        '{"size": "M 15 / W 16.5", "inStock": true}'::JSONB,
        '{"size": "M 16 / W 17.5", "inStock": true}'::JSONB,
        '{"size": "M 17 / W 18.5", "inStock": true}'::JSONB,
        '{"size": "M 18 / W 19.5", "inStock": true}'::JSONB
    ],
    /* Carousels //////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{
            "image": "https://static.pxlecdn.com/photos/559121339/original/4f0eec324b8270cb583d.jpg",
            "text": "@anier_888",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/522355164/original/dfad24671f909b4590b4.jpg",
            "text": "@rawww.af",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/522953445/original/b5bcb2294415960fae67.jpg",
            "text": "@nastyflemme",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/514663663/original/d399fc5b1a6f958f6a7e.jpg",
            "text": "@blackthacreator",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                },
                {
                    "name":"Nike Air Force 1 ''07 EasyOn",
                    "type":"Shoes",
                    "image":"https://static.pxlecdn.com/products/64908515/primary/thumb/90c7f8420224a15d0d9ce335d70b7bf7.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460294486/original/52ec21038e50472a3496",
            "text": "@otb_stro",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460293780/original/ae6c7c100f2550dae1f7",
            "text": "@trelltheplug",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/537632132/original/61d22c9a154bf6e9e2e9.jpg",
            "text": "@mailys.chv",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460292737/original/e0e172192f29679b725b",
            "text": "@reda_fegrouch",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/564948243/original/95013837de9c8485486a.jpg",
            "text": "@don.y47",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43622393/primary/thumb/dae886d50aaf603bbf8b9367f7578464.png"
                }
            ]
        }'::JSONB
    ],
    -- Complete The Look
    ARRAY[
        '{
        "image": "https://i.postimg.cc/HnYt4r2Q/set1.png",
        "items": [
            {
            "name": "Nike Brasilia Training Duffel Bag (Small, 41L)",
            "img": "https://i.postimg.cc/vBdhTqx2/4.webp",
            "type": "Athletic Duffel",
            "colors": "3 Colors",
            "price": "$30"
            },
            {
            "name": "Nike Element Men''s Dri-FIT 1/2-Zip Running Top",
            "img": "https://i.postimg.cc/63L0vrdW/1.webp",
            "type": "Quarter Zip Jacket",
            "colors": "9 Colors",
            "price": "$60"
            },
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/y8tv4Y1H/2.webp",
            "type": "Men''s Cargo Pants",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike Everyday Plus Cushioned Training Ankle Socks (3 Pairs)",
            "img": "https://i.postimg.cc/TPbQRM1W/3.webp",
            "type": "Athletic Socks",
            "colors": "1 Color",
            "price": "$45.97"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/Sx2frFWt/set2.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece Men''s Pullover Printed Hoodie",
            "img": "https://i.postimg.cc/NFdkNQJZ/1.webp",
            "type": "Hoodie",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike SB Men''s Skate T-Shirt",
            "img": "https://i.postimg.cc/gcsscKz4/2.webp",
            "type": "Athletic Shirt",
            "colors": "3 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Club Men''s Woven Tapered Leg Pants",
            "img": "https://i.postimg.cc/5Nt3XFjJ/3.webp",
            "type": "Athletic Pants",
            "colors": "2 Colors",
            "price": "$22"
            },
            {
            "name": "Nike Diamond Select",
            "img": "https://i.postimg.cc/jdkhPdJ7/4.webp",
            "type": "Bat Pack (31L)",
            "colors": "2 Colors",
            "price": "$99"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/1X3pVLmB/set3.png",
        "items": [
            {
            "name": "Nike Sportswear Tech Fleece Lightweight Men''s Full-Zip Hoodie Sweatshirt",
            "img": "https://i.postimg.cc/sgk9H6mf/1.webp",
            "type": "Hoodie",
            "colors": "2 Colors",
            "price": "$34.97"
            },
            {
            "name": "Nike Sportswear Premium Essentials Men''s T-Shirt",
            "img": "https://i.postimg.cc/wvH5g1nS/2.webp",
            "type": "Athletic Shirt",
            "colors": "7 Colors",
            "price": "$40.97"
            },
            {
            "name": "Nike Sportswear Club Men''s Graphic Shorts",
            "img": "https://i.postimg.cc/DZgrZ2Tm/3.webp",
            "type": "Athletic Shorts",
            "colors": "2 Colors",
            "price": "$69.97"
            },
            {
            "name": "Nike Sportswear Dri-FIT Everyday Essential Crew Socks (3 Pairs)",
            "img": "https://i.postimg.cc/8CLd2RXR/4.webp",
            "type": "Athletic Socks",
            "colors": "3 Colors",
            "price": "$57"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/BnK2F50r/set4.png",
        "items": [
            {
            "name": "Nike Solo Swoosh",
            "img": "https://i.postimg.cc/VLTj5G39/1.webp",
            "type": "Men''s Full-Zip Hoodie",
            "colors": "1 Color",
            "price": "$34.97"
            },
            {
            "name": "Nike Dri-FIT Running Division Men''s Running T-Shirt",
            "img": "https://i.postimg.cc/7Yb3H8QY/2.webp",
            "type": "Athletic Shirt",
            "colors": "4 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Phenom Men''s Dri-FIT Knit Running Pants",
            "img": "https://i.postimg.cc/QCYcQ0V3/3.webp",
            "type": "Athletic Pants",
            "colors": "2 Colors",
            "price": "$24"
            },
            {
            "name": "Nike Everyday Plus Cushioned",
            "img": "https://i.postimg.cc/NGd8vfDz/4.webp",
            "type": "Crew Socks (3 Pairs)",
            "colors": "3 Colors",
            "price": "$52"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/jSPJ2s6K/set5.png",
        "items": [
            {
            "name": "Nike Sportswear Tech Fleece Men''s Bomber Jacket",
            "img": "https://i.postimg.cc/02Lw96wc/1.webp",
            "type": "Athletic Jacket",
            "colors": "4 Colors",
            "price": "$95"
            },
            {
            "name": "Nike Sportswear Men''s Long-Sleeve T-Shirt",
            "img": "https://i.postimg.cc/qMtKfczN/2.webp",
            "type": "Active Long Sleeve Shirt",
            "colors": "8 Colors",
            "price": "$30"
            },
            {
            "name": "Nike Sportswear Tech Fleece",
            "img": "https://i.postimg.cc/bYVnFVNX/3.webp",
            "type": "Men''s Joggers",
            "colors": "11 Colors",
            "price": "$100"
            },
            {
            "name": "Nike Cool Down",
            "img": "https://i.postimg.cc/Zqmvy1jN/4.jpg",
            "type": "Sunglasses",
            "colors": "2 Colors",
            "price": "$24"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/L5Gn47nn/set6.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece Men''s Full-Zip Hoodie",
            "img": "https://i.postimg.cc/gJkwg8Ck/1.webp",
            "type": "Hoodie",
            "colors": "10 Colors",
            "price": "$70"
            },
            {
            "name": "Nike Sportswear Club Men''s T-Shirt",
            "img": "https://i.postimg.cc/bJCZWdP0/2.webp",
            "type": "Athletic Shirt",
            "colors": "12 Colors",
            "price": "$30"
            },
            {
            "name": "Nike Sportswear Club Men''s Graphic Shorts",
            "img": "https://i.postimg.cc/7h55kDPF/3.webp",
            "type": "Athletic Shorts",
            "colors": "7 Colors",
            "price": "$60"
            },
            {
            "name": "Nike ACG Aysén Day Pack (32L)",
            "img": "https://i.postimg.cc/4317vBFS/4.webp",
            "type": "Athletic Backpack",
            "colors": "2 Colors",
            "price": "$102"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/VLMjrB13/set7.png",
        "items": [
            {
            "name": "Nike Club Unstructured Futura Wash Cap",
            "img": "https://i.postimg.cc/xjBv1Frv/3.webp",
            "type": "Baseball Hat",
            "colors": "14 Colors",
            "price": "$45.97"
            },
            {
            "name": "Nike Sportswear Club Fleece Men''s Crew-Neck Sweatshirt",
            "img": "https://i.postimg.cc/BtWnfKVF/1.webp",
            "type": "Sweatshirt",
            "colors": "17 Colors",
            "price": "$25.97"
            },
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/G34Prnf3/2.webp",
            "type": "Joggers",
            "colors": "3 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Everyday Cushioned Training Crew Socks (6 Pairs)",
            "img": "https://i.postimg.cc/4yHx05BZ/4.webp",
            "type": "Athletic Socks",
            "colors": "4 Colors",
            "price": "$23.97"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/brn2npXQ/set8.png",
        "items": [
            {
            "name": "Nike SB Fleece Pullover Skate Hoodie",
            "img": "https://i.postimg.cc/jjqNFpNb/1.webp",
            "type": "Hoodie",
            "colors": "9 Colors",
            "price": "$100"
            },
            {
            "name": "Nike Dri-FIT Primary Men''s Training T-Shirt",
            "img": "https://i.postimg.cc/qRS3ggFJ/2.webp",
            "type": "Sports Jersey",
            "colors": "2 Colors",
            "price": "$34.97"
            },
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/Y9hFpQbD/3.webp",
            "type": "Joggers",
            "colors": "3 Colors",
            "price": "$108.97"
            },
            {
            "name": "Nike Dri-FIT Club Structured Heathered Cap",
            "img": "https://i.postimg.cc/Jz5ZKrsx/4.webp",
            "type": "Golf Hat",
            "colors": "2 Colors",
            "price": "$69.97"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/tR612qf6/set9.png",
        "items": [
            {
            "name": "Nike Circuit Blue Light Glasses",
            "img": "https://i.postimg.cc/HnbVxz5z/4.webp",
            "type": "Blue Light Glasses",
            "colors": "2 Colors",
            "price": "$22"
            },
            {
            "name": "Nike ESC Men''s Knit Pullover Hoodie",
            "img": "https://i.postimg.cc/pd191pRf/1.webp",
            "type": "Hoodie",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike SB Kearny",
            "img": "https://i.postimg.cc/JnfsMvyt/2.webp",
            "type": "Skate Cargo Pants",
            "colors": "5 Colors",
            "price": "$36.97"
            },
            {
            "name": "Nike Premium",
            "img": "https://i.postimg.cc/26bqprSP/3.webp",
            "type": "Lanyard",
            "colors": "2 Colors",
            "price": "$125"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/W4QNkrsH/set10.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/Nf4jz5xK/1.webp",
            "type": "Pullover Hoodie",
            "colors": "1 Color",
            "price": "$39.97"
            },
            {
            "name": "Nike Sportswear Premium Essentials",
            "img": "https://i.postimg.cc/vZZZFbP3/2.webp",
            "type": "Men''s T-Shirt",
            "colors": "6 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Sportswear Sport Essentials Men''s Woven Lined Flow Shorts",
            "img": "https://i.postimg.cc/Jhy70KCX/3.webp",
            "type": "Athletic Shorts",
            "colors": "5 Colors",
            "price": "$36.97"
            },
            {
            "name": "Nike Sportswear Essentials",
            "img": "https://i.postimg.cc/QdYxjwws/4.webp",
            "type": "Messenger Bag (17L)",
            "colors": "1 Color",
            "price": "$12"
            }
        ]
        }'::JSONB
    ],
    /* Explorer Images ////////////////////////////////////////////////////////////////// */
    ARRAY[
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/bf03cb63-a736-4557-95bd-49e9d8714a05/pdp-cw2288-001.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/b16130df-9129-4334-824e-95bc7758ae34/pdp-cw2288-001.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/ce585162-01c8-47b7-a574-fb180854e324/pdp-cw2288-001.jpg'
    ],
    -- Stores where shoes are available
    ARRAY[
        'Nike Unite - Harlem',
        'Nike Well Collective - Williamsburg',
        'Nike Factory Store - Staten Island'
    ],
    -- Benefits for products in the modal and explore section
    ARRAY[
        'The stitched overlays on the upper add heritage style, durability and support.',
        'Originally designed for performance hoops, the Nike Air cushioning adds lightweight, all-day comfort.',
        'The low-cut silhouette adds a clean, streamlined look.',
        'The padded collar feels soft and comfortable.'
    ],
    -- Details for product modal
    ARRAY[
        'Foam midsole',
        'Perforations on the toe',
        'Rubber sole'
    ],
    -- Origin for shoe
    'Debuting in 1982, the AF1 was the first basketball shoe to house Nike Air, revolutionizing the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.',
    --primary_review_comment
    ARRAY[
        'Awesome shoes!',
        'Shoes',
        'Classic like always'
    ],
    --star_rating
    ARRAY[
        1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,
        2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,
        3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,
        4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,
        5.0
    ],
    --customer username
    ARRAY['loretor519667877', 'Leairah52cb098261ca4e868c08b70a05c0fbd4', 'Michael677065232'],
    --review date
    ARRAY['Jan 28, 2024', 'Jan 23, 2024', 'Jan 23, 2024'],
    --secondary review comment
    ARRAY['Perfectly awesome pair of shoes', 'I like them I also want more jordan 4''s on this app and university blue.', 'Nice and clean, Classic like always']
);

/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* Black on White */

INSERT INTO shoeData(
    name,
    type,
    color,
    style,
    description,
    price,
    purchased,
    thumbnails,
    expandedImg,
    shoeSize,
    howOthersCarousel,
    completeTheLook,
    ExplorationImg,
    stores,
    benefits,
    details,
    origin,
    primary_review_comment,
    star_rating,
    customer_username,
    review_date,
    secondary_review_comment
) VALUES(
    /* Details */
    'Nike Air Force 1 ''07',
    'Men''s Shoes',
    'Black/White',
    'CT2302-002',
    'The radiance lives on in the Nike Air Force 1 ’07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colors and the perfect amount of flash to make you shine.',
    115,
    139,
    /* Image Gallery //////////////////////////////////////////////////////////////////// */ 
    ARRAY[
        'https://static.nike.com/a/images/t_default/057c2bbd-d065-44eb-913f-51dd4f98d680/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/so_4.92/a91adb2a-77f4-4e15-811b-4847a3768ac0/air-force-1-07-mens-shoes-jBrhbr.jpg',
        'https://static.nike.com/a/images/t_default/345f7487-6b2b-4b94-a8b4-7ab3bb7b5499/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/1b434e01-17bf-45cf-b9eb-e3934e98dd8d/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/f80fa94d-5eb7-429f-83de-3837b9503006/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/cb34860c-df9f-49ef-96dc-183cd99e4be2/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/8771823a-ecbf-4b55-9eae-414f371202b4/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/9bffe04d-189c-4400-81f3-c98605baa6d7/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/05d3b31c-2545-452d-a20a-29552ff9c88d/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/727a13be-7588-4a9b-97bb-31b1fe91ff52/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/9cbb1d44-4e63-4a22-88ba-8cdbbe0d96e3/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    ARRAY[
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d762c5e2-ae49-4208-99df-484594b51e5f/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/q_90/a91adb2a-77f4-4e15-811b-4847a3768ac0/video.mp4',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/08e87d1e-4063-4a25-ac40-d38bb4c8f5da/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fcfed7da-5ef1-4949-a969-bf67c97d9fb8/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b20b924a-e1e9-4822-976c-a9ea8411f84c/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3570fc97-5d2c-4c92-a71d-194fa93884f4/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/af5509b3-1389-4526-9087-73e2e05aa51e/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/eb2488fe-1b41-4edb-8112-c78c167db8ed/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f4f1b60e-88a9-4166-acfc-75643da730e3/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/8c9662a3-cb63-4af1-b15f-363b865400dc/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ea266a57-5f91-4b2c-9b19-bef27655015a/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    /* Sizing /////////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{"size": "M 6 / W 7.5", "inStock": true}'::JSONB,
        '{"size": "M 6.5 / W 8", "inStock": true}'::JSONB,
        '{"size": "M 7 / W 8.5", "inStock": true}'::JSONB,
        '{"size": "M 7.5 / W 9", "inStock": true}'::JSONB,
        '{"size": "M 8 / W 9.5", "inStock": true}'::JSONB,
        '{"size": "M 8.5 / W 10", "inStock": true}'::JSONB,
        '{"size": "M 9 / W 10.5", "inStock": true}'::JSONB,
        '{"size": "M 9.5 / W 11", "inStock": true}'::JSONB,
        '{"size": "M 10 / W 11.5", "inStock": true}'::JSONB,
        '{"size": "M 10.5 / W 12", "inStock": true}'::JSONB,
        '{"size": "M 11 / W 12.5", "inStock": true}'::JSONB,
        '{"size": "M 11.5 / W 13", "inStock": true}'::JSONB,
        '{"size": "M 12 / W 13.5", "inStock": true}'::JSONB,
        '{"size": "M 12.5 / W 14", "inStock": false}'::JSONB,
        '{"size": "M 13 / W 14.5", "inStock": true}'::JSONB,
        '{"size": "M 14 / W 15.5", "inStock": true}'::JSONB,
        '{"size": "M 15 / W 16.5", "inStock": false}'::JSONB,
        '{"size": "M 16 / W 17.5", "inStock": false}'::JSONB,
        '{"size": "M 17 / W 18.5", "inStock": true}'::JSONB,
        '{"size": "M 18 / W 19.5", "inStock": true}'::JSONB
    ],
    /* Carousels //////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{
            "image": "https://static.pxlecdn.com/photos/584393865/original/7fed2411cf2668ec98b4.jpg",
            "text": "@i_am_udee",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"Nike Everyday Max Cushioned",
                    "type":"Training Ankle Socks (3 Pairs)",
                    "image":"https://static.pxlecdn.com/products/43606110/primary/thumb/52c88bf2efdb48f2039578ae2a7c1227.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460291174/original/43fba61e4455e587b4d1",
            "text": "@sinalomcetywa",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"NikeCourt Dri-FIT",
                    "type":"Women''s Short-Sleeve Tennis Top",
                    "image":"https://static.nike.com/a/images/c_limit,h_2500,w_2500,b_rgb:F5F5F5,f_png/o2w4fx8brljzqlnrvmss/image.png"
                },
                {
                    "name":"Nike Sportswear Heritage 86",
                    "type":"Cap",
                    "image":"https://static.pxlecdn.com/products/43613804/primary/thumb/20c6d10b120c194192e773793f171fd3.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460294438/original/7a3ea69740730a61fda3",
            "text": "@sabon_kudii",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460293016/original/a172f313622f4c5a37a0",
            "text": "@jordankenney",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/532966617/original/3760a4d1ab9933c47191.jpg",
            "text": "@macmanila13",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"Nike Sportswear Tech Fleece",
                    "type":"Men''s Pants",
                    "image":"https://static.nike.com/a/images/c_limit,h_2500,w_2500,b_rgb:F5F5F5,f_png/c487b2c5-2fc5-4e59-a8bf-f8c78ddb4287/image.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460294629/original/5b88eeb96cd6da871e45",
            "text": "@joel.reis88",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/512050698/original/5bf0e6e6f264be61e885.jpg",
            "text": "@mamogolo",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"Nike One",
                    "type":"Women''s Mid-Rise Leggings (Plus Size)",
                    "image":"https://static.pxlecdn.com/products/43622162/primary/thumb/172f93dfe16852ea030642d4643988c2.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/546016134/original/6747f264e2bb14b7a1fb.jpg",
            "text": "@chetalinarula",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/552108247/original/c303f7c79babacf32ff0.jpg",
            "text": "@macmanila13",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB
    ],
    -- Complete The Look
    ARRAY[
        '{
        "image": "https://i.postimg.cc/HnYt4r2Q/set1.png",
        "items": [
            {
            "name": "Nike Brasilia Training Duffel Bag (Small, 41L)",
            "img": "https://i.postimg.cc/vBdhTqx2/4.webp",
            "type": "Athletic Duffel",
            "colors": "3 Colors",
            "price": "$30"
            },
            {
            "name": "Nike Element Men''s Dri-FIT 1/2-Zip Running Top",
            "img": "https://i.postimg.cc/63L0vrdW/1.webp",
            "type": "Quarter Zip Jacket",
            "colors": "9 Colors",
            "price": "$60"
            },
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/y8tv4Y1H/2.webp",
            "type": "Men''s Cargo Pants",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike Everyday Plus Cushioned Training Ankle Socks (3 Pairs)",
            "img": "https://i.postimg.cc/TPbQRM1W/3.webp",
            "type": "Athletic Socks",
            "colors": "1 Color",
            "price": "$45.97"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/Sx2frFWt/set2.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece Men''s Pullover Printed Hoodie",
            "img": "https://i.postimg.cc/NFdkNQJZ/1.webp",
            "type": "Hoodie",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike SB Men''s Skate T-Shirt",
            "img": "https://i.postimg.cc/gcsscKz4/2.webp",
            "type": "Athletic Shirt",
            "colors": "3 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Club Men''s Woven Tapered Leg Pants",
            "img": "https://i.postimg.cc/5Nt3XFjJ/3.webp",
            "type": "Athletic Pants",
            "colors": "2 Colors",
            "price": "$22"
            },
            {
            "name": "Nike Diamond Select",
            "img": "https://i.postimg.cc/jdkhPdJ7/4.webp",
            "type": "Bat Pack (31L)",
            "colors": "2 Colors",
            "price": "$99"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/1X3pVLmB/set3.png",
        "items": [
            {
            "name": "Nike Sportswear Tech Fleece Lightweight Men''s Full-Zip Hoodie Sweatshirt",
            "img": "https://i.postimg.cc/sgk9H6mf/1.webp",
            "type": "Hoodie",
            "colors": "2 Colors",
            "price": "$34.97"
            },
            {
            "name": "Nike Sportswear Premium Essentials Men''s T-Shirt",
            "img": "https://i.postimg.cc/wvH5g1nS/2.webp",
            "type": "Athletic Shirt",
            "colors": "7 Colors",
            "price": "$40.97"
            },
            {
            "name": "Nike Sportswear Club Men''s Graphic Shorts",
            "img": "https://i.postimg.cc/DZgrZ2Tm/3.webp",
            "type": "Athletic Shorts",
            "colors": "2 Colors",
            "price": "$69.97"
            },
            {
            "name": "Nike Sportswear Dri-FIT Everyday Essential Crew Socks (3 Pairs)",
            "img": "https://i.postimg.cc/8CLd2RXR/4.webp",
            "type": "Athletic Socks",
            "colors": "3 Colors",
            "price": "$57"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/BnK2F50r/set4.png",
        "items": [
            {
            "name": "Nike Solo Swoosh",
            "img": "https://i.postimg.cc/VLTj5G39/1.webp",
            "type": "Men''s Full-Zip Hoodie",
            "colors": "1 Color",
            "price": "$34.97"
            },
            {
            "name": "Nike Dri-FIT Running Division Men''s Running T-Shirt",
            "img": "https://i.postimg.cc/7Yb3H8QY/2.webp",
            "type": "Athletic Shirt",
            "colors": "4 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Phenom Men''s Dri-FIT Knit Running Pants",
            "img": "https://i.postimg.cc/QCYcQ0V3/3.webp",
            "type": "Athletic Pants",
            "colors": "2 Colors",
            "price": "$24"
            },
            {
            "name": "Nike Everyday Plus Cushioned",
            "img": "https://i.postimg.cc/NGd8vfDz/4.webp",
            "type": "Crew Socks (3 Pairs)",
            "colors": "3 Colors",
            "price": "$52"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/jSPJ2s6K/set5.png",
        "items": [
            {
            "name": "Nike Sportswear Tech Fleece Men''s Bomber Jacket",
            "img": "https://i.postimg.cc/02Lw96wc/1.webp",
            "type": "Athletic Jacket",
            "colors": "4 Colors",
            "price": "$95"
            },
            {
            "name": "Nike Sportswear Men''s Long-Sleeve T-Shirt",
            "img": "https://i.postimg.cc/qMtKfczN/2.webp",
            "type": "Active Long Sleeve Shirt",
            "colors": "8 Colors",
            "price": "$30"
            },
            {
            "name": "Nike Sportswear Tech Fleece",
            "img": "https://i.postimg.cc/bYVnFVNX/3.webp",
            "type": "Men''s Joggers",
            "colors": "11 Colors",
            "price": "$100"
            },
            {
            "name": "Nike Cool Down",
            "img": "https://i.postimg.cc/Zqmvy1jN/4.jpg",
            "type": "Sunglasses",
            "colors": "2 Colors",
            "price": "$24"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/L5Gn47nn/set6.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece Men''s Full-Zip Hoodie",
            "img": "https://i.postimg.cc/gJkwg8Ck/1.webp",
            "type": "Hoodie",
            "colors": "10 Colors",
            "price": "$70"
            },
            {
            "name": "Nike Sportswear Club Men''s T-Shirt",
            "img": "https://i.postimg.cc/bJCZWdP0/2.webp",
            "type": "Athletic Shirt",
            "colors": "12 Colors",
            "price": "$30"
            },
            {
            "name": "Nike Sportswear Club Men''s Graphic Shorts",
            "img": "https://i.postimg.cc/7h55kDPF/3.webp",
            "type": "Athletic Shorts",
            "colors": "7 Colors",
            "price": "$60"
            },
            {
            "name": "Nike ACG Aysén Day Pack (32L)",
            "img": "https://i.postimg.cc/4317vBFS/4.webp",
            "type": "Athletic Backpack",
            "colors": "2 Colors",
            "price": "$102"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/VLMjrB13/set7.png",
        "items": [
            {
            "name": "Nike Club Unstructured Futura Wash Cap",
            "img": "https://i.postimg.cc/xjBv1Frv/3.webp",
            "type": "Baseball Hat",
            "colors": "14 Colors",
            "price": "$45.97"
            },
            {
            "name": "Nike Sportswear Club Fleece Men''s Crew-Neck Sweatshirt",
            "img": "https://i.postimg.cc/BtWnfKVF/1.webp",
            "type": "Sweatshirt",
            "colors": "17 Colors",
            "price": "$25.97"
            },
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/G34Prnf3/2.webp",
            "type": "Joggers",
            "colors": "3 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Everyday Cushioned Training Crew Socks (6 Pairs)",
            "img": "https://i.postimg.cc/4yHx05BZ/4.webp",
            "type": "Athletic Socks",
            "colors": "4 Colors",
            "price": "$23.97"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/brn2npXQ/set8.png",
        "items": [
            {
            "name": "Nike SB Fleece Pullover Skate Hoodie",
            "img": "https://i.postimg.cc/jjqNFpNb/1.webp",
            "type": "Hoodie",
            "colors": "9 Colors",
            "price": "$100"
            },
            {
            "name": "Nike Dri-FIT Primary Men''s Training T-Shirt",
            "img": "https://i.postimg.cc/qRS3ggFJ/2.webp",
            "type": "Sports Jersey",
            "colors": "2 Colors",
            "price": "$34.97"
            },
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/Y9hFpQbD/3.webp",
            "type": "Joggers",
            "colors": "3 Colors",
            "price": "$108.97"
            },
            {
            "name": "Nike Dri-FIT Club Structured Heathered Cap",
            "img": "https://i.postimg.cc/Jz5ZKrsx/4.webp",
            "type": "Golf Hat",
            "colors": "2 Colors",
            "price": "$69.97"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/tR612qf6/set9.png",
        "items": [
            {
            "name": "Nike Circuit Blue Light Glasses",
            "img": "https://i.postimg.cc/HnbVxz5z/4.webp",
            "type": "Blue Light Glasses",
            "colors": "2 Colors",
            "price": "$22"
            },
            {
            "name": "Nike ESC Men''s Knit Pullover Hoodie",
            "img": "https://i.postimg.cc/pd191pRf/1.webp",
            "type": "Hoodie",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike SB Kearny",
            "img": "https://i.postimg.cc/JnfsMvyt/2.webp",
            "type": "Skate Cargo Pants",
            "colors": "5 Colors",
            "price": "$36.97"
            },
            {
            "name": "Nike Premium",
            "img": "https://i.postimg.cc/26bqprSP/3.webp",
            "type": "Lanyard",
            "colors": "2 Colors",
            "price": "$125"
            }
        ]
        }'::JSONB,
        '{
        "image": "https://i.postimg.cc/W4QNkrsH/set10.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/Nf4jz5xK/1.webp",
            "type": "Pullover Hoodie",
            "colors": "1 Color",
            "price": "$39.97"
            },
            {
            "name": "Nike Sportswear Premium Essentials",
            "img": "https://i.postimg.cc/vZZZFbP3/2.webp",
            "type": "Men''s T-Shirt",
            "colors": "6 Colors",
            "price": "$55"
            },
            {
            "name": "Nike Sportswear Sport Essentials Men''s Woven Lined Flow Shorts",
            "img": "https://i.postimg.cc/Jhy70KCX/3.webp",
            "type": "Athletic Shorts",
            "colors": "5 Colors",
            "price": "$36.97"
            },
            {
            "name": "Nike Sportswear Essentials",
            "img": "https://i.postimg.cc/QdYxjwws/4.webp",
            "type": "Messenger Bag (17L)",
            "colors": "1 Color",
            "price": "$12"
            }
        ]
        }'::JSONB
    ],
    /* Explorer Images ////////////////////////////////////////////////////////////////////// */
    ARRAY[
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/edac202b-5742-47db-82a7-601b950abcfb/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/e1b5af2b-2bf2-44ff-b696-11b49e4547e0/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/db7fba46-21e9-4167-a4e1-37d828a03a47/image.jpg'
    ],
    -- Stores where shoes are available
    ARRAY[
        'Nike Factory Store - Paramus',
        'Nike Soho',
        'Nike Factory Store - Staten Island',
        'Nike Unite - North Bronx'
    ],
    -- Benefits for products in the modal and explore section
    ARRAY[
        'Smoother than backboard glass and featuring a slight sheen, the stitched leather overlays add heritage style, durability and support.',
        'Originally designed for performance hoops, the Nike Air cushioning adds lightweight, all-day comfort.',
        'The low-cut silhouette adds a clean, streamlined look.',
        'Padded, low-cut collar feels soft and comfortable.'
    ],
    -- Details for product modal
    ARRAY[
        'Foam midsole',
        'Perforations on toe'
    ],
    -- Origin for shoe
    'Debuting in 1982, the AF1 was the first basketball shoe to house Nike Air, revolutionizing the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.',
        --primary_review_comments
    ARRAY[
        'Great feature.',
        'Nike Airforce Trainers',
        'Smart'
    ],
    --star_rating
    ARRAY[
        1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,
        2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,
        3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,
        4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,
        5.0
    ],
    --customer username
    ARRAY['Shido', 'Ian01', 'Nicola'],
    --review dates
    ARRAY['Jan 13, 2024', 'Jan 07, 2024', 'Jan 07, 2024'],
    --secondary review comments
    ARRAY['Good buy. ASOS has been delivering quality products', 'I bought this as a Christmas present. The quality is very good and the price was very competitive', 'Good fit. Ordered size 11. Went nice with cargos and jeans.']
);

/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// */
/* White on Black */

INSERT INTO shoeData(
    name,
    type,
    color,
    style,
    description,
    price,
    purchased,
    thumbnails,
    expandedImg,
    shoeSize,
    howOthersCarousel,
    completeTheLook,
    ExplorationImg,
    stores,
    benefits,
    details,
    origin,
    primary_review_comment,
    star_rating,
    customer_username,
    review_date,
    secondary_review_comment
) VALUES(
    /* Details */
    'Nike Air Force 1 ''07',
    'Men''s Shoes',
    'White/Black',
    'CT2302-100',
    'The radiance lives on in the Nike Air Force 1 ’07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colors and the perfect amount of flash to make you shine.',
    115,
    172,
    /* Image Gallery ///////////////////////////////////////////////////////////////////////// */ 
    ARRAY[
        'https://static.nike.com/a/images/t_default/a42a5d53-2f99-4e78-a081-9d07a2d0774a/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/so_3.82/2f8c2650-733c-4b0d-86f5-2626f4a36db4/air-force-1-07-mens-shoes-jBrhbr.jpg',
        'https://static.nike.com/a/images/t_default/deec30c7-92b4-46c9-8a7f-39a73eccdffa/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/6363d086-10e5-4892-adf0-182acd58d116/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/f65792df-0c9a-45a6-a54a-0f5e9ba2396f/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/6363d086-10e5-4892-adf0-182acd58d116/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/973de232-7836-4315-89f6-61c42ae8ef7d/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/57eb2056-db31-4d64-a867-33b5c6d3ed90/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/24499fd8-1ad2-4098-a20d-6fc2e59f7bba/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/10597866-c2a8-4b54-8d52-df2bec50a6e4/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/078c59c7-7919-4a3b-90f9-06faab2e91cc/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    ARRAY[
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/350e7f3a-979a-402b-9396-a8a998dd76ab/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/q_90/2f8c2650-733c-4b0d-86f5-2626f4a36db4/video.mp4',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/354e209b-f9f2-42c4-9130-d57f49bd77c0/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/52f79949-3584-4800-899c-0d5ff828f5e4/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f2e2833a-49e2-4088-b77e-4e4a5be53ae7/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/15b85bdb-aa12-4060-83d0-5163d11b314e/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/dce93a1d-ebcb-4300-b8cf-f71da0820ea1/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/619f4371-99ff-44cd-8b13-6c2e699e90c1/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/04c4cb92-0272-4c0f-bb53-30b833f044e0/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4eb3370f-c1ca-47d1-927f-49b4e1545dc9/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/2fce110e-7613-485a-8f17-9ea267f121e6/air-force-1-07-mens-shoes-jBrhbr.png'
    ],
    /* Sizing /////////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{"size": "M 6 / W 7.5", "inStock": false}'::JSONB,
        '{"size": "M 6.5 / W 8", "inStock": true}'::JSONB,
        '{"size": "M 7 / W 8.5", "inStock": true}'::JSONB,
        '{"size": "M 7.5 / W 9", "inStock": false}'::JSONB,
        '{"size": "M 8 / W 9.5", "inStock": true}'::JSONB,
        '{"size": "M 8.5 / W 10", "inStock": true}'::JSONB,
        '{"size": "M 9 / W 10.5", "inStock": true}'::JSONB,
        '{"size": "M 9.5 / W 11", "inStock": true}'::JSONB,
        '{"size": "M 10 / W 11.5", "inStock": true}'::JSONB,
        '{"size": "M 10.5 / W 12", "inStock": true}'::JSONB,
        '{"size": "M 11 / W 12.5", "inStock": true}'::JSONB,
        '{"size": "M 11.5 / W 13", "inStock": true}'::JSONB,
        '{"size": "M 12 / W 13.5", "inStock": true}'::JSONB,
        '{"size": "M 12.5 / W 14", "inStock": true}'::JSONB,
        '{"size": "M 13 / W 14.5", "inStock": true}'::JSONB,
        '{"size": "M 14 / W 15.5", "inStock": true}'::JSONB,
        '{"size": "M 15 / W 16.5", "inStock": true}'::JSONB,
        '{"size": "M 16 / W 17.5", "inStock": true}'::JSONB,
        '{"size": "M 17 / W 18.5", "inStock": true}'::JSONB,
        '{"size": "M 18 / W 19.5", "inStock": true}'::JSONB
    ],
    /* Carousels //////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{
            "image": "https://static.pxlecdn.com/photos/584393865/original/7fed2411cf2668ec98b4.jpg",
            "text": "@i_am_udee",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"Nike Everyday Max Cushioned",
                    "type":"Training Ankle Socks (3 Pairs)",
                    "image":"https://static.pxlecdn.com/products/43606110/primary/thumb/52c88bf2efdb48f2039578ae2a7c1227.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460291174/original/43fba61e4455e587b4d1",
            "text": "@sinalomcetywa",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"NikeCourt Dri-FIT",
                    "type":"Women''s Short-Sleeve Tennis Top",
                    "image":"https://static.nike.com/a/images/c_limit,h_2500,w_2500,b_rgb:F5F5F5,f_png/o2w4fx8brljzqlnrvmss/image.png"
                },
                {
                    "name":"Nike Sportswear Heritage 86",
                    "type":"Cap",
                    "image":"https://static.pxlecdn.com/products/43613804/primary/thumb/20c6d10b120c194192e773793f171fd3.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460294438/original/7a3ea69740730a61fda3",
            "text": "@sabon_kudii",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460293016/original/a172f313622f4c5a37a0",
            "text": "@jordankenney",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/532966617/original/3760a4d1ab9933c47191.jpg",
            "text": "@macmanila13",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"Nike Sportswear Tech Fleece",
                    "type":"Men''s Pants",
                    "image":"https://static.nike.com/a/images/c_limit,h_2500,w_2500,b_rgb:F5F5F5,f_png/c487b2c5-2fc5-4e59-a8bf-f8c78ddb4287/image.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460294629/original/5b88eeb96cd6da871e45",
            "text": "@joel.reis88",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/512050698/original/5bf0e6e6f264be61e885.jpg",
            "text": "@mamogolo",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                },
                {
                    "name":"Nike One",
                    "type":"Women''s Mid-Rise Leggings (Plus Size)",
                    "image":"https://static.pxlecdn.com/products/43622162/primary/thumb/172f93dfe16852ea030642d4643988c2.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/546016134/original/6747f264e2bb14b7a1fb.jpg",
            "text": "@chetalinarula",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/552108247/original/c303f7c79babacf32ff0.jpg",
            "text": "@macmanila13",
            "Items": [
                {
                    "name":"Nike Air Force 1 ''07",
                    "type":"Men''s Shoes",
                    "image":"https://static.pxlecdn.com/products/43618886/primary/thumb/9d174c3d24ec410be185f671ca1a7a43.png"
                }
            ]
        }'::JSONB
    ],
    -- Complete The Look
    ARRAY[
        '{
        "image": "https://i.postimg.cc/zf4h7JZ2/set1.png",
        "items": [
            {
            "name": "Nike Sportswear Club Fleece",
            "img": "https://i.postimg.cc/L5p1dNsz/1.webp",
            "type": "Men''s Full-Zip Hoodie",
            "colors": "10 Colors",
            "price": "$70"
            },
            {
            "name": "Nike Ready",
            "img": "https://i.postimg.cc/KY1Lt1Vg/2.webp",
            "type": "Men''s Dri-FIT Fitness Tank",
            "colors": "3 Colors",
            "price": "$35"
            },
            {
            "name": "Nike Club",
            "img": "https://i.postimg.cc/kg1KVQjm/3.webp",
            "type": "Men''s Woven Washed Flow Shorts",
            "colors": "1 Color",
            "price": "$45.97"
            },
            {
            "name": "Nike Show X Rush",
            "img": "https://i.postimg.cc/gJRZBfGz/4.webp",
            "type": "Sunglasses",
            "colors": "3 Colors",
            "price": "$30"
            }
        ]
        }'::JSONB,
        '{
            "image": "https://i.postimg.cc/NFqP3qTp/set2.png",
            "items": [
                {
                "name": "Nike Sportswear Tech Fleece Men''s Crew",
                "img": "https://i.postimg.cc/hGvwx0cb/1.webp",
                "type": "Crew Neck Pullover",
                "colors": "3 Colors",
                "price": "$35"
                },
                {
                "name": "Nike Rise 365 Men''s Dri-FIT Short-Sleeve Running Top",
                "img": "https://i.postimg.cc/XYQmpPSY/2.webp",
                "type": "Athletic Shirt",
                "colors": "3 Colors",
                "price": "$55"
                },
                {
                "name": "Nike Sportswear Club Fleece",
                "img": "https://i.postimg.cc/50FRKNHX/3.webp",
                "type": "Men''s Pants",
                "colors": "2 Colors",
                "price": "$22"
                },
                {
                "name": "Nike Multiplier",
                "img": "https://i.postimg.cc/8CYYbrC8/4.webp",
                "type": "Running No-Show Socks (2 Pairs)",
                "colors": "2 Colors",
                "price": "$99"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/rzXJnFqy/set3.png",
            "items": [
                {
                "name": "Nike Sportswear Tech Fleece Reimagined",
                "img": "https://i.postimg.cc/kXbYxL7X/1.webp",
                "type": "Men''s Oversized Shacket",
                "colors": "2 Colors",
                "price": "$34.97"
                },
                {
                "name": "Nike Running Energy Rise 365",
                "img": "https://i.postimg.cc/jjXFDNtH/2.webp",
                "type": "Men''s Dri-FIT Short-Sleeve Running Top",
                "colors": "7 Colors",
                "price": "$40.97"
                },
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/gjwStTRs/3.webp",
                "type": "Men''s Woven Tapered Leg Pants",
                "colors": "2 Colors",
                "price": "$69.97"
                },
                {
                "name": "Nike Elemental",
                "img": "https://i.postimg.cc/1z9W1twf/4.webp",
                "type": "Backpack (21L)",
                "colors": "3 Colors",
                "price": "$57"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/TYdFXtxR/set4.png",
            "items": [
                {
                "name": "Nike Rave Polarized Sunglasses",
                "img": "https://i.postimg.cc/L87bLR1X/3.webp",
                "type": "Athletic Sunglasses",
                "colors": "1 Color",
                "price": "$34.97"
                },
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/YSW-yxV6x/1.webp",
                "type": "Men''s Allover Print T-Shirt",
                "colors": "4 Colors",
                "price": "$55"
                },
                {
                "name": "Nike Sportswear Tech Pack Men''s Woven Utility Shorts",
                "img": "https://i.postimg.cc/9XtKSvv8/2.webp",
                "type": "Athletic Shorts",
                "colors": "2 Colors",
                "price": "$24"
                },
                {
                "name": "Nike Multiplier Crew Sock (2 Pairs)",
                "img": "https://i.postimg.cc/MpXLnXXN/4.webp",
                "type": "Athletic Socks",
                "colors": "3 Colors",
                "price": "$52"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/fTMkXS4H/set5.png",
            "items": [
                {
                "name": "Nike Sportswear Club Fleece Men''s Crew",
                "img": "https://i.postimg.cc/7LjfTBD7/1.webp",
                "type": "Crew Neck Pullover",
                "colors": "4 Colors",
                "price": "$95"
                },
                {
                "name": "Nike Sportswear Men''s T-Shirt",
                "img": "https://i.postimg.cc/HWwVV4Nc/2.webp",
                "type": "Athletic Shirt",
                "colors": "8 Colors",
                "price": "$30"
                },
                {
                "name": "Nike Life",
                "img": "https://i.postimg.cc/nLXXr88p/3.webp",
                "type": "Men''s Pleated Chino Shorts",
                "colors": "11 Colors",
                "price": "$100"
                },
                {
                "name": "Nike Swerve",
                "img": "https://i.postimg.cc/rpRpcSW-p/4.webp",
                "type": "Polarized Sunglasses",
                "colors": "2 Colors",
                "price": "$24"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/SNjRDFs8/set6.png",
            "items": [
                {
                "name": "Nike Solo Swoosh Men''s Fleece Crew",
                "img": "https://i.postimg.cc/hvtjkN1k/1.webp",
                "type": "Crew Neck Pullover",
                "colors": "10 Colors",
                "price": "$70"
                },
                {
                "name": "Nike Sportswear T-Shirt",
                "img": "https://i.postimg.cc/Jnq0dRZ3/2.webp",
                "type": "Athletic Shirt",
                "colors": "12 Colors",
                "price": "$30"
                },
                {
                "name": "Nike Solo Swoosh",
                "img": "https://i.postimg.cc/J7ptN41M/3.webp",
                "type": "Men''s Fleece Pants",
                "colors": "7 Colors",
                "price": "$60"
                },
                {
                "name": "Nike Everyday Essential Ankle Socks (3 Pairs)",
                "img": "https://i.postimg.cc/SR1skVZJ/4.webp",
                "type": "Athletic Socks",
                "colors": "2 Colors",
                "price": "$102"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/FKF0rCpx/set7.png",
            "items": [
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/FH4jqHJ8/3.webp",
                "type": "Unstructured \"Air Max 1\" Cap",
                "colors": "14 Colors",
                "price": "$45.97"
                },
                {
                "name": "Nike Solo Swoosh Men''s Fleece Crew",
                "img": "https://i.postimg.cc/FH4jqHJ8/3.webp",
                "type": "Crew Neck Pullover",
                "colors": "14 Colors",
                "price": "$45.97"
                },
                {
                "name": "Nike Solo Swoosh",
                "img": "https://i.postimg.cc/QNvgQbNX/2.webp",
                "type": "Fleece Shorts",
                "colors": "3 Colors",
                "price": "$55"
                },
                {
                "name": "Nike Everyday Plus Cushioned",
                "img": "https://i.postimg.cc/8zctw5QG/4.webp",
                "type": "Ankle Socks",
                "colors": "2 Colors",
                "price": "$22"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/Y9KG4XfV/set8.png",
            "items": [
                {
                "name": "Nike Club Unstructured Swoosh Cap",
                "img": "https://i.postimg.cc/c4sDghFr/1.webp",
                "type": "Baseball Hat",
                "colors": "3 Colors",
                "price": "$125"
                },
                {
                "name": "Nike Dri-FIT Legend",
                "img": "https://i.postimg.cc/ZYP752FG/2.webp",
                "type": "Men''s Fitness T-Shirt",
                "colors": "17 Colors",
                "price": "$35"
                },
                {
                "name": "Nike Sportswear Club",
                "img": "https://i.postimg.cc/m28mQ9nV/3.webp",
                "type": "Men''s Graphic Shorts",
                "colors": "17 Colors",
                "price": "$27.97"
                },
                {
                "name": "Nike Everyday Plus Cushioned",
                "img": "https://i.postimg.cc/8zctw5QG/4.webp",
                "type": "Ankle Socks",
                "colors": "2 Colors",
                "price": "$22"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/9Qk1khC7/set9.png",
            "items": [
                {
                "name": "Nike Sportswear Windrunner",
                "img": "https://i.postimg.cc/c4sDghFr/1.webp",
                "type": "Men''s Hooded Jacket",
                "colors": "3 Colors",
                "price": "$125"
                },
                {
                "name": "Nike Sportswear Men''s Long-Sleeve T-Shirt",
                "img": "https://i.postimg.cc/ZYP752FG/2.webp",
                "type": "Active Long Sleeve Shirt",
                "colors": "17 Colors",
                "price": "$35"
                },
                {
                "name": "Nike Sportswear Tech Fleece Men''s Joggers",
                "img": "https://i.postimg.cc/m28mQ9nV/3.webp",
                "type": "Jogger Pants",
                "colors": "17 Colors",
                "price": "$27.97"
                },
                {
                "name": "Nike Everyday Plus Cushioned",
                "img": "https://i.postimg.cc/8zctw5QG/4.webp",
                "type": "Ankle Socks",
                "colors": "2 Colors",
                "price": "$22"
                }
            ]
            }'::JSONB,
            '{
            "image": "https://i.postimg.cc/m2vtpXKr/set10.png",
            "items": [
                {
                "name": "Nike Sportswear Windrunner",
                "img": "https://i.postimg.cc/K8t467yD/1.webp",
                "type": "Men''s Athletic Button-up",
                "colors": "1 Color",
                "price": "$39.97"
                },
                {
                "name": "Big Athlete White T-Shirt",
                "img": "https://i.postimg.cc/xjFkMTRM/2.webp",
                "type": "Men''s Athletic T-Shirt",
                "colors": "6 Colors",
                "price": "$55"
                },
                {
                "name": "Cool Black Pants",
                "img": "https://i.postimg.cc/3N6dTnRn/3.webp",
                "type": "Men''s Really Cool Pants",
                "colors": "5 Colors",
                "price": "$36.97"
                },
                {
                "name": "Nike Club",
                "img": "https://i.postimg.cc/15n8HhCT/4.webp",
                "type": "Baseball Cap",
                "colors": "1 Color",
                "price": "$12"
                }
            ]
            }'::JSONB
        ],
    /* Explorer Images ///////////////////////////////////////////////////////////////////// */
    ARRAY[
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/edac202b-5742-47db-82a7-601b950abcfb/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/e1b5af2b-2bf2-44ff-b696-11b49e4547e0/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/db7fba46-21e9-4167-a4e1-37d828a03a47/image.jpg'
    ],
    -- Stores where shoes are available
    ARRAY[
        'Nike Factory Store - Paramus',
        'Nike Well Collective - Battery Park',
        'Nike Unite - East New York',
        'Nike Factory Store - Newark'
    ],
    -- Benefits for products in the modal and explore section
    ARRAY[
        'Smoother than backboard glass and featuring a slight sheen, the stitched leather overlays add heritage style, durability and support.',
        'Originally designed for performance hoops, the Nike Air cushioning adds lightweight, all-day comfort.',
        'The low-cut silhouette adds a clean, streamlined look.',
        'Padded, low-cut collar feels soft and comfortable.'
    ],
    -- Details for product modal
    ARRAY[
        'Foam midsole',
        'Perforations on toe'
    ],
    -- Origin for shoe
    'Debuting in 1982, the AF1 was the first basketball shoe to house Nike Air, revolutionizing the game while rapidly gaining traction around the world. Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.',
         --primary_review_comments
    ARRAY[
        'Great feature.',
        'Nike Airforce Trainers',
        'Smart'
    ],
    --star_rating
    ARRAY[
        1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,
        2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,
        3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,
        4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,
        5.0
    ],
    --customer username
    ARRAY['Shido', 'Ian01', 'Nicola'],
    --review dates
    ARRAY['Jan 13, 2024', 'Jan 07, 2024', 'Jan 07, 2024'],
    --secondary review comments
    ARRAY['Good buy. ASOS has been delivering quality products', 'I bought this as a Christmas present. The quality is very good and the price was very competitive', 'Good fit. Ordered size 11. Went nice with cargos and jeans.']
);