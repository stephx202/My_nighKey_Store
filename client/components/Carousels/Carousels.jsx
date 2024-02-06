import React, { useEffect, useState } from "react";
import CarouselBanner from './CarouselBanner.jsx';
import Body1Carousel from './Body1Carousel.jsx'
import Body2Carousel from "./Body2Carousel.jsx";


const Carousels = () => {
    return (
      <>
        <Body1Carousel/>
        <Body2Carousel/>
      </>
    );
  };
  
  export default Carousels;