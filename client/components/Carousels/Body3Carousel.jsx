import React from 'react';
import './Body3Carousel.css';


const Body3Carousel = () => {
    const settings = {
        dots: false,
        infinite: false,
        speed: 500,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: false,
        // autoplaySpeed: 2000
    };

    function clickRight() {
        let container = document.querySelector('#Body3Carousel');
        container.scrollTo({
            left:container.scrollLeft + 615,
            top: 0,
            behavior: "smooth"
        });
    }

    function clickLeft() {
        let container = document.querySelector('#Body3Carousel');
        container.scrollTo({
            left:container.scrollLeft - 615,
            top: 0,
            behavior: "smooth"
        });
    }

    return (
    <><h2 id="body3Heading">You Might Also Like</h2>
    <button className="right" onClick={clickRight}>
    <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24" role="img"  height="28px" fill="none"><path stroke="currentColor" strokeWidth="1.5" d="M8.474 18.966L15.44 12 8.474 5.033"></path></svg>
    </button>
            <button className="left" onClick={clickLeft}>
            <svg aria-hidden="true" focusable="false" viewBox="0 0 24 24" role="img"  height="28px" fill="none"><path stroke="currentColor" strokeWidth="1.5" d="M15.525 18.966L8.558 12l6.967-6.967"></path></svg>
            </button>
	
       
        <div id="Body3Carousel" className='horizontal-scroll'>
            
            <div className='carouselContainer'>
            
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a3e7dead-1ad2-4c40-996d-93ebc9df0fca/dunk-low-retro-mens-shoes-87q0hf.png" />
                    <h2 className="shoeName">Nike Dunk Low Retro</h2>
           loading="lazy"          <h3 className="smallerText">Men's Shoes</h3>
                    <h2 className="shoeName">$115.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5ada941d-7a61-4657-ae73-e9c82e65ebf3/dunk-low-big-kids-shoes-l6Jxh2.png"/>
                    <h2 className="shoeName">Nike Dunk Low</h2>
                    <h3 className="smallerText">Big Kid's Shoes</h3>
                    <h2 className="shoeName">$90.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e1dc8e72-9ce2-4f4f-9595-e4764ef0da3c/dunk-low-retro-mens-shoes-1xlGBR.png"/>
                    <h2 className="shoeName">Nike Dunk Low Retro</h2>
                    <h3 className="smallerText">Men's Shoes</h3>
                    <h2 className="shoeName">$115.00</h2>
                </div>
                
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/12218601-6303-49ca-8611-180dc1115e46/air-vapormax-plus-mens-shoes-nC0dzF.png"/>
                    <h2 className="shoeName">Nike Air VaporMax Plus</h2>
                    <h3 className="smallerText">Men's Shoes</h3>
                    <h2 className="shoeName">$210.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6caeb52d-1230-4168-8816-0f702048cb5b/dunk-low-se-big-kids-shoes-z9BDQ2.png"/>
                    <h2 className="shoeName">Nike Dunk Low SE</h2>
                    <h3 className="smallerText">Big Kid's Shoes</h3>
                    <h2 className="shoeName">$95.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0131c14e-bfcd-4631-bc9b-610825ae2af0/air-force-1-07-easyon-womens-shoes-q2Nz01.png"/>
                    <h2 className="shoeName">Nike Air Force 1 '07 EasyOn</h2>
                    <h3 className="smallerText">Women's Shoes</h3>
                    <h2 className="shoeName">$97.97</h2>
                    <h2 id="crossedOffText">$115.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fd17b420-b388-4c8a-aaaa-e0a98ddf175f/dunk-high-retro-mens-shoe-dTVTCk.png"/>
                    <h2 className="shoeName">Nike Dunk High Retro</h2>
                    <h3 className="smallerText">Men's Shoe</h3>
                    <h2 className="shoeName">$130.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c09cf8bc-4d6c-4564-86d6-cc172deab92e/dunk-low-womens-shoes-ppQwKZ.png"/>
                    <h2 className="shoeName">Nike Dunk Low</h2>
                    <h3 className="smallerText">Women's Shoes</h3>
                    <h2 className="shoeName">$115.00</h2>
                </div>
                <div className="Body3IMGs">
                    <img loading="lazy" src="https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/61012d23-cbb9-42d6-871d-bc634201f0aa/air-jordan-1-mid-mens-shoes-tXSJ73.png"/>
                    <h2 className="shoeName">Air Jordan 1 Mid</h2>
                    <h3 className="smallerText">Men's Shoes</h3>
                    <h2 className="shoeName">$125.00</h2>
                </div>
                </div>
            
        </div></>
    );
}

export default Body3Carousel;