import PaymentDiv from "./BigButtons";
import ProductDetails from "./ProductDetails"

const PurchaseInfo = (props) => {

    
    return (
        <div id="purchaseInfo" >
        
            <PaymentDiv />
            <ProductDetails shoe={props.shoe} />
        </div>
    )
}

export default PurchaseInfo;