import { useState } from "react";
import React from "react";

export default function ShoeSizes(props) {
    const [selected, setSelected] = useState("");
    console.log(props.shoe)
    return (
        <>
            <div className="purchased">
                <svg
                    width="36px"
                    height="36px"
                    viewBox="-4.8 -4.8 33.60 33.60"
                    id="Line_Color"
                    data-name="Line Color"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="#000000">
                    <g id="SVGRepo_bgCarrier" strokeWidth="0"></g>
                    <g
                        id="SVGRepo_tracerCarrier"
                        strokeLinecap="round"
                        strokeLinejoin="round"></g>
                    <g id="SVGRepo_iconCarrier">
                        <path
                            id="primary"
                            d="M12,21c-3.9,0-7-2-7-7s5-5,5-11c3,2,4.37,4.1,5,8a5,5,0,0,0,2-3c1,1,2,4,2,6C19,17.14,17.72,21,12,21Z"
                            style={{
                                fill: "none",
                                stroke: "#000000",
                                strokeLinecap: "round",
                                strokeLinejoin: "round",
                                strokeWidth: "2px",
                            }}></path>
                    </g>
                </svg>
                <h4> {props.shoe.purchased} purchased in the last 7 days</h4>
            </div>
            <div className="shoeTitle">
                <h1>{props.shoe.name}</h1>
                <p>Men's Shoes</p>
                <p>${props.shoe.price}</p>
            </div>
            <div className="shoeSelection">
                {props.allShoes ? (
                    <>
                        {props.allShoes.map((shoe) => (
                            <React.Fragment key={shoe.id}>
                                {props.currentShoe === shoe.id ? (
                                    <div
                                        id={shoe.id}
                                        style={{ border: "1px solid black" }}
                                        onClick={() =>
                                            props.selectShoe(shoe.id)
                                        }>
                                        <img
                                            src={shoe.thumbnails[0]}
                                            alt={`Shoe ${shoe.id}`}
                                        />
                                    </div>
                                ) : (
                                    <div
                                        key={`unselected-${shoe.id}`}
                                        id={shoe.id}
                                        onClick={() =>
                                            props.selectShoe(shoe.id)
                                        }>
                                        <img
                                            src={shoe.thumbnails[0]}
                                            alt={`Shoe ${shoe.id}`}
                                        />
                                    </div>
                                )}
                            </React.Fragment>
                        ))}
                    </>
                ) : (
                    <></>
                )}<div ><img src="https://static.nike.com/nike-prod-cld/images/t_PDP_144_v1/f_auto/static/en_us-DYO/DYO.png" /></div>
            </div>
            <div className="shoeSizes">
                <p>Select Size</p>
                <p style={{ color: "#707072" }}>Size Guide</p>
            </div>
            <div className="sizes">
                {props.shoe.shoesize ? (
                    <>
                        {props.shoe.shoesize.map((size) => (
                            <React.Fragment key={size.size}>
                                {size.inStock ? (
                                    <>
                                        {" "}
                                        {selected &&
                                        selected.size === size.size ? (
                                            <div
                                                className="size"
                                                style={{
                                                    border: "1px solid black",
                                                }}>
                                                {size.size}
                                            </div>
                                        ) : (
                                            <div
                                                className="size inStock"
                                                onClick={() =>
                                                    setSelected(size)
                                                }>
                                                {size.size}
                                            </div>
                                        )}{" "}
                                    </>
                                ) : (
                                    <div className="size grayedOut">
                                        {size.size}
                                    </div>
                                )}
                            </React.Fragment>
                        ))}
                    </>
                ) : (
                    <></>
                )}
            </div>
        </>
    );
}
