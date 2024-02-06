import PaymentDiv from "./BigButtons";
import ProductDetails from "./ProductDetails"
import ShoeSizes from "./ShoeSizes";

const PurchaseInfo = (props) => {

    
    return (
        <div id="purchaseInfo" >
            <ShoeSizes shoe={props.shoe} allShoes = {props.allShoes} selectShoe={props.selectShoe}/>
            <PaymentDiv />
            <ProductDetails shoe={props.shoe} />
        </div>
    )
}

export default PurchaseInfo;