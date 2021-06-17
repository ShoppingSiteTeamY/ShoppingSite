<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="member.css">
<%@include file="../header.html" %>

<form action="../src/regist" method="post" class="form">

<h1>商品情報新規登録画面(必須*)</h1>

商品番号
<input type = "text" class ="box" name="itemNo" >
商品名(*)
<input type = "text" class ="box" name="itemName">
サイズ(*)
<input type = "text" class="box" name="itemSize">
色(*)
<input type = "text" class="box" name="itemColor">
値段(*)
<input type = "text" class="box" name="itemPrice">


<button type="button" class="button" onclick="location.href='menu.jsp'">戻る</button>
<button type="submit" class="button">登録</button>

</form>

<%@include file="../footer.html" %>