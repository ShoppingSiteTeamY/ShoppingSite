<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<style type="text/css">

@charset "UTF-8";

.flat.border {
	position: relative;
	text-align: center;
	/* 中央揃え */
	display: block;
	margin: 0 auto;
	/* 幅の指定 */
	width: 100%;
	max-width: 200px;
	box-sizing: border-box;
	padding: 5px;
	/* 色の指定 */
	color: #000;
	font-weight: bold;
	border-radius: 8px;
	transition: 0.3s;
	border: 2px solid #ccc;
	background: #fff;
	color: black;
}

.flat.border:hover {
	background: grey;
	color: #fff;
}

.flat.border:active, .flat.border:focus {
	top: 2px;
}

header {
	height: 70px;
	width: 100%;
	color: #ffffaa;
	z-index: 5;
	font-family: 'Corben', cursive;
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

.header-space {
	margin: 0px 10px;
}

.header-left {
	float: left;
	padding: 40px 40px 40px 150px;
	font-size: 30px;
}

.header-center {
	text-align: center;
	font-size: 45px;
	font-weight: bolder;
	padding: 25px;
}

.header-right {
	float: right;
	padding: 25px;
}

.main {
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: 850px;
	background-image: url(../views/image/back11.jpg);
	background-size: cover;
	z-index: 0;
}

.container {
	position: absolute;
	top: 120px;
	right: 20px;
}

h1 {
	padding-left: 20px;
	text-align: center;
}

.form {
	top: 300px;
	margin: 0 auto;
	width: 700px;
	height: 300px;
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

.header-left {
	position: absolute;
	top: 0px;
	left: 20px;
	display: block;
	text-align: left;
}

.header-right {
	position: absolute;
	top: 20px;
	right: 40px;
	display: block;
	text-align: right;
}

.btn-gradation {
	display: inline-block;
	width: 80%; /*親要素いっぱい広げる*/
	text-align: center;
	font-size: 20px;
	color: #3f3f3f;
	text-decoration: none;
	font-weight: bold;
	padding: 9px 10px; /*ボックスを大きくする*/
	border-radius: 30px; /*ボックス角の丸み*/
	transition: .5s;
	background-size: 200%;
	cursor: pointer;
	margin: 15px 5px;
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.btn-gradation2 {
	display: inline-block;
	width: 45%; /*親要素いっぱい広げる*/
	text-align: center;
	font-size: 16px;
	color: #3f3f3f;
	text-decoration: none;
	font-weight: bold;
	padding: 10px 10px; /*ボックスを大きくする*/
	border-radius: 30px; /*ボックス角の丸み*/
	transition: .5s;
	background-size: 200%;
	cursor: pointer;
	margin: 0px 5px;
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.btn-gradation3 {
	display: inline-block;
	width: 55%; /*親要素いっぱい広げる*/
	text-align: center;
	font-size: 16px;
	color: #3f3f3f;
	text-decoration: none;
	font-weight: bold;
	padding: 10px 10px; /*ボックスを大きくする*/
	border-radius: 30px; /*ボックス角の丸み*/
	transition: .5s;
	background-size: 200%;
	cursor: pointer;
	margin: 10px 5px;
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.btn-gradation4 {
	display: inline-block;
	width: 22%; /*親要素いっぱい広げる*/
	text-align: center;
	font-size: 16px;
	color: #3f3f3f;
	text-decoration: none;
	font-weight: bold;
	padding: 10px 10px; /*ボックスを大きくする*/
	border-radius: 30px; /*ボックス角の丸み*/
	transition: .5s;
	background-size: 200%;
	cursor: pointer;
	margin: 10px 5px;
	box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.btn-wrapper {
	padding-top: 40px;
	padding-left: 25px;
}

.input-wrapper {
	padding-left: 100px;
}

.btn-gradation:hover {
	background-position: right center;
	
}


.right-title{

  padding-right:135px;
  font-size:30px;
  color:#7f7f7f;;
  font-weight:bolod;


}



</style>
<%@include file="../header.html" %>

<div class="main">

	<header>

		<div class="header-logo">

			<!--  <form action="../views/login-error.jsp" method="post"><input type="image" src="../views/image/T-logo.png" class="logo"></form> -->

			<!-- <div class="header-left">商品情報変更画面(必須*) </div>
 -->
			<!-- <div class="header-center">商品情報削除画面(必須*)</div> -->

			<div class="header-right"
				style="display: inline-flex">
				
				<div class="right-title">商品情報変更画面(必須*) </div>
				

				<!-- <form action="../views/logout.jsp"
					method="post" class="header-space">
					<input type="submit"
						class="reset flat border" id="bag"
						value="LOG OUT">
				</form> -->


			</div>

		</div>

	</header>

	<div class="container">

		<form action="../src/updateSearch" method="post"
			class="form">

			<div class="input-wrapper">

				<!-- <p>商品番号</p> -->
				<input type = "text" class ="click btn-gradation3" name="itemNo" value="${itemBean[0].item_no}">
				<input type ="submit" class="click btn-gradation4" name="view" value="表示">
				<!-- <p>商品名(*)</p> -->
				<input type="text" class="click btn-gradation"
					name="itemName" value="${itemBean[0].item_name}">
				<!-- <p>色(*)</p> -->
				<input type="text" class="click btn-gradation"
					name="itemColor" value="${itemBean[0].color}">
				<!-- <p> 値段(*)</p> -->
				<input type="text" class="click btn-gradation"
					name="itemPrice" value="${itemBean[0].price}">
				<!-- <p>ロケーションパス(*)</p> -->
				<input type="text" class="click btn-gradation"
					name="itemLocation" value="${itemBean[0].location}">
				<!-- <p>画像パス(*)</p> -->
				<input type="text" class="click btn-gradation"
					name="itemImage" value="${itemBean[0].image}">
				<!-- <p>人気順位(*)</p> -->
				<input type="text" class="click btn-gradation"
					name="itemRanking" value="${itemBean[0].ranking}">

			</div>

			<div class="btn-wrapper">
				<button type="button"
					class="click btn-gradation2"
					onclick="location.href='../views/menu.jsp'">戻る</button>
				<button type="submit"
					class="click btn-gradation2">変更</button>
			</div>
		</form>

	</div>

</div>


<%@include file="../footer.html" %>
