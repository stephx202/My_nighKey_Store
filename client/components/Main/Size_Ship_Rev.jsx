import React, { useState, useEffect } from "react";
import "../../styles/size_ship_rev.css";
import downarrow from "../../../images/down_arrow.png";
import uparrow from "../../../images/up_arrow.png";
import rating from "../../../images/4.8_star_rating.png";

const Size_Ship_Rev = () => {
  const [currentSizeArrow, setSizeArrow] = useState(downarrow);
  const [currentShipArrow, setShipArrow] = useState(downarrow);
  const [currentRevArrow, setRevArrow] = useState(downarrow);
  const [isSizeParagraphVisible, setSizeParagraphVisibility] = useState(false);
  const [isShipParagraphVisible, setShipParagraphVisibility] = useState(false);
  const [isReviewParagraphVisible, setReviewParagraphVisibility] =
    useState(false);
  const [currentShippingClass, setShippingClass] =
    useState("downarrow-shipping");
  const [currentSizeID, setSizeID] = useState("normalSize");
  const [currentShippingID, setShippingID] = useState("normalShipping");
  const [currentReviewID, setReviewID] = useState("normalReview");

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
      <div id="size_ship_rev">
        <div id= {currentSizeID}>
          <div>Size & Fit</div>
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

        <div id={currentShippingID}>
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
          <div>
            <img
              onClick={reviewChangeArrow}
              className="downarrow-reviews"
              src={`${currentRevArrow}`}
              alt=""
            />
            {currentRevArrow === uparrow ? (
              <div className="revPar">
                <span>Write a Review</span>
                <br></br>
                <br></br>
                Awesome shoes!<br></br>
                loretor519667877 - Jan 28, 2024 Perfectly awesome pair of shoes
                <br></br>
                <br></br>
                Shoes Leairah52cb098261ca4e868c08b70a05c0fbd4<br></br>- Jan 23,
                2024<br></br>I like them I also want more jordan 4's on this app
                <br></br>
                and university blue.<br></br>
                <br></br>
                Classic like always<br></br>
                Michael677065232 - Jan 23, 2024<br></br>
                Nice and clean, Classic like always<br></br>
                <br></br>
                <span>More Reviews</span>
              </div>
            ) : null}
          </div>
        </div>
      </div>
    </>
  );
};

export default Size_Ship_Rev;
