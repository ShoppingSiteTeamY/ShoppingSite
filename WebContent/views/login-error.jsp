<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../header.html"%>
<style>
html {
	font-size: 16px;
}
body {
	margin: 0;
	padding: 0;
	background: #fff;
	color: #fff;
	font-size: 12px;
	font-family: Verdana, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
}
.body {
	position: absolute;
	top: 0px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(../views/image/back2.jpg);
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index: 0;
}
.grad {
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0
		, 0, 0)), color-stop(100%, rgba(0, 0, 0, 0.65)));
	/* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}
.header {
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}
.header div {
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}
.header div span {
	color: #4169e1 !important;
}
.login {
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}
.login input[type=text] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255, 255, 255, 0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}
.login input[type=password] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255, 255, 255, 0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}
.login input[type=submit] {
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #4169e1;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}
.login input[type=submit]:hover {
	opacity: 0.8;
}
.login input[type=submit]:active {
	opacity: 0.6;
}
.login input[type=text]:focus {
	outline: none;
	border: 1px solid rgba(255, 255, 255, 0.9);
}
.login input[type=password]:focus {
	outline: none;
	border: 1px solid rgba(255, 255, 255, 0.9);
}
.login input[type=submit]:focus {
	outline: none;
}
::-webkit-input-placeholder {
	color: rgba(255, 255, 255, 0.6);
}
::-moz-input-placeholder {
	color: rgba(255, 255, 255, 0.6);
}
h3{
 color:red;
}
header {
	position: fixed;
	height: 70px;
	width: 100%;
	background-color: rgba(255, 255, 255, 1);
	color: #000;
	z-index: 5;
}
.sub {
	padding-right: 10px;
	color: #000;
}
.logo {
	float: left;
	width: 90px;
	height: 65px;
}

.header-space{
  
    margin:0px 10px;
  
  }

.header-left {
	float: left;
	padding: 25px;
}
.header-right {
	float: right;
	padding: 25px;
	margin-right: 5px;
}
.flat.border {
  position: relative;
  text-align: center;
  /* 中央揃え */
  display: block;
  margin: 0 auto;
  /* 幅の指定 */
  width: 100%;
  max-width: 200px;
  box-sizing: border-box;
  padding: 2px 5px;
  /* 色の指定 */
  background: linear-gradient(135deg, #grey, #fff);
  color: #000;
  font-weight: bold;
  border-radius: 8px;
  transition: 0.3s;
  border: 2px solid #ccc;
  background: #fff;
  color: black;
}
.flat.border:hover {
  background: grey;
  color: #fff;
}
.flat.border:active, .flat.border:focus {
  top: 2px;
}
  
* {
	margin: 0;
	padding: 0;
}

html {
	font-size: 16px;
}

body {
	font-family: Verdana, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN",
		"メイリオ", Meiryo, sans-serif;
}

header, footer, nav, menu, article, aside, section, details, figcaption,
	figure {
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

i {
	font-style: normal;
}

* {
	box-sizing: border-box;
}

body {
	background-color: #fff;
	width: 100%;
}

header {
	position: fixed;
	height: 70px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.7);
	color: #000;
	z-index: 5;
}

.sub {
	padding-right: 10px;
	color: #000;
}

.logo {
	float: left;
	width: 90px;
	height: 65px;
}

.header-left {
	float: left;
	padding: 25px;
}

.header-right {
	float: right;
	padding: 25px;
	margin-right: 5px;
}

a {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
img {
	width: 260px;
	height: 270px;
}
</style>
<header>
         
        <div class="header-logo">

           <form action="../views/login-error.jsp" method="post"><input type="image" src="../views/image/T-logo.png" class="logo"></form>

           <div class="header-left" style="display:inline-flex">
            
	             <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="M" value="RECOMMEND"></form>
	             <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="W" value="RANKING"></form>
	             <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="A" value="LOW PRICE"></form>
	             <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="C"value="HIGH PRICE"></form>
                 
           </div>

           <div class="header-right" style="display:inline-flex">

　　　　　　　      <form action="../views/login-error.jsp" method="post" class="header-space" style="display:inline-flex">
					<input type="text" class="header-space" name="keyword" placeholder="Input any words!">
					<input type="submit" class="reset flat border up" value="SEARCH">
				 </form>
				 <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="map" value="MAP"></form>
	             <form action=".../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="bag" value="SHOPPING CART"></form>
	             <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="bag" value="LOG OUT"></form>
	             

           </div>

       </div>

    </header>
<div class="body"></div>
<div class="grad"></div>
<div class="header">
	<div>
		Login<span>Form</span>
	</div>
</div>
<br>
<div class="login">
	<form action="../jp.co.aforce.act/ShopLogin.action" class="sign-up"
		method="post">
		<h3>IDまたはパスワードが違います</h3>
		<h3>(May You wrong ID or Password.)</h3>
		<br> <input type="text" placeholder="userID" name="member_no" value="${loginBean.member_no}" autofocus>
		<br> <input type="password" placeholder="password" name="password"><br>
		<input type="submit" value="Login">
	</form>
</div>

<%@include file="../header.html"%>