import { useCallback, useState } from "react";
import fadeTop from "./resources/fadeTop.png"
import fadeBottom from "./resources/fadeBottom.png"

const ImageGallery = (props) => {
    // temporary until image sources can be referenced from DB
    // Mini Thumbnails
    let tempSmall = [
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
    ];
    // Expanded Images
    let tempExpanded = [
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
                <img src={fadeTop} id="topFade"></img>
                <img src={fadeBottom} id="bottomFade"></img>
            </div>
        </div>
    )
}

export default ImageGallery;