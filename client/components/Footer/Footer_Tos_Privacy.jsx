import React, { useEffect, useState } from "react";
import "./css/tos_privacy.css";
import supply_icon from "./images/supply_icon.png";

const Footer_Tos_Privacy = () => {
  const [showGuide, setShowGuide] = useState(false);

  const openGuide = () => {
    setShowGuide(true);
  };

  const closeGuide = () => {
    setShowGuide(false);
  };

  return (
    <>
      <div className="tos_privacy">
        <p className="guidePar" onMouseEnter={openGuide}>
          Guides
        </p>
        <p className = "p1">Terms of Sale</p>
        <p className = "p2">Terms of Use</p>
        <p className = "p3">Nike Privacy Policy</p>
        <p className = "p4">
          {" "}
          <img src={`${supply_icon}`} alt="" />
          Your Privacy Choices
        </p>
      </div>
      {showGuide && (
        <div className="guideDiv" onMouseLeave={closeGuide}>
          <div className="guide-div1">
            <p>Nike Adapt</p>
            <p>Nike Air Max</p>
            <p>Nike Flyleather</p>
            <p>Nike React</p>
            <p>Space Hippie</p>
          </div>
          <div className="guide-div2">
            <p>Nike Air</p>
            <p>Nike FlyEase</p>
            <p>Nike Free</p>
            <p>Nike Vaporfly</p>
          </div>
          <div className="guide-div3">
            <p>Nike Air Force 1</p>
            <p>Nike Flyknit</p>
            <p>Nike Joyride</p>
            <p>Nike ZoomX</p>
          </div>
        </div>
      )}
    </>
  );
};

export default Footer_Tos_Privacy;
