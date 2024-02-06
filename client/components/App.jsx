import React, { useEffect, useState } from "react";


import Header from './Header.jsx';
import Main from './Main.jsx';
import Explorer from "./Explorer/Explorer.jsx";
import Carousels from "./Carousels/Carousels.jsx";
import Footer from "./Footer/Footer.jsx"


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
      <Carousels/>
      <Footer />
    </>
  );
};

export default App;
