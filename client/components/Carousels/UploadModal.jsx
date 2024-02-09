import React from 'react';
import './UploadModal.css';

const UploadModal = ({ showUploadModal, closeUploadModal }) => {
    return (
      showUploadModal && (
        <div className="UploadModal-overlay" onClick={closeUploadModal}>
          <div className="UploadModalContainer" onClick={(e) => e.stopPropagation()}>
              <div className="UploadDiv">
                  <h2>Upload Modal</h2>
                  <p>This is the upload modal content.</p>
                  <button className="UploadClose" onClick={closeUploadModal}>Close</button>
              </div>
          </div>
        </div>
      )
    );
  };
export default UploadModal;