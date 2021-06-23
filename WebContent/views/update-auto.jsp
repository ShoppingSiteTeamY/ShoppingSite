<%@ page language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="member.css">
<style type="text/css">
.container {
	margin: 0 auto;
	width: 700px;
	height: 1200px;
	top: 200px;
}

h1 {
	text-align: center;
}

.form {
	top: 300px;
	margin: 0 auto;
	width: 700px;
	height: 700px;
}

.search-form {
	margin: 0 auto;
	width: 700px;
	height: 200px;
}

.box {
	width: 100%; /*親要素いっぱい広げる*/
	padding: 20px 30px; /*ボックスを大きくする*/
	font-size: 20px;
	margin: 10px 10px;
	border-radius: 6px; /*ボックス角の丸み*/
	border: 4px solid #ddd; /*枠線*/
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.select {
	width: 15%; /*親要素いっぱい広げる*/
	padding: 20px 55px; /*ボックスを大きくする*/
	margin: 20px 30px 10px 30px;
	color: black;
	font-size: 20px;
	border-radius: 6px; /*ボックス角の丸み*/
	border: 4px solid #ddd; /*枠線*/
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.click {
	width: 100%; /*親要素いっぱい広げる*/
	padding: 20px 30px; /*ボックスを大きくする*/
	margin: 20px 10px;
	font-size: 25px;
	border-radius: 6px; /*ボックス角の丸み*/
	border: 4px solid #ddd; /*枠線*/
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
	cursor: pointer;
}

.number {
	width: 60%; /*親要素いっぱい広げる*/
	padding: 20px 30px; /*ボックスを大きくする*/
	font-size: 20px;
	margin: 10px 10px;
	border-radius: 6px; /*ボックス角の丸み*/
	border: 4px solid #ddd; /*枠線*/
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.button {
	width: 35%; /*親要素の45％分広げる*/
	padding: 20px 0px; /*ボックスを大きくする*/
	margin: 20px 50px;
	font-size: 25px;
	border-radius: 6px; /*ボックス角の丸み*/
	border: 4px solid #ddd; /*枠線*/
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
	cursor: pointer;
}

.btn {
	width: 20%; /*親要素の45％分広げる*/
	padding: 10px 0px; /*ボックスを大きくする*/
	margin: 10px 10px;
	font-size: 15px;
	border-radius: 4px; /*ボックス角の丸み*/
	border: 2px solid #ddd; /*枠線*/
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
	cursor: pointer;
}
</style>
<%@include file="../header.html"%>

<form action="../src/updateAuto" method="post" class="form">

<h1>商品情報変更画面(必須*)</h1>

商品番号
<input type = "text" class ="number" name="itemNo" value="${itemBean[0].item_no}">
<input type ="submit" class="btn" name="view" value="表示">
<br>
商品名(*)
<input type = "text" class ="box" name="itemName" value="${itemBean[0].item_name}">
色(*)
<input type = "text" class="box" name="itemColor" value="${itemBean[0].color}">
値段(*)
<input type = "text" class="box" name="itemPrice" value="${itemBean[0].price}">
ロケーションパス(*)
<input type = "text" class="box" name="itemLocation" value="${itemBean[0].location}">
画像パス(*)
<input type = "text" class="box" name="itemImage" value="${itemBean[0].image}">
人気順位(*)
<input type = "text" class="box" name="itemRanking" value="${itemBean[0].ranking}">

<!-- history.backを使う方法 -->
<!-- button type="button" class="button" onclick="history.back()" name="back">戻る</button-->
<button type="button" class="button" onclick="location.href='../views/menu.jsp'" name="back">戻る</button>
<button type="submit" class="button" name="update">変更</button>

</form>

<%@include file="../footer.html"%>