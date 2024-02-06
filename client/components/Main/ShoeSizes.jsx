export default function ShoeSizes(props){

    return (
        <>
            <div className = "purchased">
            <svg width="36px" height="36px" viewBox="-4.8 -4.8 33.60 33.60" id="Line_Color" data-name="Line Color" xmlns="http://www.w3.org/2000/svg" fill="#000000"><g id="SVGRepo_bgCarrier" strokeWidth="0"></g><g id="SVGRepo_tracerCarrier" strokeLinecap="round" strokeLinejoin="round"></g><g id="SVGRepo_iconCarrier"><path id="primary" d="M12,21c-3.9,0-7-2-7-7s5-5,5-11c3,2,4.37,4.1,5,8a5,5,0,0,0,2-3c1,1,2,4,2,6C19,17.14,17.72,21,12,21Z" style={{fill:"none", stroke:"#000000" ,strokeLinecap:"round", strokeLinejoin:"round",strokeWidth:"2px"}}></path></g></svg>
            <h4> 3,675 purchased in the last 7 days</h4>
            </div>
            <div className="shoeTitle">
                <h1>{props.shoe.name}</h1>
                <p>Men's Shoes</p>
                <p>${props.shoe.price}</p>
            </div>
            <div className="shoeSelection" >
            {props.allShoes ? <>
            {props.allShoes.map(shoe => ( 
                <div key={shoe.id} id={shoe.id} className="selected" onClick={()=>props.selectShoe(shoe.id)}>
                <img src={shoe.thumbnails[0]} />
            </div> 
            ))}</> : <></>}
            <div>
                {/* <img src={props.shoe.thumbnails[0]} /> */}
            </div>
            <div>
                {/* <img src={props.shoe.thumbnails[0]} /> */}
            </div>
            <div>
                {/* <img src={props.shoe.thumbnails[0]} /> */}
            </div>
        
            </div>
        </>
    )
}