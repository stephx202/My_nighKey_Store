import ImageGallery from "./Main/ImageGallery.jsx";
import PurchaseInfo from "./Main/PurchaseInfo.jsx";
import "./../styles/main.css";
import Det_Ship_Rev from "./Main/Det_Ship_Rev.jsx";

const Main = (props) => {

    return (
        <div id='main'>
            <ImageGallery shoe={props.shoe}/>
            <PurchaseInfo shoe={props.shoe} allShoes={props.allShoes} selectShoe={props.selectShoe} currentShoe={props.currentShoe}/>
              <Det_Ship_Rev /> {/*creates side product/shipping/review section inside main*/}
        </div>
    )
}

export default Main;
