<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.html"%>
<style>
body {
	background-color: #fff;
	color: #666;
	font-family: 'Open Sans', sans-serif;
	font-size: 80.5%;
	margin: 0 auto;
}

.container {
	width: 25%;
	margin: 0 auto;
}

.order {
	text-align: center;
	font-size: 125%;
}

.thank {
	font-size: 200%;
	background-image: linear-gradient(transparent 60%, lightblue 0%);
	font-size: 200%;
}

p {
	margin: 0.8rem 0 0;
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
	margin: 0px 10px;
	padding: 3px 10px;
	background-color: #fff;
	border-radius: 4px;
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

.info {
	margin: 2em 0;
	position: relative;
	padding: 0.5em 1.5em;
	border-top: solid 2px black;
	border-bottom: solid 2px black;
}

.info:before, .info:after {
	content: '';
	position: absolute;
	top: -10px;
	width: 2px;
	height: -webkit-calc(100% + 20px);
	height: calc(100% + 20px);
	background-color: black;
}

.info:before {
	left: 10px;
}

.info:after {
	right: 10px;
}

.info p {
	margin: 0;
	padding: 0;
}

</style>

<header>

	<div class="header-logo">

		<form action="../src/UserAllSearch" method="post">
			<input type="image" src="../views/image/T-logo.png" class="logo">
		</form>
 
		<div class="header-left" style="display: inline-flex"></div>

		<div class="header-right" style="display: inline-flex">
			<a href="../views/logout.jsp" class="sub">LOG OUT</a>

		</div>

	</div>

</header>

<main>
	<br> <br> <br> <br> <br> <br> <br> <br>
	<br> <br>
	<div class="container">
		<div class="order">
			<div class="thank">
				<strong><p>Thank You</p></strong>
			</div>
			<p>注文が確定されました。</p>
			<br> <br>
		</div>
		<div class="info">
			<p>注文番号：${orderBean.order_no}</p><br>
			<p>支払い方法：${orderBean.payment}</p><br>
			<p>配達方法：${orderBean.delivery}</p><br>
		</div>
	</div>
</main>

<%@include file="../footer.html"%>