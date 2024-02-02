import React from 'react';
import Slider from "react-slick";
import "slick-carousel/slick/slick.css"; 
import "slick-carousel/slick/slick-theme.css";
import './CarouselBanner.css';



const CustomArrow = ({ className, onClick }) => (
    <div className={className} onClick={onClick}>
      Arrow
    </div>
);


const CarouselBanner = (props) => {
    var settings = {
        dots: false,
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1,
        initialSlide: 1 ,
        autoplay: true,
        autoplaySpeed: 3000,
        prevArrow: <CustomArrow className="slick-prev" />,
        nextArrow: <CustomArrow className="slick-next" />,
        responsive: [
          {
            breakpoint: 1024,
            settings: {
              slidesToShow: 1,
            }
          },
          {
            breakpoint: 600,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
              initialSlide: 2,
            }
          },
        ]
    };
    return (
        <div>
        <Slider {...settings}>
          <div className="bannerCard">
            <div className="bannerTextContainer">
                <h3 className="bannerText">SAVE UP TO 40%</h3>
                <h3 className="bannerSmallText">Shop All Our New Markdowns</h3>
            </div>
          </div>
          <div className="bannerCard">
            <div className="bannerTextContainer">
                <h3 className="bannerText">MEMBERS: FREE SHIPPING ON ORDERS 

                $50+</h3>
                <h3 className="bannerSmallText">Sign Up</h3>
            </div>
          </div>
          <div className="bannerCard">
            <div className="bannerTextContainer">
                <h3 className="bannerText">GET YOUR GEAR FASTER</h3>
                <h3 className="bannerSmallText">Look for Store Pickup at Checkout</h3>
            </div>
          </div>
        </Slider>
      </div>
    )
}

export default CarouselBanner;