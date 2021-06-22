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

.container2 {
  position:absolute;
  top: 150px;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
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
 
 img {
  vertical-align: bottom;
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
 
 a{
  text-decoration: none;
 }
 
 img{
  width: 260px;
  height:270px;
 }
</style>
 <header>
  <div class="header-logo">
    <img src="../views/image/T-logo.png" class="logo">
    <div class="header-left">
     <a href="../views/login-error.jsp" class="sub" id="M">MEN'S</a>
     <a href="../views/login-error.jsp" class="sub" id="W">WOMEN'S</a>
     <a href="../views/login-error.jsp" class="sub" id="A">ACCESSORIES</a>
     <a href="../views/login-error.jsp" class="sub" id="C">COLLECTIONS</a>
    </div>
    <div class="header-right">
 <a href="../views/login-error.jsp" class="sub">SEARCH</a>
    <a href="../views/login-error.jsp" class="sub">ACCOUNT</a>
    <a href="../views/login-error.jsp" class="sub">MAP</a>
    <a href="../views/login-error.jsp" class="sub">SHOPPING BAG</a>
    <a href="../views/login-error.jsp" class="sub">LOG OUT</a>
   </div>
  </div>
 </header>
 <div class="wrapper">
	<div class="container2">
		<hgroup class="heading">
			<h1 class="major">Login Form </h1>
		</hgroup>
		<form action="../jp.co.aforce.act/ShopLogin.action" class="sign-up" method="post">
		  <h1 class="sign-up-title">Welcome to shop!</h1>
		  <h4>IDまたはパスワードが違います</h4>
		  <h4>(May You wrong ID or Password.)</h4>
		  <br>
	  	<input type="text" name="member_no" class="sign-up-input" value="${loginBean.member_no}">
	  	<input type="password" name="password" class="sign-up-input" placeholder="password">
	  	<input type="submit" value="Login" class="sign-up-button">
		</form>
	</div>
</div>
<%@include file="../header.html"%>