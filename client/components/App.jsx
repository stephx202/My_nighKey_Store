import React, { useEffect, useState } from "react";

import Header from './Header.jsx';
import Main from './Main.jsx';
import Carousel from './Carousels/CarouselBanner.jsx';
import Footer from './Footer.jsx';
import Explorer from "./Explorer/Explorer.jsx";

const App = () => {
  
  // Commented out, fossil from original template code ////////////////////
  // const [tasks, setTasks] = useState([]);

  // useEffect(() => {
  //   fetch("/api/tasks")
  //     .then((res) => res.json())
  //     .then((tasks) => {
  //       setTasks(tasks);
  //     });
  // }, []);
  ////////////////////////////////////////////////////////////////////////

  return (
    <>
      <Header />
      {/* <Main /> */}
      {/* <Carousel /> */}
      <Explorer />
      <Footer />
    </>
  );
};

export default App;
