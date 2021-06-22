<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../header.html"%>
<style>
html {
	font-size: 16px;
}

body{
  margin: 0;
  padding: 0;
  background: #fff;
  color: #fff;
  font-size: 12px;
  font-family: Verdana, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
}

.body{
  position: absolute;
  top: -20px;
  left: -20px;
  right: -40px;
  bottom: -40px;
  width: auto;
  height: auto;
  background-image: url(../img/back.jpg);
  background-size: cover;
  -webkit-filter: blur(5px);
  z-index: 0;
}

.grad{
  position: absolute;
  top: -20px;
  left: -20px;
  right: -40px;
  bottom: -40px;
  width: auto;
  height: auto;
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
  z-index: 1;
  opacity: 0.7;
}

.header{
  position: absolute;
  top: calc(50% - 35px);
  left: calc(50% - 255px);
  z-index: 2;
}

.header div{
  float: left;
  color: #fff;
  font-family: 'Exo', sans-serif;
  font-size: 35px;
  font-weight: 200;
}

.header div span{
  color: #4169e1 !important;
}

.login{
  position: absolute;
  top: calc(50% - 75px);
  left: calc(50% - 50px);
  height: 150px;
  width: 350px;
  padding: 10px;
  z-index: 2;
}

.login input[type=text]{
  width: 250px;
  height: 30px;
  background: transparent;
  border: 1px solid rgba(255,255,255,0.6);
  border-radius: 2px;
  color: #fff;
  font-family: 'Exo', sans-serif;
  font-size: 16px;
  font-weight: 400;
  padding: 4px;
}

.login input[type=password]{
  width: 250px;
  height: 30px;
  background: transparent;
  border: 1px solid rgba(255,255,255,0.6);
  border-radius: 2px;
  color: #fff;
  font-family: 'Exo', sans-serif;
  font-size: 16px;
  font-weight: 400;
  padding: 4px;
  margin-top: 10px;
}

.login input[type=button]{
  width: 260px;
  height: 35px;
  background: #fff;
  border: 1px solid #fff;
  cursor: pointer;
  border-radius: 2px;
  color: #a18d6c;
  font-family: 'Exo', sans-serif;
  font-size: 16px;
  font-weight: 400;
  padding: 6px;
  margin-top: 10px;
}

.login input[type=button]:hover{
  opacity: 0.8;
}

.login input[type=button]:active{
  opacity: 0.6;
}

.login input[type=text]:focus{
  outline: none;
  border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
  outline: none;
  border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=button]:focus{
  outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
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
		<img src="image/T-logo.png" class="logo">
		<div class="header-left">
			<a href="../views/login-error.jsp" class="sub" id="M">MEN'S</a> <a
				href="../views/login-error.jsp" class="sub" id="W">WOMEN'S</a> <a
				href="../views/login-error.jsp" class="sub" id="A">ACCESSORIES</a> <a
				href="../views/login-error.jsp" class="sub" id="C">COLLECTIONS</a>
		</div>
		<div class="header-right">
			<a href="../views/login-error.jsp" class="sub">SEARCH</a> <a
				href="../views/login-error.jsp" class="sub">ACCOUNT</a> <a
				href="../views/login-error.jsp" class="sub">MAP</a> <a
				href="../views/login-error.jsp" class="sub">SHOPPING BAG</a> <a
				href="../views/login-error.jsp" class="sub">LOG OUT</a>
		</div>
	</div>
</header>
<div class="body"></div>
    <div class="grad"></div>
    <div class="header">
      <div>Login<span>Form</span></div>
    </div>
    <br>
    <div class="login">
    <form action="../jp.co.aforce.act/ShopLogin.action" class="sign-up"
			method="post">
        <input type="text" placeholder="userID" name="member_no" autofocus><br>
        <input type="password" placeholder="password" name="password"><br>
        <input type="button" value="Login">
        </form>
    </div>

<%@include file="../footer.html"%>