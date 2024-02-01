const ImageGallery = (props) => {
    // temporary until image sources can be referenced from DB
    // Mini Thumbnails
    let tempSmall = [
        'https://static.nike.com/a/images/t_default/21d38052-598b-44f6-a857-123c9f72b015/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/so_2.25/d58e9afa-e042-497c-917d-d625c432b72b/air-force-1-07-mens-shoes-jBrhbr.jpg',
        'https://static.nike.com/a/images/t_default/68cb650b-834c-4a7f-9bc6-f5d152a2a09c/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/dc114f8a-7f07-4cb9-a231-e90c46d8b6c6/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/823a35ac-268c-4afe-8a5c-c5094b4e1269/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/7816bb7c-2bb9-4eac-b552-8d0573a0e9fc/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/b93fd2c1-b635-4bb9-a9a1-da33ae7e3efb/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/766c9b98-5356-4195-8e18-f3aa4baa8268/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/489c7ab1-0ee9-457d-98ff-c4115686ccaa/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/6dd19015-1d31-4126-bbd6-c25a9c996064/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/ed5de6a6-ac79-4fdd-9b3e-54fb2e96a16d/air-force-1-07-mens-shoes-jBrhbr.png',
    ];
    let tempExpanded = [
        'https://static.nike.com/a/images/t_default/21d38052-598b-44f6-a857-123c9f72b015/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/videos/so_2.25/d58e9afa-e042-497c-917d-d625c432b72b/air-force-1-07-mens-shoes-jBrhbr.jpg',
        'https://static.nike.com/a/images/t_default/68cb650b-834c-4a7f-9bc6-f5d152a2a09c/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/dc114f8a-7f07-4cb9-a231-e90c46d8b6c6/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/823a35ac-268c-4afe-8a5c-c5094b4e1269/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/7816bb7c-2bb9-4eac-b552-8d0573a0e9fc/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/b93fd2c1-b635-4bb9-a9a1-da33ae7e3efb/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/766c9b98-5356-4195-8e18-f3aa4baa8268/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/489c7ab1-0ee9-457d-98ff-c4115686ccaa/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/6dd19015-1d31-4126-bbd6-c25a9c996064/air-force-1-07-mens-shoes-jBrhbr.png',
        'https://static.nike.com/a/images/t_default/ed5de6a6-ac79-4fdd-9b3e-54fb2e96a16d/air-force-1-07-mens-shoes-jBrhbr.png',
    ];

    let renderScroll = () => {
        return tempSmall.map((image, index) => (
            <img key={index} className="tinyImg" src={tempSmall[index]}></img>
        ))
    }
    
    return (
        <div id="imageGallery">
            <div id="imageScroll">
                {renderScroll()}
            </div>
            <div id="selectedImg"></div>
        </div>
    )
}

export default ImageGallery;