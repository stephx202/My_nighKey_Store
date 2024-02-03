import React, { useEffect, useState } from "react";
import "./css/tos_privacy.css";
import supply_icon from "./images/supply_icon.png";

const Footer_Tos_Privacy = () => {
  return (
    <>
      <div className="tos_privacy">
        <p>Guides</p>
        <p>Terms of Sale</p>
        <p>Terms of Use</p>
        <p>Nike Privacy Policy</p>
        <p>
          {" "}
          <img src={`${supply_icon}`} alt="" />
          Your Privacy Choices
        </p>
      </div>
    </>
  );
};

export default Footer_Tos_Privacy;
