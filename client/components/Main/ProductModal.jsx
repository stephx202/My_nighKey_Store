import "../../styles/productModal.css"

export default function ProductModal(props){
    return (
        <div className="modal">
            <div id="details">
                <button onClick={() => props.close(false)}><svg width="24px" height="24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <rect width="24" height="24" fill="white"></rect> <path d="M7 17L16.8995 7.10051" stroke="#000000" stroke-linecap="round" strokeLinejoin="round"></path> <path d="M7 7.00001L16.8995 16.8995" stroke="#000000" strokeLinecap="round" strokeLinejoin="round"></path> </g></svg></button>
                <div className="top" >
                  <img src={props.shoe.thumbnails[0]} />
                  <div className="title">
                    <h4 className="title">{props.shoe.name}</h4>  
                    <h4 className="title">$115</h4>
                  </div>
                  
                </div>
                
            </div>
        </div>
    )
}