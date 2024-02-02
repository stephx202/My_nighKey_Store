import React from 'react';
import Slider from "react-slick";
import "slick-carousel/slick/slick.css"; 
import "slick-carousel/slick/slick-theme.css";
import './Body1Carousel.css';



const images = [
    'https://static.pxlecdn.com/photos/514663663/original/d399fc5b1a6f958f6a7e.jpg',
    'Image2',
    'Image3',
    'Image4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  
  const CustomArrow = ({ className, onClick }) => (
    <div className={className} onClick={onClick}>
      Arrow
    </div>
  );
  
  const Body1Carousel = () => {
    const settings = {
      dots: false,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      slidesToScroll: 1,
      initialSlide: 1,
    //   autoplay: true,
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
            slidesToShow: 3,
            slidesToScroll: 1,
            initialSlide: 2,
          }
        },
      ]
    };
  
    return (
      <div>
        <h2>Multiple items</h2>
        <Slider {...settings}>
          {images.map((image, index) => (
            <div key={index}>
                {index === 0 ? (
              <a href={image} target="_blank" rel="noopener noreferrer">
                <img src={image} alt={`Image ${index + 1}`} />
              </a>
            ) : (
              <h3>{image}</h3>
            )}
            </div>
          ))}
        </Slider>
      </div>
    );
  }
  
  export default Body1Carousel;