import React, {useState} from 'react';
import Slider from "react-slick";
import "slick-carousel/slick/slick.css"; 
import "slick-carousel/slick/slick-theme.css";
import './Body1Carousel.css';
import Body1IMGs from './Body1IMGs';
import Modal from './Modal.jsx';


  
  const Body1Arrows = ({ className, onClick }) => (
    <button
    className={className}
    onClick={onClick}
  >
  </button>
  );
  
  const Body1Carousel = () => {
    const [showModal, setShowModal] = useState(false);
    const [selectedImage, setSelectedImage] = useState(null);

    const openModal = (image) => {
      setSelectedImage(image);
      setShowModal(true);
    };

    const closeModal = () => {
      setShowModal(false);
      setSelectedImage(null);
    };
    
    const settings = {
      dots: false,
      infinite: false,
      speed: 500,
      slidesToShow: 4,
      slidesToScroll: 4,
      initialSlide: 0,
    //   autoplay: true,
      autoplaySpeed: 3000,
      prevArrow: <Body1Arrows className="slick-prev" />,
      nextArrow: <Body1Arrows className="slick-next" />,
      responsive: [
        {
            breakpoint: 1024,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
            }
          },
          {
            breakpoint: 768,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 2,
            }
          },
          {
            breakpoint: 480,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
            }
          },
      ]
    };
  
    return (
        <div className="Body1Carousel">
          <Slider {...settings}>
            {Body1IMGs.map((image, index) => (
              <div key={index} className="Body1IMGs" onClick={() => openModal(image.image)}>
                <div className="ImageContainer">
                  <img src={image.image} alt={image.text} />
                  <div className="Overlay">
                    <svg className="SearchIcon" viewBox="0 0 24 24"  xmlns="http://www.w3.org/2000/svg">
                        <g id="SVGRepo_bgCarrier" strokeWidth="0"></g>
                        <g id="SVGRepo_tracerCarrier" strokeLinecap="round" strokeLinejoin="round"></g>
                        <g id="SVGRepo_iconCarrier">
                          <rect width="24" height="24" fill="transparent"></rect>
                          <path fillRule="evenodd" clipRule="evenodd" d="M2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12ZM9 11.5C9 10.1193 10.1193 9 11.5 9C12.8807 9 14 10.1193 14 11.5C14 12.8807 12.8807 14 11.5 14C10.1193 14 9 12.8807 9 11.5ZM11.5 7C9.01472 7 7 9.01472 7 11.5C7 13.9853 9.01472 16 11.5 16C12.3805 16 13.202 15.7471 13.8957 15.31L15.2929 16.7071C15.6834 17.0976 16.3166 17.0976 16.7071 16.7071C17.0976 16.3166 17.0976 15.6834 16.7071 15.2929L15.31 13.8957C15.7471 13.202 16 12.3805 16 11.5C16 9.01472 13.9853 7 11.5 7Z" fill="#080808"></path>
                      </g>
                    </svg>
                  </div>
                </div>
                
                <h3>{image.text}</h3>
              </div>
            ))}
          </Slider>
          <Modal showModal={showModal} closeModal={closeModal} image={selectedImage} text="shoe info will go here based on shoe" />
        </div>
      );
  }
  
  export default Body1Carousel;