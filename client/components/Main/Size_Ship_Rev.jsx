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
    setRevArrow((prevArrow) => (prevArrow === downarrow ? uparrow : downarrow));
    setReviewParagraphVisibility((prevVisibility) => !prevVisibility);
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
        <div
          style={{ position: "relative", bottom: "105rem", left: ".1rem" }}
          className="reviewsDiv"
        >
          {/*--------------------------------------------- Star Review Images ------------------------------------*/}
          <div>
            <img
              style={{
                scale: ".29",
                position: "relative",
                top: "102rem",
                left: "-10.3rem",
              }}
              src={`${rating}`}
              alt="1"
            />
            <img
              style={{
                scale: ".29",
                position: "relative",
                top: "84.9rem",
                left: "-10.3rem",
              }}
              src={`${rating}`}
              alt="2"
            />
            <img
              style={{
                scale: ".29",
                position: "relative",
                top: "74.2rem",
                left: "-10.2rem",
              }}
              src={`${rating}`}
              alt="3"
            />

            <p
              style={{
                position: "relative",
                top: "33.5rem",
                left: "-.2rem",
                fontSize: "1.05rem",
                fontWeight: "600",
                textWrap: "nowrap",
              }}
            >
              {shoe.primary_review_comment[0]}
            </p>
            <p
              style={{
                position: "relative",
                top: "42.8rem",
                left: "-9.5rem",
                fontSize: "1.1rem",
                fontWeight: "600",
                textWrap: "nowrap",
              }}
            >
              {shoe.primary_review_comment[1]}
            </p>
            <p
              style={{
                position: "relative",
                top: "58.2rem",
                left: "-13.2rem",
                fontSize: "1.1rem",
                fontWeight: "600",
                textWrap: "nowrap",
              }}
            >
              {shoe.primary_review_comment[2]}
            </p>

            {/* --------------------customer username-------------- */}
            <p
              style={{
                position: "relative",
                top: "35.2rem",
                left: "-16.5rem",
                opacity: ".4",
                fontSize: "1.1rem",
                fontWeight: "300",
                textWrap: "nowrap",
              }}
            >
              {shoe.customer_username[0]} - {shoe.review_date[0]}
            </p>

            <p
              style={{
                position: "relative",
                top: "46.4rem",
                left: "-39rem",
                opacity: ".4",
                fontSize: "1.1rem",
                fontWeight: "300",
                textWrap: "nowrap",
              }}
            >
              {shoe.customer_username[1]} -{" "}
              <span
                style={{
                  position: "relative",
                  top: "2rem",
                  left: "-23.3rem",
                  fontSize: "1.1rem",
                  fontWeight: "300",
                }}
              >
                - {shoe.review_date[1]}
              </span>
            </p>
            <p
              style={{
                position: "relative",
                top: "60.23rem",
                left: "-64.1rem",
                fontSize: "1.1rem",
                fontWeight: "300",
                opacity: ".4",
                textWrap: "nowrap",
              }}
            >
              {shoe.customer_username[2]} - {shoe.review_date[2]}
            </p>
            {/* -------------------------------------------Secondary Review Comments --------  */}
            <p
              style={{
                display: "flex",
                position: "relative",
                top: "35rem",
                left: "-.2rem",
                fontSize: "1.1rem",
                fontWeight: "300",
              }}
              //
            >
              {shoe.secondary_review_comment[0]}
            </p>
            <p
              style={{
                display: "flex",
                position: "relative",
                top: "44.4rem",
                left: "-.2rem",
                fontSize: "1.1rem",
                fontWeight: "300",
              }}
            >
              {shoe.secondary_review_comment[1]}
            </p>
            <p
              style={{
                display: "flex",
                position: "relative",
                top: "52rem",
                left: ".1rem",
                fontSize: "1.1rem",
                fontWeight: "300",
              }}
            >
              {shoe.secondary_review_comment[2]}
            </p>
          </div>
          {/*----------------------------------------------------- Star Image next to 4.8 Stars */}
          <div>
            <img
              style={{
                position: "relative",
                width: "9rem",
                top: "7.63rem",
                left: "-1.3rem",
              }}
              src={`${rating}`}
              alt=""
            />
            {/*---------------------------------------------- 4.8 Stars ----------------------------------------*/}
            <p
              style={{
                position: "relative",
                fontWeight: "300",
                right: "1.1rem",
                bottom: "-3.6rem",
                fontSize: "1.1rem",
              }}
            >
              {shoe.star_rating.slice(-3, -2)} Stars
            </p>
          </div>

          <h4
            style={{
              position: "relative",
              bottom: "-3.5rem",
              left: ".1rem",
              borderBottom: "1px solid black",
              width: "7.2rem",
              letterSpacing: ".1px",
              paddingBottom: "2px",
            }}
          >
            Write a Review
          </h4>
          <h4
            className="moreReviews"
            style={{
              position: "relative",
              bottom: "-41rem",
              left: ".3rem",
              borderBottom: "1px solid black",
              width: "7.2rem",
              letterSpacing: ".1px",
              paddingBottom: "2px",
            }}
          >
            More Reviews
          </h4>
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
                position: "relative",
                bottom: "1.2rem",
              }}
            >
              <span style={{ position: "relative", right: "6px" }}>
                Free standard shipping on orders $50+ and free 60-day
              </span>
              <br></br>
              returns for Nike Members.{" "}
              <span
                style={{
                  textWrap: "nowrap",
                  fontSize: "1rem",
                  fontWeight: "600",
                  textDecoration: "underline",
                }}
              >
                Learn more.
              </span>
              <br></br>
            </p>
            <span
              style={{
                fontWeight: "600",
                borderBottom: "1px solid black",
                position: "relative",
                bottom: "1.1rem",
              }}
            >
              Return policy exclusions apply.
            </span>
            <br></br>
            <br></br>
            <span
              style={{
                fontWeight: "600",
                borderBottom: "1px solid black",
                position: "relative",
                bottom: "2rem",
              }}
            >
              Pick-up available at select Nike stores.
            </span>
          </div>
        )}
      </div>

      <div
        className="normalSizing"
        style={{ position: "relative", bottom: "-1px", paddingBottom: "14px" }}
      >
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
      <div style={{ position: "relative" }} className="bottom-border"></div>
    </>
  );
};

export default Size_Ship_Rev;
