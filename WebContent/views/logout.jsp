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

.about {
	margin: 70px auto 40px;
	padding: 8px;
	width: 260px;
	font: 10px/18px 'Lucida Grande', Arial, sans-serif;
	color: #666;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.25);
	background: #eee;
	background: rgba(250, 250, 250, 0.8);
	border-radius: 4px;
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.1));
	background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.1));
	background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.1));
	background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.1));
	-webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0
		1px rgba(255, 255, 255, 0.1), 0 0 6px rgba(0, 0, 0, 0.2);
	box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px
		rgba(255, 255, 255, 0.1), 0 0 6px rgba(0, 0, 0, 0.2);
}

.about a {
	color: #333;
	text-decoration: none;
	border-radius: 2px;
	-webkit-transition: background 0.1s;
	-moz-transition: background 0.1s;
	-o-transition: background 0.1s;
	transition: background 0.1s;
}

.about a:hover {
	text-decoration: none;
	background: #fafafa;
	background: rgba(255, 255, 255, 0.7);
}

.about-links {
	height: 30px;
}

.about-links>a {
	float: left;
	width: 50%;
	line-height: 30px;
	font-size: 12px;
}


body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #404040;
	background: #ffffff;
}

.log-out {
	position: relative;
	margin: 50px auto;
	width: 280px;
	padding: 33px 25px 29px;
	background: white;
	border-bottom: 1px solid #c4c4c4;
	border-radius: 5px;
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


.check_on {
	font-size: 35px;
	position: relative; left:113px;
	width: 1.4em;
	height: 1.4em;
	border: 0.1em solid #39a9d6;
	border-radius: 0.1em;
}
/* チェック */
.check_on::before {
	position: absolute;
	top: 0.2em;
	left: 0.1em;
	width: 1em;
	height: 0.5em;
	border-bottom: 0.2em solid #39a9d6;
	border-left: 0.2em solid #39a9d6;
        -webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
	content: "";
}</style>

<!-- form starts here -->
<form class="log-out">
    <h1 class="sign-up-title">logout</h1>
    <div class="check_on"></div>
    <input type="submit" value="TOP" class="sign-up-button">
  </form>

<%@include file="../header.html"%>