import React, { useState, useEffect } from "react";
import "../../styles/det_ship_rev.css";
import downarrow from "../../../images/down_arrow.png";
import uparrow from "../../../images/up_arrow.png";
import rating from "../../../images/4.8_star_rating.png";
let normalReview = "reviews";
let expandedReview = "expReviews";
let expandedReview2 = "expReviews2";
let normalShipping = "shipping";
let expandedShipping = "expShipping";

const Det_Ship_Rev = () => {
  const [currentReviewID, setReviewID] = useState(normalReview);
  const [currentSizeArrow, setSizeArrow] = useState(downarrow);
  const [currentShipArrow, setShipArrow] = useState(downarrow);
  const [currentRevArrow, setRevArrow] = useState(downarrow);
  const [isSizeParagraphVisible, setSizeParagraphVisibility] = useState(false);
  const [isShipParagraphVisible, setShipParagraphVisibility] = useState(false);
  const [isReviewParagraphVisible, setReviewParagraphVisibility] =
    useState(false);
  const [currentShippingClass, setShippingClass] =
    useState("downarrow-shipping");

  const sizeChangeArrow = () => {
    setSizeArrow((prevArrow) =>
      prevArrow === downarrow ? uparrow : downarrow
    );
    setShippingClass((prevClass) =>
      prevClass === "downarrow-shipping"
        ? "expDownarrow-shipping"
        : "downarrow-shipping"
    );

    setReviewID((prevID) =>
      prevID === normalReview ? expandedReview2 : normalReview
    );

    setSizeParagraphVisibility((prevVisibility) => !prevVisibility);
  };

  const shipChangeArrow = () => {
    setShipArrow((prevArrow) =>
      prevArrow === downarrow ? uparrow : downarrow
    );
    setShipParagraphVisibility((prevVisibility) => !prevVisibility);
    setReviewID((prevID) =>
      prevID === normalReview ? expandedReview : normalReview
    );
  };
  const reviewChangeArrow = () => {
    setRevArrow((prevArrow) => (prevArrow === downarrow ? uparrow : downarrow));
    setReviewParagraphVisibility((prevVisibility) => !prevVisibility);
  };
  return (
    <>
      <div id="det_ship_rev">
        <div id="size_and_fit">
          <p>Size & Fit</p>
          <div>
            <img
              onClick={sizeChangeArrow}
              className="downarrow-size"
              src={`${currentSizeArrow}`}
              alt=""
            />
            {isSizeParagraphVisible && (
              <div className="sizePar">
                <ul>
                  <li>
                    Fits large; we recommend ordering a half size<br></br>down
                  </li>
                  <li>
                    <b>Size Guide</b>
                  </li>
                </ul>
              </div>
            )}
          </div>
        </div>

        <div id={!isSizeParagraphVisible ? normalShipping : expandedShipping}>
          <div>Shipping & Returns</div>
          <div>
            <img
              onClick={shipChangeArrow}
              className={currentShippingClass}
              src={`${currentShipArrow}`}
              alt=""
            />
            {isShipParagraphVisible && (
              <div className="shipPar">
                Free standard shipping on orders $50+ and free<br></br>
                60-day returnsfor Nike Members. <span>Learn more.</span>
                <br></br>
                <span>Return policy exclusions apply.</span>
                <br></br>
                <br></br>
                <span>Pick-up available at select Nike stores.</span>
              </div>
            )}
          </div>
        </div>

        <div id={currentReviewID}>
          <div>Reviews (173)</div>
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
