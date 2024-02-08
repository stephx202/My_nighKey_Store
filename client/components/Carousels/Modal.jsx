//Modal for the first body Carousel when images are clicked(after the banner carousel)

import React from 'react';
import './Modal.css';

const Modal = ({ showModal, closeModal, image, items }) => {
  
  return (
    showModal && (
      <div className="modal-overlay" onClick={closeModal}>
        <div className="modal-content" onClick={(e) => e.stopPropagation()}>
          <div className="imageDiv">
            <img className="background-image" src={image} alt="Background Image" />
            <img className="image" src={image} alt="Full Image" />
          </div>
          
          <div className="text-container">
            <ul>
                {items.map((item, index) => (
                  <li key={index}>
                    <p>Name: {item.name}</p>
                    <p>Type: {item.type}</p>
                    <img src={item.image} alt={item.name} />
                  </li>
                ))}
              </ul>
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