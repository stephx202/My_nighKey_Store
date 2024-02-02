import React, { useEffect, useState } from "react";
import twitter from "./images/twitter_icon.png";
import facebook from "./images/facebook_icon.png";
import youtube from "./images/youtube_icon.png";
import instagram from "./images/instagram_icon.png";
const Footer_Social_Media = () => {
  return (
    <>
      <div className = "icons">
        <img src={`${twitter}`} alt="twitter" />
        <img src={`${facebook}`} alt="facebook" />
        <img src={`${youtube}`} alt="youtube" />
        <img src={`${instagram}`} alt="instagram" />
      </div>
    </>
  );
};

export default Footer_Social_Media;
