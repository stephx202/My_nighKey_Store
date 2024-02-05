import React, { useState, useEffect } from "react";
import "../../styles/det_ship_rev.css";
import downarrow from "../../../images/down_arrow.png";
import uparrow from "../../../images/up_arrow.png";
import rating from "../../../images/4.8_star_rating.png";

const Det_Ship_Rev = () => {
  const [currentShipArrow, setShipArrow] = useState(downarrow);
  const [currentRevArrow, setRevArrow] = useState(downarrow);

  const shipChangeArrow = () => {
    setShipArrow((prevArrow) => (prevArrow === downarrow ? uparrow : downarrow));
  };
  const reviewChangeArrow = () => {
    setRevArrow((prevArrow) => (prevArrow === downarrow ? uparrow : downarrow));
  };
  return (
    <>
      <div id="det_ship_rev">
        <div id="details">
          <p>View Product Details</p>
        </div>
        <div id="shipping">
          <p>Shipping & Returns</p>
          <p>
            <img
              onClick={shipChangeArrow}
              className="downarrow-shipping"
              src={`${currentShipArrow}`}
              alt=""
            />
          </p>
        </div>
        <div id="reviews">
          <p>Reviews (173)</p>
          <p>
            <img className="star" src={`${rating}`} alt="star" />
          </p>
          <p>
            <img
              onClick={reviewChangeArrow}
              className="downarrow-reviews"
              src={`${currentRevArrow}`}
              alt=""
            />
          </p>
        </div>
      </div>
    </>
  );
};

export default Det_Ship_Rev;
