//Modal for the first body Carousel when images are clicked(after the banner carousel)

import React from 'react';
import './Modal.css';

const Modal = ({ showModal, closeModal, image, text }) => {
  return (
    showModal && (
      <div className="modal-overlay" onClick={closeModal}>
        <div className="modal-content" onClick={(e) => e.stopPropagation()}>
          <div className="imageDiv">
            <img className="background-image" src={image} alt="Background Image" />
            <img className="image" src={image} alt="Full Image" />
          </div>
          
          <div className="text-container">
            <p>{text}</p>
          </div>
          <button className="close-btn" onClick={closeModal}>
            Close
          </button>
        </div>
      </div>
    )
  );
};

export default Modal;