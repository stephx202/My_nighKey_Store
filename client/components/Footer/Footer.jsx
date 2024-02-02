import React, { useEffect, useState } from "react";
import "./css/footer.css";
import "./css/social_media.css";
import Footer_Hdr_Link from "./Footer_Hdr_Link";
import Footer_Help_Sublink from "./Footer_Help_Sublink";
import Footer_Company_Sublink from "./Footer_Company_Sublink";
import Footer_Promotion_Sublink from "./Footer_Promotion_Sublink";
import Footer_Social_Media from "./Footer_Social_Media";
import Footer_Location_Copyright from "./Footer_Location_Copyright";
import Footer_Tos_Privacy from "./Footer_Tos_Privacy";

const Footer = () => {
  return (
    <>
      <div id="footer">
        <div id="footer_hdr-links">
          <Footer_Hdr_Link />
        </div>
        <div id="help_sublinks">
          <Footer_Help_Sublink />
        </div>
        <div id="company_sublinks">
          <Footer_Company_Sublink />
        </div>
        <div id="promotion_sublinks">
          <Footer_Promotion_Sublink />
        </div>
        <div id="social_media">
          <Footer_Social_Media />
        </div>
      </div>
      <div id="sub_footer">
        <div id="location_copyright">
          <Footer_Location_Copyright />
        </div>
        <div id="tos_privacy">
          <Footer_Tos_Privacy />
        </div>
      </div>
    </>
  );
};

export default Footer;
