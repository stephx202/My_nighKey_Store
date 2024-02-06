import { useState } from "react"
import ProductModal from "./ProductModal";

export default function ProductDetails(props){
    const [modal, setModal] = useState(false);

    function onDetailsClick(e){
        setModal(true)
    }

    function closeModal(response){
        setModal(false)
    }

      return (
        <>
        {modal ? <ProductModal shoe={props.shoe} close={closeModal}/> : <></>}
            <div className="details">{props.shoe.description}</div>
            <ul className="details">
                <li>Shown: {props.shoe.color}</li>
                <li>Style: {props.shoe.style}</li>
            </ul>
            <a className="details" href="#" onClick={onDetailsClick}>View Product Details</a>
        </>
    )
}