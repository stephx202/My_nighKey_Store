import React, { useEffect, useState } from "react";
import "./css/location_supply.css";
import location_icon from "./images/location_icon.png";

const Footer_Location_Supply = () => {
  return (
    <>
      <div className="location_supply">
        <p className="copyright">
          <img src={`${location_icon}`} alt="location-icon" />
          United States <span>&copy; 2023 Nike, Inc. All Rights Reserved</span>
        </p>
        <p>CA Supply Chains Act</p>
      </div>
    </>
  );
};

export default Footer_Location_Supply;
