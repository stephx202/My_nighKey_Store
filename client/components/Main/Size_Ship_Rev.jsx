import React, { useState, useEffect } from "react";
import "../../styles/size_ship_rev.css";
import downarrow from "../../../images/down_arrow.png";
import uparrow from "../../../images/up_arrow.png";
import rating from "../../../images/4.8_star_rating.png";

const Size_Ship_Rev = () => {
  const [currentShipping, setShipping] = useState("normalShipping");
  const [currentReviewing, setReviewing] = useState("normalReviewing");
  const [currentSizeArrow, setSizeArrow] = useState(downarrow);
  const [currentShipArrow, setShipArrow] = useState(downarrow);
  const [currentRevArrow, setRevArrow] = useState(downarrow);
  const [isSizeParagraphVisible, setSizeParagraphVisibility] = useState(false);
  const [isShipParagraphVisible, setShipParagraphVisibility] = useState(false);
  const [isReviewParagraphVisible, setReviewParagraphVisibility] =
    useState(false);
  const [currentSizingClass, setSizingClass] = useState("downarrow-sizing");
  const [currentShippingClass, setShippingClass] =
    useState("downarrow-shipping");
  const [currentReviewingClass, setReviewingClass] = useState(
    "downarrow-reviewing"
  );

  const sizeChangeArrow = () => {
    setSizeArrow((prevArrow) =>
      prevArrow === downarrow ? uparrow : downarrow
    );
    setSizingClass((prevClass) =>
      prevClass === "downarrow-sizing"
        ? "expanded-downarrow-sizing"
        : "downarrow-sizing"
    );

    setShipping((prevID) => {
      return prevID === "normalShipping" ? "sizeShipping" : "normalShipping";
    });

    setReviewing((prevID) => {
      return prevID === "normalReviewing" ? "sizeReviewing" : "normalReviewing";
    });

    setSizeParagraphVisibility((prevVisibility) => !prevVisibility);
  };

  const shipChangeArrow = () => {
    setShipArrow((prevArrow) =>
      prevArrow === downarrow ? uparrow : downarrow
    );
    setShipParagraphVisibility((prevVisibility) => !prevVisibility);

    setReviewing((prevID) => {
      return prevID === "normalReviewing" ? "shipReviewing" : "normalReviewing";
    });

    setShippingClass((prevClass) =>
      prevClass === "downarrow-shipping"
        ? "expanded-downarrow-shipping"
        : "downarrow-shipping"
    );
  };
  const reviewChangeArrow = () => {
    setRevArrow((prevArrow) => (prevArrow === downarrow ? uparrow : downarrow));
    setReviewParagraphVisibility((prevVisibility) => !prevVisibility);

    setReviewingClass((prevClass) =>
      prevClass === "downarrow-reviewing"
        ? "expanded-downarrow-reviewing"
        : "downarrow-reviewing"
    );
  };
  useEffect(() => {
    if (currentSizeArrow === uparrow && currentShipArrow === uparrow) {
      setReviewing("size_ship_reviewing");
    }
  }, [currentSizeArrow, currentShipArrow]);

  useEffect(() => {
    if (currentSizeArrow === uparrow && currentShipArrow === downarrow) {
      setReviewing("sizeReviewing");
    }
  }, [currentSizeArrow, currentShipArrow]);

  useEffect(() => {
    if (currentSizeArrow === downarrow && currentShipArrow === uparrow) {
      setReviewing("shipReviewing");
    }
  }, [currentSizeArrow, currentShipArrow]);

  return (
    <>
      <div id="size_ship_rev">
        <div id="normalSizing">
          <div>Size & Fit</div>
          <div>
            <img
              onClick={sizeChangeArrow}
              className={currentSizingClass}
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

        <div id={currentShipping}>
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

        <div id={currentReviewing}>
          <div>Reviews (173)</div>
          <p>
            <img className="star" src={`${rating}`} alt="star" />
          </p>
          <div>
            <img
              onClick={reviewChangeArrow}
              className={currentReviewingClass}
              src={`${currentRevArrow}`}
              alt=""
            />
            {currentRevArrow === uparrow ? (
              <div className="revPar">
                <span className="bold">Write a Review</span>
                <br></br>
                <br></br>
                <span className="bold">Awesome shoes!</span>
                <br></br>
                loretor519667877 - Jan 28, 2024 Perfectly awesome pair of shoes
                <br></br>
                <br></br>
                <span className="bold">Shoes</span>
                Leairah52cb098261ca4e868c08b70a05c0fbd4<br></br>- Jan 23, 2024
                <br></br>I like them I also want more jordan 4's on this app
                <br></br>
                and university blue.<br></br>
                <br></br>
                <span className="bold">Classic like always</span>
                <br></br>
                Michael677065232 - Jan 23, 2024<br></br>
                Nice and clean, Classic like always<br></br>
                <br></br>
                <span className="bold">More Reviews</span>
                <br></br>
                <br></br>
                <div className="bottom-border"></div>
              </div>
            ) : null}
          </div>
        </div>
      </div>
    </>
  );
};

export default Size_Ship_Rev;
