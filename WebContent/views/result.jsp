<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../header.html"%>

<style>
@charset "utf-8";

.container {
	width: 70%;
	margin: 0 auto;
}

.summary-checkout {
	display: block;
}

.cart {
	display: block;
	float: none;
	font-size: 0.75rem;
	text-align: center;
	text-transform: uppercase;
	padding: 0.4rem 0;
	width: 100%;
	background-color: #666;
	color: #fff;
}

html, html a {
	-webkit-font-smoothing: antialiased;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
}

body {
	background-color: #fff;
	color: #666;
	font-family: 'Open Sans', sans-serif;
	font-size: 62.5%;
	margin: 0 auto;
}

a {
	border: 0 none;
	outline: 0;
	text-decoration: none;
}

strong {
	font-weight: bold;
}

p {
	margin: 0.8rem 0 0;
}

h1 {
	font-size: 0.75rem;
	font-weight: normal;
	margin: 0;
	padding: 0;
}

input, button {
	outline: 0 none;
}

button {
	background-color: #666;
	color: #fff;
}

button:hover, button:focus {
	background-color: #555;
}

img, .basket-module, .basket-labels, .basket-product {
	width: 100%;
}

input, button, .basket, .basket-module, .basket-labels, .item, .price,
	.quantity, .size, .subtotal, .basket-product, .product-image,
	.product-details {
	float:;
}

.hide {
	display: none;
}

main {
	clear: both;
	font-size: 0.75rem;
	margin: 0 auto;
	overflow: hidden;
	padding: 1rem 0;
	width: 960px;
}

