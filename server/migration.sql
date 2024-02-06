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
    shoeSize JSONB,
    /* For "How Others Are Wearing It" Carousel */
    howOthersCarousel JSONB[],
    /* For "Exploration" Images */
    ExplorationImg text[]
);

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
    ExplorationImg
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
    '{
        'M 5 / W 6.5': false,
        'M 5.5 / W 7': false,
        'M 6 / W 7.5': true,
        'M 6.5 / W 8': true,
        'M 7 / W 8.5': true,
        'M 7.5 / W 9': true,
        'M 8 / W 9.5': true,
        'M 8.5 / W 10': true,
        'M 9 / W 10.5': true,
        'M 9.5 / W 11': true,
        'M 10 / W 11.5': true,
        'M 10.5 / W 12': true,
        'M 11 / W 12.5': true,
        'M 11.5 / W 13': true,
        'M 12 / W 13.5': true,
        'M 12.5 / W 14': true,
        'M 13 / W 14.5': true,
        'M 14 / W 15.5': true,
        'M 15 / W 16.5': true,
        'M 16 / W 17.5': true,
        'M 17 / W 18.5': true,
        'M 18 / W 19.5': true
    }',
    /* Carousels //////////////////////////////////////////////////////////////////////////// */
    ARRAY[
        '{
            "image": "https://static.pxlecdn.com/photos/559121339/original/4f0eec324b8270cb583d.jpg",
            "text": "@anier_888"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/522355164/original/dfad24671f909b4590b4.jpg",
            "text": "@rawww.af"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/522953445/original/b5bcb2294415960fae67.jpg",
            "text": "@nastyflemme"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/514663663/original/d399fc5b1a6f958f6a7e.jpg",
            "text": "@blackthacreator"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/492122397/original/4b0c317911f240d04f8f",
            "text": "@kackey_mickey"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460293780/original/ae6c7c100f2550dae1f7",
            "text": "@trelltheplug"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/537632132/original/61d22c9a154bf6e9e2e9.jpg",
            "text": "@mailys.chv"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/460292737/original/e0e172192f29679b725b",
            "text": "@reda_fegrouch"
        }'::JSONB,
        '{
            "image": "https://static.pxlecdn.com/photos/564948243/original/95013837de9c8485486a.jpg",
            "text": "@don.y47"
        }'::JSONB
    ],
    ARRAY[
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/243a7c32-0aa7-4c0c-a238-c2b91b91d67e/pdp-replace.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/b2f8e5b8-ffe4-45e1-8b70-ed502fcf6243/pdp-replace.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/d5ff67b4-6bb1-47ec-ae67-3484c21ac5de/pdp-replace.jpg'
    ]
);