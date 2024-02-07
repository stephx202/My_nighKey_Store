import React from 'react';
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import './Body2Carousel.css';

//import CompleteTheLookIMGs from './CompleteTheLookIMGs';



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


// const CustomArrow = ({ className, onClick }) => (
//     <div className={className} onClick={onClick}>
//     </div>
// );


const Body2Carousel = () => {
    //add if statements to depend on what shoes choosen. create 4 diffrent arrays.
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
    // prevArrow: <CustomArrow className="slick-prev" />,
    // nextArrow: <CustomArrow className="slick-next" />,
  };

  return (
    <div className="Body2Carousel">
    <h3 id='CTLheading'>Complete the Look</h3>
      <Slider {...settings}>
        {images.map((image, index) => (
          <div key={index} className="Body2IMGs">
            <img src={image} alt={'Shoe 1'} />
            {/* <div className="overlay">
                <div className="hoverButton"></div>
            </div> */}
            {/* <svg className="eyeIcon" width="23px" height="23px" viewBox="-2.5 -2.5 30.00 30.00" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" strokeWidth="0"><rect x="-2.5" y="-2.5" width="30.00" height="30.00" rx="15" fill="#ffffff" strokeWidth="0"></rect></g><g id="SVGRepo_tracerCarrier" strokeLinecap="round" strokeLinejoin="round" stroke="#e32626" strokeWidth="0.15"></g><g id="SVGRepo_iconCarrier"> <path d="M12.0003 5.251C7.96932 5.183 3.80032 8 1.17932 10.885C0.904199 11.1904 0.751953 11.5869 0.751953 11.998C0.751953 12.4091 0.904199 12.8056 1.17932 13.111C3.74332 15.935 7.90032 18.817 12.0003 18.748C16.1003 18.817 20.2583 15.935 22.8243 13.111C23.0994 12.8056 23.2517 12.4091 23.2517 11.998C23.2517 11.5869 23.0994 11.1904 22.8243 10.885C20.2003 8 16.0313 5.183 12.0003 5.251Z" stroke="#000000" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path> <path d="M15.75 12C15.7498 12.7416 15.5297 13.4666 15.1175 14.0831C14.7054 14.6997 14.1196 15.1802 13.4344 15.4638C12.7491 15.7475 11.9952 15.8216 11.2678 15.6768C10.5404 15.532 9.87234 15.1748 9.348 14.6503C8.82365 14.1258 8.4666 13.4576 8.32198 12.7302C8.17737 12.0028 8.25169 11.2489 8.53555 10.5637C8.81941 9.87854 9.30005 9.29293 9.91672 8.88092C10.5334 8.46891 11.2584 8.249 12 8.249C12.4926 8.24887 12.9804 8.34581 13.4355 8.53428C13.8905 8.72275 14.304 8.99906 14.6523 9.34741C15.0006 9.69576 15.2768 10.1093 15.4651 10.5645C15.6535 11.0196 15.7503 11.5074 15.75 12Z" stroke="#000000" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path> </g></svg> */}
                <button className="hoverButton">View Entire Look</button>
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