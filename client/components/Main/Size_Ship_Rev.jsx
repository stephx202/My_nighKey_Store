import React, { useState, useEffect } from "react";
import("../../styles/size_ship_rev.css");
import downarrow from "../../../images/down_arrow.png";
import uparrow from "../../../images/up_arrow.png";
import rating from "../../../images/4.8_star_rating.png";

const Size_Ship_Rev = ({ shoe }) => {
  if (
    !shoe ||
    !shoe.primary_review_comment ||
    !shoe.customer_username ||
    !shoe.review_date ||
    !shoe.secondary_review_comment ||
    !shoe.star_rating
  ) {
    // Handle case where shoe object or its properties are not provided
    return <div>No review data available</div>;
  }
  const [state, setState] = useState({
    currentShipping: "normalShipping",
    currentReviewing: "normalReviewing",
    currentSizeArrow: downarrow,
    currentShipArrow: downarrow,
    currentRevArrow: downarrow,
    isSizeParagraphVisible: false,
    isShipParagraphVisible: false,
    isReviewParagraphVisible: false,
  });

  const {
    currentSizeArrow,
    currentShipArrow,
    currentRevArrow,
    isSizeParagraphVisible,
    isShipParagraphVisible,
    isReviewParagraphVisible,
  } = state;

  const sizeChangeArrow = () => {
    setState((prevState) => ({
      ...prevState,
      currentSizeArrow:
        prevState.currentSizeArrow === downarrow ? uparrow : downarrow,
      isSizeParagraphVisible: !prevState.isSizeParagraphVisible,
    }));
  };

  const shipChangeArrow = () => {
    setState((prevState) => ({
      ...prevState,
      currentShipArrow:
        prevState.currentShipArrow === downarrow ? uparrow : downarrow,
      isShipParagraphVisible: !prevState.isShipParagraphVisible,
    }));
  };

  const reviewChangeArrow = () => {
    setState((prevState) => ({
      ...prevState,
      currentRevArrow:
        prevState.currentRevArrow === downarrow ? uparrow : downarrow,
      isReviewParagraphVisible: !prevState.isReviewParagraphVisible,
    }));
  };

  useEffect(() => {
    if (currentSizeArrow === uparrow && currentShipArrow === uparrow) {
      setState((prevState) => ({
        ...prevState,
        currentReviewing: "size_ship_reviewing",
      }));
    } else if (currentSizeArrow === uparrow && currentShipArrow === downarrow) {
      setState((prevState) => ({
        ...prevState,
        currentReviewing: "sizeReviewing",
      }));
    } else if (currentSizeArrow === downarrow && currentShipArrow === uparrow) {
      setState((prevState) => ({
        ...prevState,
        currentReviewing: "shipReviewing",
      }));
    }
  }, [currentSizeArrow, currentShipArrow]);

  const getReviewData = () => {
    const primaryComment = shoe.primary_review_comment;
    const customerUsername = shoe.customer_username;
    const reviewDate = shoe.review_date;
    const secondaryComment = shoe.secondary_review_comment;

    const result = customerUsername.map((data, index) => {
      const correspondingDate = reviewDate[index];
      const correspondingComment = primaryComment[index];
      const correspondingSecondComment = secondaryComment[index];
      return (
        <div key={index} id="review-data-id">
          <h3>{correspondingComment}</h3>
          <div className="review-user-date-class">
            <img src={`${rating}`} alt="" />
            <p>
              {data} - {correspondingDate}
            </p>
          </div>
          <div className="review-second-comment-class">
            {correspondingSecondComment}
          </div>
        </div>
      );
    });
    return result;
  };

  const getStarRating = () => {
    const starRating = shoe.star_rating;
    const starReview = starRating.map((data, index) => {
      return <div key={index}>{data}</div>;
    });
    return <>{starReview.slice(-3, -2)}</>;
  };

  return (
    <>
      <div className="normalSizing" style={{ marginTop: "40px" }}>
        <h4>Size & Fit </h4>
        <img onClick={sizeChangeArrow} src={`${currentSizeArrow}`} alt="" />
      </div>
      <div>
        {isSizeParagraphVisible && (
          <div>
            <ul class="list-items">
              <li class = "li-class">
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
          <div className="shipping-paragraph">
            <p>
              <span className="free">
                Free standard shipping on orders $50+ and free
              </span>
              <br></br>60-day returns for Nike Members.
              <span style={{ textWrap: "nowrap" }}>Learn more.</span>
              <br></br>
            </p>
            <span>Return policy exclusions apply.</span>
            <br></br>
            <br></br>
            <span> Pick-up available at select Nike stores.</span>
          </div>
        )}
      </div>

      <div className="normalSizing">
        <h4>Reviews (3860)</h4>
        <br></br>
        <br></br>
        <img className="star" src={`${rating}`} alt="" />
        <img onClick={reviewChangeArrow} src={`${currentRevArrow}`} alt="" />
      </div>
      <div>
        {isReviewParagraphVisible && (
          <div className="stars-ratingValue">
            <img src={`${rating}`} alt="" />
            <span className="getStarRating">{getStarRating()}</span>
            <span
              style={{ position: "relative", left: "3.7rem", bottom: "3px" }}
            >
              Stars
            </span>
            <div
              id="write-a-review"
              style={{
                borderBottom: "1px solid black",
                marginBottom: "5.5rem",
                width: "6.9rem",
                fontSize: "1rem",
                textWrap: "nowrap",
                paddingTop: "35px",
                position: "relative",
                right: "7.7rem",
                height: "26px",
              }}
            >
              Write a Review
            </div>
          </div>
        )}
      </div>

      <div>
        {isReviewParagraphVisible && <div>{getReviewData()}</div>}
        {isReviewParagraphVisible && (
          <h3
            className="more-reviews"
            style={{
              fontWeight: "600",
              fontSize: "1rem",
              borderBottom: "1px solid black",
              marginBottom: "4rem",
              width: "6.7rem",
              textWrap: "nowrap",
              position: "relative",
              right: "-.1rem",
            }}
          >
            More Reviews
          </h3>
        )}
      </div>
      <div className="bottom-border"></div>
    </>
  );
};

export default Size_Ship_Rev;
