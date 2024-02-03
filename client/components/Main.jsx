import ImageGallery from './Main/ImageGallery.jsx';
import PurchaseInfo from './Main/PurchaseInfo.jsx';
import './../styles/main.css';

const Main = (props) => {
    return (
        <div id='main'>
            <ImageGallery shoe={props.shoe}/>
            <PurchaseInfo shoe={props.shoe}/>
        </div>
    )
}

export default Main;