import React, { useEffect, useState } from "react";

import Header from './Header.jsx';
import Main from './Main.jsx';
import Carousel from './Carousels/CarouselBanner.jsx';
import Footer from './Footer.jsx';
import Explorer from "./Explorer/Explorer.jsx";

const App = () => {
  
  // Commented out, fossil from original template code ////////////////////
  const [shoe, setShoe] = useState({});

  useEffect(() => {
    fetch("/api/shoedata")
      .then((res) => res.json())
      .then((shoes) => {
        setShoe(shoes)
      });
  }, []);
  ////////////////////////////////////////////////////////////////////////

  return (
    <>
      <Header />
      <Main shoe={shoe}/>
      {/* <Carousel /> */}
      {shoe.explorationimg ? <Explorer shoe ={shoe.explorationimg} /> : <></>}
      <Footer />
    </>
  );
};

export default App;
