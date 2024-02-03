import React, { useEffect, useState } from "react";
import twitter from "./images/twitter_icon.png";
import facebook from "./images/facebook_icon.png";
import youtube from "./images/youtube_icon.png";
import instagram from "./images/instagram_icon.png";
const Footer_Social_Media = () => {
  return (
    <>
      <div className="icons">
        <img src={`${twitter}`} alt="twitter" className="twitter" />
        <img src={`${facebook}`} alt="facebook" className="facebook" />
        <img src={`${youtube}`} alt="youtube" className="youtube" />
        <img src={`${instagram}`} alt="instagram" className="instagram" />
      </div>
    </>
  );
};

export default Footer_Social_Media;
