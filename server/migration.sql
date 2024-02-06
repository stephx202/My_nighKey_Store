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
        "M 5 / W 6.5": false,
        "M 5.5 / W 7": false,
        "M 6 / W 7.5": true,
        "M 6.5 / W 8": true,
        "M 7 / W 8.5": true,
        "M 7.5 / W 9": true,
        "M 8 / W 9.5": true,
        "M 8.5 / W 10": true,
        "M 9 / W 10.5": true,
        "M 9.5 / W 11": true,
        "M 10 / W 11.5": true,
        "M 10.5 / W 12": true,
        "M 11 / W 12.5": true,
        "M 11.5 / W 13": true,
        "M 12 / W 13.5": true,
        "M 12.5 / W 14": true,
        "M 13 / W 14.5": true,
        "M 14 / W 15.5": true,
        "M 15 / W 16.5": true,
        "M 16 / W 17.5": true,
        "M 17 / W 18.5": true,
        "M 18 / W 19.5": true
     }'::JSONB,
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
    ExplorationImg
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
    '{
        "M 4 / W 5.5": false,
        "M 4.5 / W 6": false,
        "M 5 / W 6.5": false,
        "M 5.5 / W 7": false,
        "M 6 / W 7.5": true,
        "M 6.5 / W 8": true,
        "M 7 / W 8.5": true,
        "M 7.5 / W 9": true,
        "M 8 / W 9.5": true,
        "M 8.5 / W 10": true,
        "M 9 / W 10.5": true,
        "M 9.5 / W 11": true,
        "M 10 / W 11.5": true,
        "M 10.5 / W 12": true,
        "M 11 / W 12.5": true,
        "M 11.5 / W 13": true,
        "M 12 / W 13.5": true,
        "M 12.5 / W 14": true,
        "M 13 / W 14.5": true,
        "M 14 / W 15.5": true,
        "M 15 / W 16.5": true,
        "M 16 / W 17.5": true,
        "M 17 / W 18.5": true,
        "M 18 / W 19.5": true
     }'::JSONB,
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
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/bf03cb63-a736-4557-95bd-49e9d8714a05/pdp-cw2288-001.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/b16130df-9129-4334-824e-95bc7758ae34/pdp-cw2288-001.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/ce585162-01c8-47b7-a574-fb180854e324/pdp-cw2288-001.jpg'
    ]
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
    ExplorationImg
) VALUES(
    /* Details */
    'Nike Air Force 1 ''07',
    'Men''s Shoes',
    'Black/White',
    'CT2302-002',
    'The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.',
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
    '{
        "M 6 / W 7.5": true,
        "M 6.5 / W 8": true,
        "M 7 / W 8.5": true,
        "M 7.5 / W 9": true,
        "M 8 / W 9.5": true,
        "M 8.5 / W 10": true,
        "M 9 / W 10.5": true,
        "M 9.5 / W 11": true,
        "M 10 / W 11.5": true,
        "M 10.5 / W 12": true,
        "M 11 / W 12.5": true,
        "M 11.5 / W 13": true,
        "M 12 / W 13.5": true,
        "M 12.5 / W 14": false,
        "M 13 / W 14.5": true,
        "M 14 / W 15.5": true,
        "M 15 / W 16.5": false,
        "M 16 / W 17.5": false,
        "M 17 / W 18.5": true,
        "M 18 / W 19.5": true
     }'::JSONB,
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
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/edac202b-5742-47db-82a7-601b950abcfb/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/e1b5af2b-2bf2-44ff-b696-11b49e4547e0/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/db7fba46-21e9-4167-a4e1-37d828a03a47/image.jpg'
    ]
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
    ExplorationImg
) VALUES(
    /* Details */
    'Nike Air Force 1 ''07',
    'Men''s Shoes',
    'White/Black',
    'CT2302-100',
    'The radiance lives on in the Nike Air Force 1 ’07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.',
    115,
    172,
    /* Image Gallery //////////////////////////////////////////////////////////////////// */ 
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
    '{
        "M 6 / W 7.5": false,
        "M 6.5 / W 8": true,
        "M 7 / W 8.5": false,
        "M 7.5 / W 9": true,
        "M 8 / W 9.5": true,
        "M 8.5 / W 10": true,
        "M 9 / W 10.5": true,
        "M 9.5 / W 11": true,
        "M 10 / W 11.5": true,
        "M 10.5 / W 12": true,
        "M 11 / W 12.5": true,
        "M 11.5 / W 13": true,
        "M 12 / W 13.5": true,
        "M 12.5 / W 14": true,
        "M 13 / W 14.5": true,
        "M 14 / W 15.5": true,
        "M 15 / W 16.5": true,
        "M 16 / W 17.5": true,
        "M 17 / W 18.5": true,
        "M 18 / W 19.5": true
     }'::JSONB,
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
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/edac202b-5742-47db-82a7-601b950abcfb/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/e1b5af2b-2bf2-44ff-b696-11b49e4547e0/image.jpg',
        'https://static.nike.com/a/images/t_prod/w_1920,c_limit,f_auto,q_auto/db7fba46-21e9-4167-a4e1-37d828a03a47/image.jpg'
    ]
);