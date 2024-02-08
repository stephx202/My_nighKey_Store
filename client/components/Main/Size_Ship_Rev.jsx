import React, { useState, useEffect } from "react";
import "../../styles/size_ship_rev.css";
import downarrow from "../../../images/down_arrow.png";
import uparrow from "../../../images/up_arrow.png";
import rating from "../../../images/4.8_star_rating.png";

const Size_Ship_Rev = ({ shoe }) => {
  const [currentShipping, setShipping] = useState("normalShipping");
  const [currentStarClass, setStarClass] = useState("star");
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
  };
  const reviewChangeArrow = () => {
    console.log(currentRevArrow);
    setRevArrow((prevArrow) => (prevArrow === downarrow ? uparrow : downarrow));
    setReviewParagraphVisibility((prevVisibility) => !prevVisibility);
    console.log(currentRevArrow);
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

  const getReviewData = () => {
    // Check if all required fields have data
    if (
      !shoe.primary_review_comment ||
      !shoe.star_rating ||
      !shoe.review_date ||
      !shoe.secondary_review_comment ||
      !shoe.customer_username
    ) {
      // If any required field is missing data, return a message indicating no data found
      return (
        <div>
          <p>No review data found.</p>
        </div>
      );
    } else {
      // If all required fields have data, slice the arrays to render only a few items
      const numberOfReviewsToShow = 3; // Change this to the desired number of reviews to display
      const slicedComments = shoe.primary_review_comment.slice(
        0,
        numberOfReviewsToShow
      );

      return (
        <div className="reviewsDiv">
          {/* Render sliced review comments */}
          <img
            style={{
              width: "8.5rem",
              position: "relative",
              top: "4rem",
              left: "-1.4rem",
            }}
            src={`${rating}`}
            alt=""
          />
          <p
            style={{
              fontSize: "1rem",
              fontWeight: "400",
              position: "relative",
              right: "1.8rem",
              bottom: "-2px",
              letterSpacing: ".1px",
            }}
          >
            {`${shoe.star_rating.slice(-3, -2)} Stars`}
          </p>
          <h4
            style={{
              borderBottom: "1px solid black",
              width: "7.2rem",
              letterSpacing: ".1px",
              paddingBottom: "2px",
            }}
          >
            Write a Review
          </h4>
          {slicedComments.map((review, index) => (
            <div key={index}>
              {review.username} - {shoe.review_date[index]}
              <br />
              {review.comment}
              <br />
              <br />
            </div>
          ))}
        </div>
      );
    }
  };

  return (
    <>
      <div className="normalSizing" style={{ marginTop: "40px" }}>
        <h4>Size & Fit </h4>
        <img onClick={sizeChangeArrow} src={`${currentSizeArrow}`} alt="" />
      </div>
      <div>
        {isSizeParagraphVisible && (
          <div
            style={{
              position: "relative",
              bottom: "1.7rem",
              textWrap: "wrap",
              fontSize: "1.1rem",
              width: "100vw",
              paddingBottom: "2.5rem",
            }}
          >
            <ul>
              <li style={{ paddingBottom: "10px" }}>
                Fits large; we recommend ordering a half size<br></br>down
              </li>
              <li>
                <b>Size Guide</b>
              </li>
            </ul>
          </div>
        )}
      </div>

      <div className="normalSizing">
        <h4>Shipping & Returns</h4>

        <img onClick={shipChangeArrow} src={`${currentShipArrow}`} alt="" />
      </div>
      <div>
        {isShipParagraphVisible && (
          <div
            style={{
              width: "100vw",
              lineHeight: "2",
            }}
          >
            <p
              style={{
                textWrap: "nowrap",
                fontSize: "1.1rem",
                fontWeight: "300",
              }}
            >
              <span style={{ position: "relative", right: "6px" }}>
                Free standard shipping on orders $50+ and free 60-day
              </span>
              <br></br>
              returns for Nike Members.
              <span
                style={{ fontWeight: "600", borderBottom: "1px solid black" }}
              >
                Learn more.<br></br>
              </span>
            </p>
            <span
              style={{ fontWeight: "600", borderBottom: "1px solid black" }}
            >
              Return policy exclusions apply.
            </span>
            <br></br>
            <br></br>
            <span
              style={{ fontWeight: "600", borderBottom: "1px solid black" }}
            >
              Pick-up available at select Nike stores.
            </span>
          </div>
        )}
      </div>

      <div className="normalSizing">
        <h4>Reviews (3860)</h4>
        <br></br>
        <img className="star" src={`${rating}`} alt="" />
        <img onClick={reviewChangeArrow} src={`${currentRevArrow}`} alt="" />
      </div>
      <div>
        {currentRevArrow === uparrow ? (
          <div>
            {getReviewData()}
            <br></br>
            <br></br>
            <br></br>
          </div>
        ) : null}
      </div>
      <div className="bottom-border"></div>
    </>
  );
};

export default Size_Ship_Rev;
