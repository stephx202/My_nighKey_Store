import PaymentDiv from "./BigButtons";
import ProductDetails from "./ProductDetails";
import ShoeSizes from "./ShoeSizes";
import Size_Ship_Rev from "./Size_Ship_Rev";

const PurchaseInfo = (props) => {
  return (
    <div id="purchaseInfo">
      <ShoeSizes
        shoe={props.shoe}
        allShoes={props.allShoes}
        selectShoe={props.selectShoe}
        currentShoe={props.currentShoe}
      />
      <PaymentDiv shoe={props.shoe} />
      <ProductDetails shoe={props.shoe} />
      <Size_Ship_Rev shoe={props.shoe} />
    </div>
  );
};

export default PurchaseInfo;
