<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../header.html"%>

<style>
.product img {
	position: absolute;
	max-width: 400px;
	max-height: 300px;
	display: block;
}
</style>

<p>
	<input type="button" value="user"
		onClick="location.href='../views/user.jsp'"> <input
		type="button" value="logout"
		onClick="location.href='../views/logout.jsp'">
</p>


<div class="product-image">
	<img src="../img/${items.item_no}.jpg" alt="product"
		class="product-img">
</div>
<div class="product-details">
	<p>商品名：${items.item_no}</p>
	<p>サイズ：${items.item_size}</p>
	<p>色：${items.color}</p>
	<p>価格：${items.price}円</p>
</div>
<div>
	<form action="deletecart" method="post" class="#">
		<input type="submit" value="カートから削除">
	</form>
	
	<p>小計${items.price*count}円</p>
</div>




<p>
	<input type="button" value="accounting"
		onClick="location='../views/accounting.jsp';">
</p>




<%@include file="../footer.html"%>