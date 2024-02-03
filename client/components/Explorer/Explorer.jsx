import '../../styles/Explorer.css'

export default function Explorer(props){


    return (
        <div className='container'>
        
            <div className="text">Explore the Nike Air Force 1 '07 Men's Shoes</div>
            <img src={props.shoe[0]} />
            <div className='text'><div>The stitched overlays on the upper add heritage style, durability and support.</div></div>
            <img src= {props.shoe[1]} />
            <div className='text'><div>Originally designed for performance hoops, the Nike Air cushioning adds lightweight, all-day comfort.</div></div>
            <img src={props.shoe[2]}/>
            <div className='text'><div>The low-cut silhouette adds a clean, streamlined look.</div></div>

        
        </div>
    )
}