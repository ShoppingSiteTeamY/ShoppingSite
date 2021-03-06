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
  top:100px;
  left:480px;
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #404040;
	background: #ffffff;
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

*{
  margin: 0;
  padding: 0;
 }
 html{
  font-size: 16px;
 }
 body {
  font-family: Verdana, "?????????????????? ProN W3", "Hiragino Kaku Gothic ProN", "????????????", Meiryo, sans-serif;
 }
 
 *{box-sizing:border-box;}
 body{
  background-color: #fff;
  width: 100%;
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
  		<h1 class="sign-up-title">??????????????????????????????</h1>
  	<input type=submit class="sign-up-button" value="TOP">
 		</form>
	</div>
</div>
<%@include file="../header.html"%>