<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../header.html"%>
<style>
.heading {
	position: relative;
	margin-bottom: 2.5em;
	margin-top: 1em;
	line-height: 2em;
	text-align: center;
}
.heading>.major {
	margin-bottom: .25em;
	font-family: PTSansBold, Helvetica, Arial, sans-serif;
	font-size: 2.5em;
	font-weight: bold;
	color: #808080;
	text-shadow: 0px 2px 2px rgba(150, 150, 150, 1);
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

.container2 {
    position:absolute;
    top:100px;
    left:480px;
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #404040;
	background: #ffffff;
}
.sign-up {
	position: relative;
	margin: 50px auto;
	width: 500px;
	padding: 33px 25px 29px;
	background: white;
	border-bottom: 1px solid #c4c4c4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
.sign-up:before, .sign-up:after {
	content: '';
	position: absolute;
	bottom: 1px;
	left: 0;
	right: 0;
	height: 10px;
	background: inherit;
	border-bottom: 1px solid #d2d2d2;
	border-radius: 4px;
}
.sign-up:after {
	bottom: 3px;
	border-color: #dcdcdc;
}
.sign-up-title {
	margin: -25px -25px 25px;
	padding: 15px 25px;
	line-height: 35px;
	font-size: 26px;
	font-weight: 300;
	color: #aaa;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.75);
	background: #f7f7f7;
}
.sign-up-title:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 8px;
	background: #696969;
	border-radius: 5px 5px 0 0;
}
input {
	font-family: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
.sign-up-input {
	width: 100%;
	height: 50px;
	margin-bottom: 25px;
	padding: 0 15px 2px;
	font-size: 17px;
	background: white;
	border: 2px solid #ebebeb;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 -2px #ebebeb;
	box-shadow: inset 0 -2px #ebebeb;
}
.sign-up-input:focus {
	border-color: #62c2e4;
	outline: none;
	-webkit-box-shadow: inset 0 -2px #62c2e4;
	box-shadow: inset 0 -2px #62c2e4;
}
.lt-ie9 .sign-up-input {
	line-height: 48px;
}
.sign-up-button {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 54px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: #696969;
	border: 0;
	border-bottom: 2px solid #696969;
	border-radius: 5px;
	cursor: pointer;
	box-shadow: inset 0 -2px #c0c0c0;
}
.sign-up-button:active {
	top: 1px;
	outline: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}
:-moz-placeholder {
	color: #ccc;
	font-weight: 300;
}
::-moz-placeholder {
	color: #ccc;
	opacity: 1;
	font-weight: 300;
}
:-ms-input-placeholder {
	color: #ccc;
	font-weight: 300;
}
::-moz-focus-inner {
	border: 0;
	padding: 0;
}

h4{
  
  text-align:center;
  color:red;

}

*{
    margin: 0;
    padding: 0;
  }
  html{
    font-size: 16px;
  }
  body {
    font-family: Verdana, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
  }
  header, footer, nav, menu, article, aside, section, details, figcaption, figure{
    display: block;
  }
  ul, ol {
    list-style: none;
  }
  table {
    border-collapse: collapse;
  }
  img {
    vertical-align: bottom;
  }
  a img {
    border: none;
  }
  strong {
    font-weight: normal;
  }
  i{
    font-style: normal;
  }

  *{box-sizing:border-box;}

  body{

    background-color: #fff;
    width: 100%;

  }

  header{

    position: fixed;
    height:70px;
    width: 100%;
    background-color:rgba(255,255,255,0.7);
    color: #000;
    z-index:5;

  }

  .sub{

    padding-right:10px ;
    color: #000;

  }

  .logo{

    float: left;
    width: 90px;
    height: 65px;

  }

  .header-left{

    float: left;
    padding: 25px;

  }

  .header-right{

    float: right;
    padding: 25px;
    margin-right: 5px;

  }

  .shop-wrapper{

    position: fixed;
    right:0;
    background-color: rgb(255, 255, 255);
    z-index:12;
    width:250px;
    height:600px;
    text-align: center;
    border:solid 2px #afafaf;
    border-radius:5px;
   

  }

  .cart{
    display: none;
  }

  .total-quantity{
    
    padding: 5px 3px;
    margin:  10px 30px;
    border:solid 2px #c4c4c4;
    
  }

　.total-payment{

  }

  .sub-total{

  

  }

  .shipment{

    padding: 10px 10px;
    margin: 10px 20px;
    color: #232323;
    background: #ffffff;
    border-bottom: solid 2px #9e9e9e;

  }

  .pay{
    padding: 10px 10px;
    margin: 10px 20px;
    color: #232323;
    background: #ffffff;
    border-bottom: solid 2px #9e9e9e;
  }

  .method{
    
    margin: 10px 20px;
    color: #232323;
    background: #ffffff;
    border: solid 2px #9e9e9e;
  }

  #method{
    
    


  }

  .top-bottom{

    position:fixed;
    top:70px; 
    background-color:rgba(255,255,255,1);
    z-index:4;
    width:100%;
    height:250px;
    display: none;

}


  .header-bottom1,.header-bottom2,.header-bottom3,.header-bottom4,.header-bottom5,.header-bottom6{

    position:fixed;
    top:70px; 
    background-color:rgba(255,255,255,1);
    z-index:7;
    height:250px;
    display: none;

  }

  .header-detail{

    margin-left:120px;
    width:100%;
    float: left;

  }

  .td{

    color: #000;
    display: inline-block;
    padding:7px 0;

  }

  .detail-form{

    width:60px;

  }

  .hm-wrapper{

    position: absolute;
    left:400px;
    width:900px;
    z-index:6;

  }

  .hm-item{
   
    width:200px;
    height:110px;
    float: left;
    padding-right:30px;
    text-align:center;
    color: #000;
    
  }

  .hm{

    width:130px;
    height:130px;

  }


  .container{
  
    padding: 50px 20px;
    width: 1200px;
    margin: 0 auto;
    height: 1800px;

  }

  .top-wrapper{

    width: 1150px;
    margin: 0 auto;
    padding:50px 0;
   
  }

  .item{

    width: 270px;
    margin: 0 7px;
    float: left;
    text-align: center;
    padding-top:40px ;

  }

  .sub-title{

    font-size:20px ;
    text-align: center;
    color: #000;
    font-weight: bold;

  }

  .number{

    width: 100%;
    margin: 0 auto;
    padding-top:80px;
    text-align: center;
    font-size: 20px;
    
  }

  .numbers{

    color: #000;

  }

  .next-page{

    height: 40px ;
    padding:20px 0 80px 0;
    margin: 20px;

  }

  footer{

    height:100px;
    width: 100%;
    background-color: #fff;
    padding-top: 30px;

  }

  /*コピーライト　C　２０２１ WEAR HOUSE*/

  .footer-center{

    padding-top:100px;
    padding-right:30px ;
  
  }

  .footer-center p{

    text-align: center;
    font-size: 8px;
    
  }

  /*サインアップ*/

  .footer-left{

    float: left; 

  }

  .input{

    margin: 20px;
    padding:20px;

  }

  /*FontAwesomeを利用したリンク*/

  .footer-right{

    float: right; 

  }

  .fab{
    
    padding-top: 20px;
    padding-right:15px;
    margin: 20px;
    font-size:30px ;
    color: #000;

  }

  .footer-line{

    height:50px;
    background-color: #fff;

  }
  
  /*写真にカーソルを合わせると値段が表示される*/
  
  .price{

    font-weight:normal;
    color: #000;
    opacity:0;

  }

  .hm-price{

    font-weight:normal;
    color: #000;
    opacity:0;

  }

  img:hover{

    opacity:0.7;

  }

  .item:hover .price{

    opacity:0.9 ;
    transition:1s;

  }

  .hm-item:hover .hm-price{

    opacity:0.9 ;
    transition:1s;

  }

  /*リンク先のアンダーライン*/

  a{

    text-decoration: none;

  }

  a:hover{

    text-decoration: underline;

  }

  img{

    width: 260px;
    height:270px;

  }

.log-out {
	position: relative;
	margin: 50px auto;
	width: 500px;
	padding: 33px 25px 29px;
	background: white;
	border-bottom: 1px solid #c4c4c4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
.log-out:before, .log-out:after {
	content: '';
	position: absolute;
	bottom: 1px;
	left: 0;
	right: 0;
	height: 10px;
	background: inherit;
	border-bottom: 1px solid #d2d2d2;
	border-radius: 4px;
}
.log-out:after {
	bottom: 3px;
	border-color: #dcdcdc;
}


}</style>

<!-- form starts here -->
<div class="wrapper">
	<div class="container2">
	
		<hgroup class="heading">
			<h1 class="major">Logout </h1>
		</hgroup>
		
		<form action="../jp.co.aforce.act/ShopLogout.action" method="post" class="log-out">
    		<h1 class="sign-up-title">ログアウトしました。</h1>
    	
    	<input type=submit class="sign-up-button" value="TOP">
  		</form>
		
		
		
	</div>
</div>


<%@include file="../header.html"%>