import React, { useState } from 'react';
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


const Body2Carousel = ({shoe}) => {
    //add if statements to depend on what shoes choosen. create 4 diffrent arrays.
  const [theLook, setTheLook] = useState(null);
  
  const images = [
    shoe1IMG1, shoe1IMG2, shoe1IMG3, shoe1IMG4, shoe1IMG5,
    shoe1IMG6, shoe1IMG7, shoe1IMG8, shoe1IMG9, shoe1IMG10,
  ];
  
  console.log(shoe.completethelook)   

  const settings = {
    dots: false,
    infinite: false,
    speed: 500,
    slidesToShow: 3,
    slidesToScroll: 1,
    // prevArrow: <CustomArrow className="slick-prev" />,
    // nextArrow: <CustomArrow className="slick-next" />,
  };

  let modalClose = (event) => {
    document.body.style.overflow = 'unset';
    setTheLook(null);
  }
  let renderModalScroll = () => {
    if (!shoe) {
      return null
    }
    return shoe.completethelook[theLook].items.map((item, index) => (
      <div key={index} className='modalItems'>
        <img className="itemImage" src={shoe.completethelook[theLook].items[index].img}></img>
        <div className='itemDesc'>
          <p className='textBold'>{shoe.completethelook[theLook].items[index].name}</p>
          <p className='textNormal'>{shoe.completethelook[theLook].items[index].type}</p>
          <p className='textNormal'>{shoe.completethelook[theLook].items[index].colors}</p>
          <p className='textBold'>{shoe.completethelook[theLook].items[index].price}</p>
          <p className='shopText'>SHOP</p>
        </div>
      </div>
    ))
  }
  let goBack = () => {
    theLook === '0' ? setTheLook('9') : setTheLook(JSON.stringify(+theLook - 1));
  }
  let goForward = () => {
    theLook === '9' ? setTheLook('0') : setTheLook(JSON.stringify(+theLook + 1));
  }

  let clickModalHandler = (event) => {
    document.body.style.overflow = 'hidden';
    setTheLook(event.target.id);
  }

  let clickModal = () => {
    if (theLook && shoe) {
      return (
        <div id='modalDim'>
          <div id='theLookModal'>
            <div id='lookModalLeft'>
              <img id="modalImg" src={shoe.completethelook[theLook].image}></img>
              <div id='currentSet'>{(+theLook + 1)}/10</div>
              <div id='backButton' onClick={goBack}>
              <svg fill="#000000" width="23px" height="23px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M14.19 16.005l7.869 7.868-2.129 2.129-9.996-9.997L19.937 6.002l2.127 2.129z"/></svg>
              </div>
              <div id='forwardButton' onClick={goForward}>
              <svg fill="#000000" width="23px" height="23px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M18.629 15.997l-7.083-7.081L13.462 7l8.997 8.997L13.457 25l-1.916-1.916z"/></svg>
              </div>
              <div id='cheats'></div>
            </div>
            <div id='lookModalRight'>
              <div id='closeButton' onClick={modalClose}>
                <svg fill="#000000" width="800px" height="800px" viewBox="-8 0 47 32" xmlns="http://www.w3.org/2000/svg"><path d="M7.004 23.087l7.08-7.081-7.07-7.071L8.929 7.02l7.067 7.069L23.084 7l1.912 1.913-7.089 7.093 7.075 7.077-1.912 1.913-7.074-7.073L8.917 25z"/></svg>
              </div>
              <div id='cheats2'></div>
              {renderModalScroll()}
            </div>
          </div>
        </div>
      );
    } else {
      return null;
    }
  }

  if (shoe.completethelook) {
    return (
      <div className="Body2Carousel">
        {clickModal()}
        <h3 id='CTLheading'>Complete the Look</h3>
        <Slider {...settings}>
          {shoe.completethelook.map((look, index) => (
            <div key={index} className="Body2IMGs">
              <img src={look.image} alt={`Shoe ${index + 1}`} />
              <button id={index} className="hoverButton" onClick={clickModalHandler}>View Entire Look</button>
            </div>
          ))}
        </Slider>
      </div>
    );
  } else {
    return null;
  }

};

export default Body2Carousel;