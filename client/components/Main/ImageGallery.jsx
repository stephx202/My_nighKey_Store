import { useCallback, useState } from "react";

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
    // Expanded Images
    let tempExpanded = [
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
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/89a2cdd6-992b-4224-aab3-e49681f01e00/air-force-1-07-mens-shoes-jBrhbr.png',
    ];

    // current selected image in array
    const [selected, setSelected] = useState(0);
    // stores the expanded image HTML
    const [currentExpanded, setCurrentExpanded] = useState(<><img id="selectedImg" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/fc4622c4-2769-4665-aa6e-42c974a7705e/air-force-1-07-mens-shoes-jBrhbr.png"></img></>)

    // Renders the scroll of thumbnails with hover features
    let renderScroll = () => {
        return tempSmall.map((image, index) => (
            <img
                key={index}
                id={index}
                className="tinyImg"
                onMouseOver={renderExpanded}
                onMouseEnter={() => setSelected(index)}
                src={tempSmall[index]}
                style={{ filter: selected === index ? "brightness(85%)" : "none" }}
            ></img>
        ));
    };

    // Renders expanded image, conditional so to render if it is the video as well
    let renderExpanded = (event) => {
        if (event.target.id == 1) {
            setCurrentExpanded(<>        <video id="selectedImg" loop autoPlay preload="auto">
            <source src={tempExpanded[event.target.id]} type="video/mp4" />
        </video></>)
        } else {
            setCurrentExpanded(<><img id="selectedVid" src={tempExpanded[event.target.id]}></img></>)
        }
    }
    let buttonRender = (current) => {
        if (current == 1) {
            setCurrentExpanded(<>        <video id="selectedImg" loop autoPlay preload="auto">
            <source src={tempExpanded[current]} type="video/mp4" />
        </video></>)
        } else {
            setCurrentExpanded(<><img id="selectedVid" src={tempExpanded[current]}></img></>)
        }
    }

    let clickBack = (event) => {
        if (selected === 0) {
            setSelected(10);
            buttonRender(10);
        } else {
            let current = (selected - 1)
            setSelected(current)
            buttonRender(current);
        }
    }
    let clickForward = (event) => {
        if (selected === 10) {
            setSelected(0);
            buttonRender(0);
        } else {
            let current = (selected + 1)
            setSelected(current)
            buttonRender(current);
        }
    }
    
    return (
        <div id="imageGallery">
            <div id="imageScroll">
                {renderScroll()}
            </div>
            {currentExpanded}
            <div id="buttonOverlay">
                <div id="highlyRated">
                <svg fill="#000000" width="23px" height="21px" viewBox="0 2 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M16 4.588l2.833 8.719H28l-7.416 5.387 2.832 8.719L16 22.023l-7.417 5.389 2.833-8.719L4 13.307h9.167L16 4.588z"/></svg>
                    <p className="nikeFont">Highly Rated</p>
                </div>
                <div id="buttonContainer">
                    <div id="galleryButton" onClick={clickBack}>
                    <svg fill="#000000" width="23px" height="23px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M14.19 16.005l7.869 7.868-2.129 2.129-9.996-9.997L19.937 6.002l2.127 2.129z"/></svg>
                    </div>
                    <div id="galleryButton" onClick={clickForward}>
                    <svg fill="#000000" width="23px" height="23px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M18.629 15.997l-7.083-7.081L13.462 7l8.997 8.997L13.457 25l-1.916-1.916z"/></svg>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default ImageGallery;