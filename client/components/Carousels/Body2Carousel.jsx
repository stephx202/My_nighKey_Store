import React, { useState } from 'react';
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import './Body2Carousel.css';

//import CompleteTheLookIMGs from './CompleteTheLookIMGs';



import shoe1IMG1 from './CompleteTheLookIMGs/Shoe1IMG1.png';
import shoe1IMG2 from './CompleteTheLookIMGs/Shoe1IMG2.png';
import shoe1IMG3 from './CompleteTheLookIMGs/Shoe1IMG3.png';
import shoe1IMG4 from './CompleteTheLookIMGs/Shoe1IMG4.png';
import shoe1IMG5 from './CompleteTheLookIMGs/Shoe1IMG5.png';
import shoe1IMG6 from './CompleteTheLookIMGs/Shoe1IMG6.png';
import shoe1IMG7 from './CompleteTheLookIMGs/Shoe1IMG7.png';
import shoe1IMG8 from './CompleteTheLookIMGs/Shoe1IMG8.png';
import shoe1IMG9 from './CompleteTheLookIMGs/Shoe1IMG9.png';
import shoe1IMG10 from './CompleteTheLookIMGs/Shoe1IMG10.png';


// const CustomArrow = ({ className, onClick }) => (
//     <div className={className} onClick={onClick}>
//     </div>
// );


