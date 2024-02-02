import React, { useEffect, useState } from "react";

import Header from './Header.jsx';
import Main from './Main.jsx';
import Carousels from "./Carousels/Carousels.jsx";
import Footer from './Footer.jsx';

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
      <Main />
      <Carousels/>
      <Footer />
    </>
  );
};

export default App;
