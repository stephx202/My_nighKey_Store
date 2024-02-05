import React from 'react';
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import './Body2Carousel.css';

//import CompleteTheLookIMGs from './CompleteTheLookIMGs';


//changed PNG to png for these two but still getting errors.

import shoe1IMG1 from './CompleteTheLookIMGs/Shoe1IMG1.png';
import shoe1IMG2 from './CompleteTheLookIMGs/Shoe1IMG2.png';
import shoe1IMG3 from './CompleteTheLookIMGs/Shoe1IMG3.png';
import shoe1IMG4 from './CompleteTheLookIMGs/Shoe1IMG4.png';
import shoe1IMG5 from './CompleteTheLookIMGs/Shoe1IMG5.png';
import shoe1IMG6 from './CompleteTheLookIMGs/Shoe1IMG6.png';
import shoe1IMG7 from './CompleteTheLookIMGs/Shoe1IMG7.png';
import shoe1IMG8 from './CompleteTheLookIMGs/Shoe1IMG8.png';
import shoe1IMG9 from './CompleteTheLookIMGs/Shoe1IMG9.png';
import shoe1IMG10 from './CompleteTheLookIMGs/Shoe1IMG10.png';


const CustomArrow = ({ className, onClick }) => (
    <div className={className} onClick={onClick}>
    </div>
);


const Body2Carousel = () => {
    const images = [
        shoe1IMG1, shoe1IMG2, shoe1IMG3, shoe1IMG4, shoe1IMG5,
        shoe1IMG6, shoe1IMG7, shoe1IMG8, shoe1IMG9, shoe1IMG10,
      ];
      

  const settings = {
    dots: false,
    infinite: false,
    speed: 500,
    slidesToShow: 3,
    slidesToScroll: 1,
    prevArrow: <CustomArrow className="slick-prev" />,
    nextArrow: <CustomArrow className="slick-next" />,
  };

  return (
    <div className="Body2Carousel">
      <Slider {...settings}>
        {images.map((image, index) => (
          <div key={index} className="Body2IMGs">
            <img src={image} alt={`Shoe ${index + 1}`} />
          </div>
        ))}
            {/* <img src={shoe1IMG1} alt="Shoe 1" />
            <img src={shoe1IMG2} alt="Shoe 1" />
            <img src={shoe1IMG3} alt="Shoe 1" />
            <img src={shoe1IMG4} alt="Shoe 1" />
            <img src={shoe1IMG5} alt="Shoe 1" />
            <img src={shoe1IMG6} alt="Shoe 1" />
            <img src={shoe1IMG7} alt="Shoe 1" />
            <img src={shoe1IMG8} alt="Shoe 1" />
            <img src={shoe1IMG9} alt="Shoe 1" />
            <img src={shoe1IMG10} alt="Shoe 1" /> */}
      </Slider>

    </div>
 
  );
};

export default Body2Carousel;