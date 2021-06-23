<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	padding: 0.3rem 0;
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
	margin: 0.75rem 0 0;
}

h1 {
	font-size: 0.75rem;
	font-weight: normal;
	margin: 0;
	padding: 0;
}

input, button {
	border: 0 none;
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
	.quantity, .subtotal, .basket-product, .product-image, .product-details
	{
	float: left;
}

.price:before, .subtotal:before, .subtotal-value:before, .total-value:before,
	.promo-value:before {
	content: '£';
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

.price, .quantity, .subtotal {
	width: 15%;
}

.subtotal {
	text-align: right;
}

.remove {
	bottom: 1.125rem;
	float: right;
	position: absolute;
	right: 0;
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
	padding-left: 4.375rem;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
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
	background-color: #ccc;
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
	.price, .subtotal {
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
</style>

<header>
	<input type="button" value="user" onClick="location.href='../views/user.jsp'"> 
	<input type="button" value="logout" onClick="location.href='../views/logout.jsp'">
</header>

<main>
	<div class="container">
		<div class="cart">
			<p>Cart</p>
		</div>
		<div class="basket">


			<div class="basket-labels">
				<ul>
					<li class="item item-heading">Item</li>
					<li class="price">Price</li>
					<li class="quantity">quantity</li>
					<li class="subtotal">Subtotal</li>
				</ul>
			</div>
			
		<c:forEach items="${cartBean}">
			<div class="basket-product">
				<div class="item">
					<div class="product-image">
						<img src="${items.item_no}" alt="image"
							class="product-frame">
					</div>
					<div class="product-details">
						<h1>
							<strong>item:<c:out value="${items.item_no}" /></strong>
						</h1>
						<p>Size：<c:out value="${items.item_size}"/></p>
						<p>Color：<c:out value="${items.color}"/></p>
					</div>
				</div>
				<div class="price"><c:out value="${items.price}"/>¥</div>
				<div class="quantity">
					<input type="number" class="quantity-field">
				</div>
				<div class="subtotal"><c:out value="${items.price*quantity}"/>¥</div>
				<div class="remove">
					<form action="deletecart" method="post" class="remove">
						<input type="submit" value="Remove">
					</form>
				</div>
			</div>
		</div>
		</c:forEach>

		<div class="summary-total-items">
			<span class="total-items"></span>your Cart
		</div>
		<div class="summary-total">
			<div class="total-title">Total</div>
			<div class="total-value final-value" id="basket-total"></div>
		</div>
		<div class="summary-checkout">
			<button class="checkout-cta">Checkout</button>
		</div>
	</div>
</main>



<c:forEach var="item" items="${itemBean}" begin="0" end="19">
				<div class="item">
					<a onclick="location.href='${item.location}'"><img
						src="${item.image}" class="t"></a>
					<p>
						<c:out value="${item.item_name}" />
					</p>
					<p class="price">
						¥
						<c:out value="${item.price}" />
					</p>
				</div>
</c:forEach>

<%@include file="../footer.html"%>