const Body2Carousel = ({shoe}) => {
    //add if statements to depend on what shoes choosen. create 4 diffrent arrays.
  const [theLook, setTheLook] = useState(null);
  
  const images = [
    shoe1IMG1, shoe1IMG2, shoe1IMG3, shoe1IMG4, shoe1IMG5,
    shoe1IMG6, shoe1IMG7, shoe1IMG8, shoe1IMG9, shoe1IMG10,
  ];

  const looks = [
    {
      image: shoe1IMG1,
      items: [
        {
          name: 'Nike Men\'s Therma-FIT Fitness Crew',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/918f8b7b-b73c-4617-93ae-9b35b4e0bb77/image?bgc=f1f1f1',
          type: 'Crew Neck Pullover',
          colors: '9 Colors',
          price: '$60'
        },
        {
          name: 'Nike Men\'s Dri-FIT Fitness T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/15c85a1d-fe9a-48c1-a841-b3ce5b293ee9/image?bgc=f1f1f1',
          type: 'Athletic Shirt',
          colors: '3 Colors',
          price: '$35'
        },
        {
          name: 'Nike Solo Swoosh',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/9f5afea7-d314-4a80-9c6b-274a27bbc259/image?bgc=f1f1f1',
          type: 'Men\'s French Terry Shorts',
          colors: '1 Color',
          price: '$45.97'
        },
        {
          name: 'Nike Apex Futura Washed Bucket Hat',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/f4b276bc-204a-4cf8-a678-cb54acf87bf8/image?bgc=f1f1f1',
          type: 'Bucket Hat',
          colors: '3 Colors',
          price: '$30'
        }
      ]
    },
    {
      image: shoe1IMG2,
      items: [
        {
          name: 'Nike Sportswear T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/01dd1161-6b7d-471b-9492-5d4e90c9deda/image?bgc=f1f1f1',
          type: 'Athletic Shirt',
          colors: '3 Colors',
          price: '$35'
        },
        {
          name: 'Nike Club Men\'s Mesh Flow Shorts',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/e9e22579-d56b-4be3-ab6e-9bc4fdb6960b/image?bgc=f1f1f1',
          type: 'Athletic Shorts',
          colors: '3 Colors',
          price: '$55'
        },
        {
          name: 'Nike Sportswear Everyday Essential',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/d715d25a-d3fe-4c2a-a345-af995ef1e2c4/image?bgc=f1f1f1',
          type: 'Crew Socks (3 Pairs)',
          colors: '2 Colors',
          price: '$22'
        },
        {
          name: 'Nike Essential Horizon Blue Light Glasses',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/2622c925-ca43-4422-bf3f-0370ec99413c/image?bgc=f1f1f1',
          type: 'Blue Light Glasses',
          colors: '2 Colors',
          price: '$99'
        }
      ]
    },
    {
      image: shoe1IMG3,
      items: [
        {
          name: 'Nike Sportswear Men\'s Long-Sleeve T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/5048a8ab-e814-4c17-a525-e012de395363/image?bgc=f1f1f1',
          type: 'Active Long Sleeve Shirt',
          colors: '2 Colors',
          price: '$34.97'
        },
        {
          name: 'Nike Club Men\'s Woven Washed Flow Shorts',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/9f1c4444-973e-4f0d-8187-b55b3be53e1f/image?bgc=f1f1f1',
          type: 'Athletic Shorts',
          colors: '7 Colors',
          price: '$40.97'
        },
        {
          name: 'Nike Chance Blue Light Glasses',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/07887c63-2f49-4ef9-ab3a-b3ab8e944c8e/image?bgc=f1f1f1',
          type: 'Other Glasses',
          colors: '2 Colors',
          price: '$69.97'
        },
        {
          name: 'Nike Hayward',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/c9cab5ae-6d77-49d9-ae99-7eac4f699449/image?bgc=f1f1f1',
          type: 'Backpack (26L)',
          colors: '3 Colors',
          price: '$57'
        }
      ]
    },
    {
      image: shoe1IMG4,
      items: [
        {
          name: 'Nike Sportswear Club Men\'s Washed-Dye T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/da86341f-333c-48c6-86d4-0b405bcbb5c3/image?bgc=f1f1f1',
          type: 'Athletic Shirt',
          colors: '1 Color',
          price: '$34.97'
        },
        {
          name: 'Nike Club Fleece',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/04ef0063-28b1-44d8-b04c-4b51c8a7c799/image?bgc=f1f1f1',
          type: 'Men\'s French Terry Flow Shorts',
          colors: '4 Colors',
          price: '$55'
        },
        {
          name: 'Nike Everyday Max Cushioned Training Ankle Socks (3 Pairs)',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/b085899b-0fc7-4dcc-ab76-349d866f1540/image?bgc=f1f1f1',
          type: 'Athletic Socks',
          colors: '2 Colors',
          price: '$24'
        },
        {
          name: 'Nike Brasilia 9.5 Training Backpack (Extra Large, 30L)',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/0332e712-954d-4302-a01e-2b3e76553817/image?bgc=f1f1f1',
          type: 'Athletic Backpack',
          colors: '3 Colors',
          price: '$52'
        }
      ]
    },
    {
      image: shoe1IMG5,
      items: [
        {
          name: 'Nike',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/530fd3aa-7f44-47d7-b285-2b1ea8c74be3/image?bgc=f1f1f1',
          type: 'Men\'s Dri-FIT Fleece Fitness Pullover',
          colors: '4 Colors',
          price: '$95'
        },
        {
          name: 'Nike Sportswear Swoosh',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/bc02425a-8f0d-4c95-af69-ec3353a628a9/image?bgc=f1f1f1',
          type: 'Men\'s T-Shirt',
          colors: '8 Colors',
          price: '$30'
        },
        {
          name: 'Nike Solo Swoosh Men\'s Fleece Pants',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/52be6f16-f0d0-4b1a-831d-a972c8a2af79/image?bgc=f1f1f1',
          type: 'Athletic Pants',
          colors: '11 Colors',
          price: '$100'
        },
        {
          name: 'Nike Everyday Max Cushioned Training No-Show Socks (3 Pairs)',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/dab3628c-9af7-4711-b19c-8a5ba27315d9/image?bgc=f1f1f1',
          type: 'Athletic Socks',
          colors: '2 Colors',
          price: '$24'
        }
      ]
    },
    {
      image: shoe1IMG6,
      items: [
        {
          name: 'Nike Sportswear Club Fleece Men\'s Full-Zip Hoodie',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/da663b1f-6481-4799-8f0a-8b251f8d351d/image?bgc=f1f1f1',
          type: 'Hoodie',
          colors: '10 Colors',
          price: '$70'
        },
        {
          name: 'Nike Sportswear JDI',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/vgrltopc3ma73gt4m6gg/image?bgc=f1f1f1',
          type: 'Men\'s T-Shirt',
          colors: '12 Colors',
          price: '$30'
        },
        {
          name: 'Nike Sportswear Club Fleece Men\'s Pants',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/cb2dva7ujnsixi00saxa/image?bgc=f1f1f1',
          type: 'Athletic Pants',
          colors: '7 Colors',
          price: '$60'
        },
        {
          name: 'Nike Sportswear RPM',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/ed7237cc-8717-4600-9e1c-5a762d0f7929/image?bgc=f1f1f1',
          type: 'Backpack (26L)',
          colors: '2 Colors',
          price: '$102'
        }
      ]
    },
    {
      image: shoe1IMG7,
      items: [
        {
          name: 'Nike Sportswear Club Fleece Men\'s Crew',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/f5dc30ee-5333-48a2-8951-88e574a5bb61/image?bgc=f1f1f1',
          type: 'Crew Neck Pullover',
          colors: '14 Colors',
          price: '$45.97'
        },
        {
          name: 'Nike Sportswear Club',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/hdxcatug6qs32urlpmyw/image?bgc=f1f1f1',
          type: 'Men\'s T-Shirt',
          colors: '17 Colors',
          price: '$25.97'
        },
        {
          name: 'Nike Sportswear Club',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/49dc07f5-b48c-4f9b-acd3-6c5da76be9e1/image?bgc=f1f1f1',
          type: 'Men\'s Cargo Shorts',
          colors: '3 Colors',
          price: '$55'
        },
        {
          name: 'Nike Elemental Premium',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/b8538f8c-161d-4450-9d1e-31ea520fb202/image?bgc=f1f1f1',
          type: 'Backpack (21L)',
          colors: '4 Colors',
          price: '$23.97'
        }
      ]
    },
    {
      image: shoe1IMG8,
      items: [
        {
          name: 'Nike Solo Swoosh',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/819ab2fd-97a4-408d-82ce-b13060cd2384/image?bgc=f1f1f1',
          type: 'Men\'s Fleece Pullover Hoodie',
          colors: '9 Colors',
          price: '$100'
        },
        {
          name: 'Nike ACG Men\'s T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/fff45434-3a12-43a5-bd59-fd79b822b36e/image?bgc=f1f1f1',
          type: 'Athletic Shirt',
          colors: '2 Colors',
          price: '$34.97'
        },
        {
          name: 'Nike Sportswear Tech Pack Men\'s Woven Utility Pants',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/069c88b3-f68c-4ab7-8440-6f52a9f60b41/image?bgc=f1f1f1',
          type: 'Athletic Pants',
          colors: '3 Colors',
          price: '$108.97'
        },
        {
          name: 'Nike Chance Blue Light Glasses',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/07887c63-2f49-4ef9-ab3a-b3ab8e944c8e/image?bgc=f1f1f1',
          type: 'Other Glasses',
          colors: '2 Colors',
          price: '$69.97'
        }
      ]
    },
    {
      image: shoe1IMG9,
      items: [
        {
          name: 'Nike ACG Therma-FIT',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/1ffcc569-642d-4986-b5c9-ebcd581f5e23/image?bgc=f1f1f1',
          type: 'Fleece Pullover Hoodie',
          colors: '2 Colors',
          price: '$125'
        },
        {
          name: 'Nike Sportswear Men\'s T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/3a5cb00e-ca2b-4942-9cbf-6e19bac245a5/image?bgc=f1f1f1',
          type: 'Athletic Shirt',
          colors: '3 Colors',
          price: '$35'
        },
        {
          name: 'Nike ACG Trail Shorts',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/e3f188c8-cc94-4b7f-a8e1-a56af04faf40/image?bgc=f1f1f1',
          type: 'Athletic Shorts',
          colors: '5 Colors',
          price: '$36.97'
        },
        {
          name: 'Nike Everyday Plus Cushioned',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/d13c0a26-336e-4536-b5d3-ab96a41d540d/image?bgc=f1f1f1',
          type: 'Ankle Socks',
          colors: '2 Colors',
          price: '$22'
        }
      ]
    },
    {
      image: shoe1IMG10,
      items: [
        {
          name: 'Nike Therma-FIT',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/956d9c49-748a-48e1-9b69-43251c2e612f/image?bgc=f1f1f1',
          type: 'Men\'s 1/4-Zip Fitness Hoodie',
          colors: '1 Color',
          price: '$39.97'
        },
        {
          name: 'Nike ACG "Lungs" Men\'s Long-Sleeve T-Shirt',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/636fe4a5-885b-4a6b-bf9b-44b296953c40/image?bgc=f1f1f1',
          type: 'Active Long Sleeve Shirt',
          colors: '6 Colors',
          price: '$55'
        },
        {
          name: 'Nike ACG',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/117fe364-f46f-45f1-86e6-d508e4c84b27/image?bgc=f1f1f1',
          type: 'Trail Shorts',
          colors: '5 Colors',
          price: '$36.97'
        },
        {
          name: 'Nike Refuel',
          img: 'https://static.nike.com/a/images/c_limit,ar_4:5,q_100,dn_idn,w_320,f_auto/1c6713af-03b0-4a7f-99b8-6600d6b86f72/image?bgc=f1f1f1',
          type: 'Water Bottle (24 oz)',
          colors: '1 Color',
          price: '$12'
        }
      ]
    },
  ]
  
  console.log(shoe.completethelook)   

  const settings = {
    dots: false,
    infinite: false,
    speed: 500,
    slidesToShow: 3,
    slidesToScroll: 1,
    // prevArrow: <CustomArrow className="slick-prev" />,
    // nextArrow: <CustomArrow className="slick-next" />,
  };

  let modalClose = (event) => {
    document.body.style.overflow = 'unset';
    setTheLook(null);
  }
  let renderModalScroll = () => {
    if (!shoe.completethelook) {
      return null
    }
    return looks[theLook].items.map((item, index) => (
      <div key={index} className='modalItems'>
        <img className="itemImage" src={looks[theLook].items[index].img}></img>
        <div className='itemDesc'>
          <p className='textBold'>{looks[theLook].items[index].name}</p>
          <p className='textNormal'>{looks[theLook].items[index].type}</p>
          <p className='textNormal'>{looks[theLook].items[index].colors}</p>
          <p className='textBold'>{looks[theLook].items[index].price}</p>
          <p className='shopText'>SHOP</p>
        </div>
      </div>
    ))
  }
  let goBack = () => {
    theLook === '0' ? setTheLook('9') : setTheLook(JSON.stringify(+theLook - 1));
  }
  let goForward = () => {
    theLook === '9' ? setTheLook('0') : setTheLook(JSON.stringify(+theLook + 1));
  }

  let clickModalHandler = (event) => {
    document.body.style.overflow = 'hidden';
    setTheLook(event.target.id);
  }

  let clickModal = () => {
    if (theLook && shoe) {
      return (
        <div id='modalDim'>
          <div id='theLookModal'>
            <div id='lookModalLeft'>
              <img id="modalImg" src={images[theLook]}></img>
              <div id='currentSet'>{(+theLook + 1)}/10</div>
              <div id='backButton' onClick={goBack}>
              <svg fill="#000000" width="23px" height="23px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M14.19 16.005l7.869 7.868-2.129 2.129-9.996-9.997L19.937 6.002l2.127 2.129z"/></svg>
              </div>
              <div id='forwardButton' onClick={goForward}>
              <svg fill="#000000" width="23px" height="23px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="M18.629 15.997l-7.083-7.081L13.462 7l8.997 8.997L13.457 25l-1.916-1.916z"/></svg>
              </div>
              <div id='cheats'></div>
            </div>
            <div id='lookModalRight'>
              <div id='closeButton' onClick={modalClose}>
                <svg fill="#000000" width="800px" height="800px" viewBox="-8 0 47 32" xmlns="http://www.w3.org/2000/svg"><path d="M7.004 23.087l7.08-7.081-7.07-7.071L8.929 7.02l7.067 7.069L23.084 7l1.912 1.913-7.089 7.093 7.075 7.077-1.912 1.913-7.074-7.073L8.917 25z"/></svg>
              </div>
              <div id='cheats2'></div>
              {renderModalScroll()}
            </div>
          </div>
        </div>
      );
    } else {
      return null;
    }
  }

  return (
    <div className="Body2Carousel">
      {clickModal()}
      <h3 id='CTLheading'>Complete the Look</h3>
      <Slider {...settings}>
        {looks.map((look, index) => (
          <div key={index} className="Body2IMGs">
            <img src={looks[index].image} alt={'Shoe 1'} />
            {/* <div className="overlay">
                <div className="hoverButton"></div>
            </div> */}
            {/* <svg className="eyeIcon" width="23px" height="23px" viewBox="-2.5 -2.5 30.00 30.00" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" strokeWidth="0"><rect x="-2.5" y="-2.5" width="30.00" height="30.00" rx="15" fill="#ffffff" strokeWidth="0"></rect></g><g id="SVGRepo_tracerCarrier" strokeLinecap="round" strokeLinejoin="round" stroke="#e32626" strokeWidth="0.15"></g><g id="SVGRepo_iconCarrier"> <path d="M12.0003 5.251C7.96932 5.183 3.80032 8 1.17932 10.885C0.904199 11.1904 0.751953 11.5869 0.751953 11.998C0.751953 12.4091 0.904199 12.8056 1.17932 13.111C3.74332 15.935 7.90032 18.817 12.0003 18.748C16.1003 18.817 20.2583 15.935 22.8243 13.111C23.0994 12.8056 23.2517 12.4091 23.2517 11.998C23.2517 11.5869 23.0994 11.1904 22.8243 10.885C20.2003 8 16.0313 5.183 12.0003 5.251Z" stroke="#000000" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path> <path d="M15.75 12C15.7498 12.7416 15.5297 13.4666 15.1175 14.0831C14.7054 14.6997 14.1196 15.1802 13.4344 15.4638C12.7491 15.7475 11.9952 15.8216 11.2678 15.6768C10.5404 15.532 9.87234 15.1748 9.348 14.6503C8.82365 14.1258 8.4666 13.4576 8.32198 12.7302C8.17737 12.0028 8.25169 11.2489 8.53555 10.5637C8.81941 9.87854 9.30005 9.29293 9.91672 8.88092C10.5334 8.46891 11.2584 8.249 12 8.249C12.4926 8.24887 12.9804 8.34581 13.4355 8.53428C13.8905 8.72275 14.304 8.99906 14.6523 9.34741C15.0006 9.69576 15.2768 10.1093 15.4651 10.5645C15.6535 11.0196 15.7503 11.5074 15.75 12Z" stroke="#000000" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"></path> </g></svg> */}
                <button id={index} className="hoverButton" onClick={clickModalHandler}>View Entire Look</button>
          </div>
        ))}
            {/* <img src={shoe1IMG1} alt="Shoe 1" />
            <img src={shoe1IMG2} alt="Shoe 1" />
            <img src={shoe1IMG3} alt="Shoe 1" />
            <img src={shoe1IMG4} alt="Shoe 1" />
            <img src={shoe1IMG5} alt="Shoe 1" />
            <img src={shoe1IMG6} alt="Shoe 1" />
            <img src={shoe1IMG7} alt="Shoe 1" />
            <img src={shoe1IMG8} alt="Shoe 1" />
            <img src={shoe1IMG9} alt="Shoe 1" />
            <img src={shoe1IMG10} alt="Shoe 1" /> */}
      </Slider>
    </div>
 
  );
};

export default Body2Carousel;