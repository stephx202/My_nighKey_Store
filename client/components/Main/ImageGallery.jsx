import { useCallback, useEffect, useState } from "react";
import fadeTop from "./resources/fadeTop.png"
import fadeBottom from "./resources/fadeBottom.png"



const ImageGallery = ({shoe}) => {   
    // current selected image in array
    const [selected, setSelected] = useState(0);
    // stores the expanded image HTML
    const [currentExpanded, setCurrentExpanded] = useState(<><img id="selectedImg" src="https://static.nike.com/a/images/t_default/4f37fca8-6bce-43e7-ad07-f57ae3c13142/air-force-1-07-mens-shoes-jBrhbr.png"></img></>)
    
    // Renders the scroll of thumbnails with hover features
    let renderScroll = () => {
        return shoe.thumbnails.map((image, index) => (
            <img
                key={index}
                id={index}
                className="tinyImg"
                onMouseOver={renderExpanded}
                onMouseEnter={() => setSelected(index)}
                src={shoe.thumbnails[index]}
                style={{ filter: selected === index ? "brightness(85%)" : "none" }}
            ></img>
        ));  
    };
   
    // Renders expanded image, conditional so to render if it is the video as well
    let renderExpanded = (event) => {
        if (event.target.id == 1) {
            setCurrentExpanded(<><video id="selectedImg" loop autoPlay preload="auto">
            <source src={shoe.expandedimg[event.target.id]} type="video/mp4" />
        </video></>)
        } else {
            setCurrentExpanded(<><img id="selectedVid" src={shoe.expandedimg[event.target.id]}></img></>)
        }
    }
    let buttonRender = (current) => {
        if (current == 1) {
            setCurrentExpanded(<>        <video id="selectedImg" loop autoPlay preload="auto">
            <source src={shoe.expandedimg[current]} type="video/mp4" />
        </video></>)
        } else {
            setCurrentExpanded(<><img id="selectedVid" src={shoe.expandedimg[current]}></img></>)
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
    // console.log(shoe.howotherscarousel)
    if (!shoe.thumbnails) {
        return null;
    } else {
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
}

export default ImageGallery;