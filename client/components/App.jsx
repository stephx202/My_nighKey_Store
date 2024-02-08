import React, { useEffect, useState } from "react";

import Header from "./Header.jsx";
import Main from "./Main.jsx";
import Explorer from "./Explorer/Explorer.jsx";
import Body1Carousel from "./Carousels/Body1Carousel.jsx";
import Body2Carousel from "./Carousels/Body2Carousel.jsx";
import Body3Carousel from "./Carousels/Body3Carousel.jsx";



import Footer from "./Footer/Footer.jsx";

const App = () => {
  
  const [shoe, setShoe] = useState({});
  const [allShoes, setAllShoes] = useState([])
  const [currentShoe, setCurrentShoe] = useState(1)

  useEffect(() => {
    fetch('/api/shoedata')
      .then((res) => res.json())
      .then((shoes) => {
        setAllShoes(shoes)
      });
  }, []);

  useEffect(() => {
    fetch(`/api/shoedata/${currentShoe}`)
      .then((res) => res.json())
      .then((shoes) => {
        setShoe(shoes)
        console.log("something", shoes.howotherscarousel)
      });
  }, [currentShoe]);
  ////////////////////////////////////////////////////////////////////////


  function selectShoe(response){
    setCurrentShoe(response)
  }


  return (
    <>
      <Header />
      <Main shoe={shoe} allShoes={allShoes} selectShoe={selectShoe} currentShoe={currentShoe}/>
      <Body1Carousel howotherscarousel={shoe.howotherscarousel}/>
      <Body2Carousel shoe={shoe}/>
      {shoe.explorationimg ? <Explorer shoe={shoe} /> : <></>}
      <Body3Carousel/>
      <Footer />
    </>
  );
};

export default App;
