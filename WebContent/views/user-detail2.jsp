<%@ page language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0">
<title>WEAR HOUSE Detail</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">

</head>
<style>
.flat.border {
	position: relative;
	text-align: center;
	/* 中央揃え */
	display: block;
	margin: 0px 5px 0px 5px;
	/* 幅の指定 */
	width: 100%;
	max-width: 200px;
	box-sizing: border-box;
	padding: 3px 8px;
	/* 色の指定 */
	background: linear-gradient(135deg, #grey, #fff);
	color: #000;
	font-weight: bold;
	border-radius: 8px;
	transition: 0.3s;
	border: 2px solid #ccc;
	background: #fff;
	color: black;
	cursor: pointer;
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
	height: 70px;
	width: 100%;
	background-color: #fff;
	color: #000;
}

.header-left {
	float: left;
	padding: 25px;
}

.sub {
	padding-right: 10px;
}

.logo {
	float: left;
	width: 90px;
	height: 65px;
}

.header-space {
	margin: 0px 5px;
}

.header-right {
	float: right;
	padding: 25px;
	margin-right: 5px;
}

.container {
	padding: 100px 20px;
	width: 1200px;
	margin: 0 auto;
	height: 1650px;
}

a {
	text-decoration: none;
	color: #000;
}

a:hover {
	text-decoration: underline;
}

footer {
	width: 100%;
	background-color: #fff;
	padding-top: 30px;
}

.footer-left {
	float: left;
	margin: 50px 0px 0px 40px;
}

.footer-center {
	padding-top: 100px;
	padding-right: 30px;
}

.footer-center p {
	text-align: center;
	font-size: 8px;
}

.input {
	margin: 20px;
	padding: 20px;
}

.footer-right {
	float: right;
}

.icon-wrapper {
	
}

.fab {
	padding-top: 20px;
	padding-right: 15px;
	margin: 20px;
	font-size: 30px;
	color: #000;
}

.footer-line {
	height: 50px;
	background-color: #fff;
}

img:hover {
	opacity: 0.7;
}

.t {
	width: 700px;
	height: 750px;
}

.top-wrapper {
	position: relative;
	padding-top: 0px;
	height: 1600px;
}

.main-left {
	position: absolute;
	top: 0px;
	bottom: 200px;
}

.main-right {
	position: sticky;
	left: 900px;
	top: 200px;
	text-align: left;
	float: right;
	font-size: 13px;
	z-index: 5;
	padding-bottom: 300px;
	padding-right: 0px;
}

.small {
	float: left;
	width: 80px;
	height: 90px;
	margin-right: 15px;
}

.btn-wrapper {
	padding: 10px 0;
}

.btn {
	padding: 5px 10px;
	background-color: rgb(68, 155, 68);
	display: inline-block;
	font-size: 15px;
}

.quan {
	display: inline-block;
}

.output-box {
	padding: 5px 10px;
	margin: 5px 0;
	border: double 5px #cccccc;
}

.small-wrapper {
	padding: 5px 0 0 10px;
}

.size-wrapper {
	margin-top: 120px;
}

.size {
	border: 2px solid grey;
	margin-bottom: 5px;
	margin-right: 5px;
	padding: 15px;
}

.vanish {
	display: none;
}

.size {
	background-color: #fff;
	border: 1px solid #aaa;
	border-radius: 4px;
	font-size: 0.625rem;
	padding: 2px;
	width: 3.75rem;
}
</style>
<body>

	<header>

		<div class="header-logo">

			<form action="../src/UserAllSearch"
				method="post">
				<input type="image"
					src="../views/image/T-logo.png" class="logo">
			</form>

			<div class="header-left"
				style="display: inline-flex">

				<form action="../src/UserAllSearch" method="post"
					class="header-space">
					<input type="submit"
						class="reset flat border" id="M"
						value="RECOMMEND">
				</form>
				<form action="../src/ranking" method="post"
					class="header-space">
					<input type="submit"
						class="reset flat border" id="W"
						value="RANKING">
				</form>
				<form action="../src/lowPrice" method="post"
					class="header-space">
					<input type="submit"
						class="reset flat border" id="A"
						value="LOW PRICE">
				</form>
				<form action="../src/highPrice" method="post"
					class="header-space">
					<input type="submit"
						class="reset flat border" id="C"
						value="HIGH PRICE">
				</form>

			</div>

			<div class="header-right"
				style="display: inline-flex">

				<form action="../src/keyWord" method="post"
					class="header-space"
					style="display: inline-flex">
					<input type="text" class="#" name="keyword"
						placeholder="Input any words!"> <input
						type="submit" class="reset flat border up"
						value="SEARCH">
				</form>
				<form action="#" method="post"
					class="header-space">
					<input type="submit"
						class="reset flat border" id="map"
						value="MAP">
				</form>
				<form action="../src/cart" method="post"
					class="header-space">
					<input type="submit"
						class="reset flat border" id="bag"
						value="SHOPPING CART">
				</form>
				<form action="../views/logout.jsp"
					method="post" class="header-space">
					<input type="submit"
						class="reset flat border" id="bag"
						value="LOG OUT">
				</form>


			</div>

		</div>

	</header>


	<div class="container">

		<div class="top-wrapper">

			<div class="main-right">

				<p>8 BALL TEE</p>
				<br>
				<p>¥7,480(税込)</p>
				<div class="small-wrapper">
					<a
						onclick="location.href='../views/user-detail2.jsp'"><img
						src="../views/image/t2.jpeg" class="small"></a>
					<!--  <a onclick="location.href='../views/user-detail-a.jsp'"><img src="../views/image/t1a.jpeg"class="small"></a> -->
				</div>

				<form action="../src/cartInsert" method="post"
					id="wrap">

					<div class="size-wrapper">

						サイズ: <select name="item_size" class="size">
							<option value="S">S</option>
							<option value="M">M</option>
							<option value="L">L</option>
							<option value="LL">LL</option>
						</select> 個数: <select name="item_quantity"
							class="size">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>

					</div>

					<div class="btn-wrapper">

						<input type="text" class="vanish"
							name="itemNo" value="T00002"> <input
							type="submit" class="btn" value="カートに入れる">

					</div>

				</form>

				<!-- <div class="output-box">
          <p id="output"></p>
          <p id="total">
          </div> -->

				<p>ショートスリーブTシャツ - グラフィックアート</p>
				<p>100% レーヨン</p>
				<p>インポート</p>
				<br>
				<p>*必ずサイズガイドをご確認ください。</p>
				<br> <a href="#" class="guide">> FIT
					DETAIL</a> <br> <a href="#" class="guide">>
					FIT GUIDE</a> <br> <a href="#" class="guide">>
					再入荷リクエストについて</a>

			</div>

			<div class="main-left">

				<img src="../views/image/t2.jpeg" class="t">
				<img src="../views/image/t2-1.jpeg" class="t">

			</div>

		</div>

	</div>

	<footer>

		<div class="footer-logo">

			<div class="footer-left">

				ようこそ${loginBean.name}さん</div>
			<div class="footer-right">

				<div class="icon-wrapper">

					<a href="https://www.apple.com/jp/apple-pay/"><i
						class="fab fa-apple-pay"></i></a> <a
						href="https://www.facebook.com/"><i
						class="fab fa-facebook"></i></a> <a
						href="https://twitter.com/i/flow/signup"><i
						class="fab fa-twitter"></i></a> <a
						href="https://www.instagram.com/accounts/emailsignup/?hl=en"><i
						class="fab fa-instagram"></i></a> <a
						href="https://www.youtube.com/account"><i
						class="fab fa-youtube"></i></a>

				</div>

			</div>

			<div class="footer-center">

				<p>©︎ 2021 WEAR HOUSE</p>

			</div>

		</div>

	</footer>

	<div class="footer-line"></div>

</body>
</html>