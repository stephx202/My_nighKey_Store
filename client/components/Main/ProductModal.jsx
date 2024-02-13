import "../../styles/productModal.css"

export default function ProductModal(props){
    return (
        <div className="modal" onClick={()=> props.close(false)}>
            <div id="details" onClick={(e) => e.stopPropagation()}>
                <button onClick={() => props.close(false)}><svg width="24px" height="24px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" strokeWidth="0"></g><g id="SVGRepo_tracerCarrier" strokeLinecap="round" strokeLinejoin="round"></g><g id="SVGRepo_iconCarrier"> <rect width="24" height="24" fill="white"></rect> <path d="M7 17L16.8995 7.10051" stroke="#000000" strokeLinecap="round" strokeLinejoin="round"></path> <path d="M7 7.00001L16.8995 16.8995" stroke="#000000" strokeLinecap="round" strokeLinejoin="round"></path> </g></svg></button>
                <div className="top" >
                  <img src={props.shoe.thumbnails[0]} />
                  <div className="title">
                    <p className="title">{props.shoe.name}</p>  
                    <p className="title">${props.shoe.price}</p>
                  </div>
                </div>
                <h4 style={{paddingTop: "13px"}}>LEGENDARY STYLE REFINED.</h4>
                <div>{props.shoe.description}</div>
                <h4>Benefits</h4>
                  <ul>
                    {props.shoe.benefits.map(benefit => <li key={benefit}>{benefit}</li>)}
                  </ul>
                <h4>Product Details</h4>
                  <ul>
                   {props.shoe.details.map(detail => <li key={detail}>{detail}</li>)}
                    <ul>
                      <li>Shown: {props.shoe.color}</li>
                      <li>Style: {props.shoe.style}</li>
                    </ul>
                  </ul>
                <h4>Air Force 1 Origins</h4>
                <div>{props.shoe.origin}</div>
            </div>
        </div>
    )
}