.basket, aside {
	padding: 0 1rem;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.basket {
	width: 100%;
	padding-bottom: 40px;
}

.basket-module {
	color: #111;
}

label {
	display: block;
	margin-bottom: 0.3125rem;
}

.basket-labels {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin-top: 1.625rem;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

li {
	color: #111;
	display: inline-block;
	padding: 0.625rem 0;
}

li.price:before, li.subtotal:before {
	content: '';
}

.item {
	width: 55%;
}

.price, .quantity, .size, .subtotal {
	width: 10%;
}

.subtotal {
	text-align: left;
	margin-left: 20px;
}

.remove {
	bottom: 10px;
	float: right;
	position: absolute;
	right: -30px;
	text-align: right;
	width: 45%;
}

.remove button {
	background-color: transparent;
	color: #777;
	float: none;
	text-decoration: underline;
	text-transform: uppercase;
}

.item-heading {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	float: left;
}

.basket-product {
	border-bottom: 1px solid #ccc;
	padding: 1rem 0;
	position: relative;
}

.product-image {
	width: 35%;
}

.product-details {
	width: 65%;
}

.product-frame {
	border: 1px solid #aaa;
}

.product-details {
	padding: 0 1.5rem;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.quantity-field {
	background-color: #fff;
	border: 1px solid #aaa;
	border-radius: 4px;
	font-size: 0.625rem;
	padding: 2px;
	width: 3.75rem;
}

.summary {
	background-color: #eee;
	border: 1px solid #aaa;
	padding: 1rem;
	position: fixed;
	width: 250px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.summary-total-items {
	color: #666;
	font-size: 0.875rem;
	text-align: center;
}

.summary-subtotal, .summary-total {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	clear: both;
	margin: 1rem 0;
	overflow: hidden;
	padding: 0.5rem 0;
}

.subtotal-title, .subtotal-value, .total-title, .total-value,
	.promo-title, .promo-value {
	color: #111;
	float: left;
	width: 50%;
}

.summary-delivery {
	padding-bottom: 3rem;
}

.subtotal-value, .total-value {
	text-align: right;
}

.total-title {
	font-weight: bold;
	text-transform: uppercase;
}

.summary-checkout {
	display: block;
	color: ##666;
}

.checkout-cta {
	display: block;
	float: none;
	font-size: 0.75rem;
	text-align: center;
	text-transform: uppercase;
	padding: 0.625rem 0;
	width: 100%;
}

.summary-delivery-selection {
	background-color: #ccc;
	border: 1px solid #aaa;
	border-radius: 4px;
	display: block;
	font-size: 0.625rem;
	height: 34px;
	width: 100%;
}

.cart {
	text-align: center;
	margin-top: 50px;
}

@media screen and (max-width: 640px) {
	aside, .basket, .summary, .item, .remove {
		width: 100%;
	}
	.basket-labels {
		display: none;
	}
	.basket-module {
		margin-bottom: 1rem;
	}
	.item {
		margin-bottom: 1rem;
	}
	.product-image {
		width: 40%;
	}
	.product-details {
		width: 60%;
	}
	.price, .subtotal, .name {
		width: 33%;
	}
	.quantity {
		text-align: center;
		width: 34%;
	}
	.quantity-field {
		float: none;
	}
	.remove {
		bottom: 0;
		text-align: left;
		margin-top: 0.75rem;
		position: relative;
	}
	.remove button {
		padding: 0;
	}
	.summary {
		margin-top: 1.25rem;
		position: relative;
	}
}

@media screen and (min-width: 641px) and (max-width: 960px) {
	aside {
		padding: 0 1rem 0 0;
	}
	.summary {
		width: 28%;
	}
}

@media screen and (max-width: 960px) {
	main {
		width: 100%;
	}
	.product-details {
		padding: 0 1rem;
	}
}

.vanish {
	display: none;
}

.space {
	margin-left: 145px;
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

.strong{

    font-weight:bold;

}

</style>



<header>

	<div class="header-logo">

		<form action="../src/UserAllSearch" method="post">
			<input type="image" src="../views/image/T-logo.png" class="logo">
		</form>

		<div class="header-left" style="display: inline-flex">

			<!--  <form action="#" method="post" ><a href="#" class="sub" id="M">RECOMMEND</a></form>
            <form action="../src/ranking" method="post"><input type="submit" class="sub" id="W" value="RANKING"></form>
            <form action="../src/lowPrice" method="post"><input type="submit" class="sub" id="A" value="LOW PRICE"></form>
            <form action="../src/highPrice" method="post"><input type="submit" class="sub" id="C"value="HIGH PRICE"></form> -->

		</div>

		<div class="header-right" style="display: inline-flex">

			<!-- <form action="../src/keyWord" method="post" class="#">
					<input type="text" class="#" name="keyword" placeholder="Input any words!">
					<input type="submit" class="sub" value="SEARCH">
				 </form>
				 <form action="#" method="post"><input type="submit" class="sub" id="map" value="MAP"></form>
	             <form action="../src/cart" method="post"><input type="submit" class="sub" id="bag" value="SHOPPING CART"></form> -->
			<a href="../jp.co.aforce.act/ShopLogout.action" class="sub">LOG OUT</a>

		</div>

	</div>

</header>


<main>
	<form action="../src/result2" method="post" class="#">
		<div class="container">
			<div class="cart">
				<p>????????????</p>
			</div>
			<c:set var="sum_price" value="${0}" />
			<c:forEach var="cart" items="${cartBean}">
				<c:set var="total" value="${cart.price*cart.item_quantity}" />
				<c:set var="sum_price" value="${sum_price + total}" />
				<c:set var="name" value="${cart.name}" />
			</c:forEach>

			<div class="summary-total">
				<div class="total-title">Total</div>
				<div class="total-value final-value" id="basket-total">
					??
					<c:out value="${sum_price}" />
				</div>
			</div>
			<div class="info">
				<strong>??????????????????</strong> <br> <br>

				<strong>??????</strong>

				<p class="strong">
					<c:out value="${name}" />
				</p>
				
				<br>

				<strong>????????????</strong>
				
				<br>

				<p class="strong">
					<input type="text" required>
				</p>
				
				<br>

				<strong>????????????</strong>
			
				<br><br>
				<select name="pref_name" required>
					<option value="" selected>-</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="????????????">????????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="????????????">????????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="?????????">?????????</option>
					<option value="????????????">????????????</option>
					<option value="?????????">?????????</option>
				</select>
				
				<br><br>

				<strong>??????</strong>
				
				<br>

				<p class="strong">
					<input type="text" style="width: 500px;" required>
				</p>

 				<br>
 				
				<strong>????????????</strong>
				
				<br>

				<p class="strong">
					<input type="text" required>
				</p>

			</div>
			<br> <br>
			<div class="#">

				<strong>??????????????????</strong>
				<p>
					<input type="radio" name="payment" value="??????????????????????????????" required>??????????????????????????????
				</p>
				<p>
					<input type="radio" name="payment" value="??????????????????">??????????????????
				</p>
				<p>
					<input type="radio" name="payment" value="????????????">????????????
				</p>
				<p>
					<input type="radio" name="payment" value="??????????????????">??????????????????
				</p>
			</div>

			<br> <br>
			<div class="#">
				<strong>????????????</strong>

				<p>????????????????????????</p>
				<input type="date">
			</div>
			<br> <br>

			<div class="#">
				<strong>????????????</strong>

				<p>
					<input type="radio" name="delivery" value="?????????" required>?????????
				</p>
				<p>
					<input type="radio" name="delivery" value="?????????">?????????
				</p>
				<p>
					<input type="radio" name="delivery" value="??????BOX">??????BOX
				</p>
			</div>
			<br> <br>


			<div class="summary-checkout">

				<input type="submit" class="checkout-cta" value="????????????">

			</div>

		</div>
	</form>
</main>

<%@include file="../footer.html"%>