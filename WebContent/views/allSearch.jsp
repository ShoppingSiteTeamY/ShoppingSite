<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="member.css">
<style type="text/css">

.container{
	
	margin:0 auto;
	width:700px;
	height:1200px;
	top:200px;
	
}

h1{

	
	text-align:center;

}

.form{

	top:300px;
	margin:0 auto;
	width :700px;
	height:700px;
	
}

.search-form{

	margin:0 auto;
	width :700px;
	height:200px;
	
}

.box{
    width: 100%; /*親要素いっぱい広げる*/
    padding: 20px 30px; /*ボックスを大きくする*/
    font-size: 20px;
    margin:10px 10px;
    border-radius: 6px; /*ボックス角の丸み*/
    border: 4px solid #ddd; /*枠線*/
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.select{
    width: 15%; /*親要素いっぱい広げる*/
    padding: 20px 55px; /*ボックスを大きくする*/
    margin:20px 30px 10px 30px;
    color:black;
    font-size: 20px;
    border-radius: 6px; /*ボックス角の丸み*/
    border: 4px solid #ddd; /*枠線*/
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
}

.click{
	width: 100%; /*親要素いっぱい広げる*/
    padding: 20px 30px; /*ボックスを大きくする*/
    margin:20px 10px;
    font-size: 25px;
    border-radius: 6px; /*ボックス角の丸み*/
    border: 4px solid #ddd; /*枠線*/
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/  
    cursor:pointer;	
}


.number{
	
	width: 60%; /*親要素いっぱい広げる*/
    padding: 20px 30px; /*ボックスを大きくする*/
    font-size: 20px;
    margin:10px 10px;
    border-radius: 6px; /*ボックス角の丸み*/
    border: 4px solid #ddd; /*枠線*/
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/
	
}

.button{
	
	width: 35%; /*親要素の45％分広げる*/
    padding: 20px 0px; /*ボックスを大きくする*/
    margin:20px 0px;
    font-size: 25px;
    border-radius: 6px; /*ボックス角の丸み*/
    border: 4px solid #ddd; /*枠線*/
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/  
    cursor:pointer;	
	
	
}
.btn{
	
	width: 20%; /*親要素の45％分広げる*/
    padding: 10px 0px; /*ボックスを大きくする*/
    margin:10px 10px;
    font-size: 15px;
    border-radius: 4px; /*ボックス角の丸み*/
    border: 2px solid #ddd; /*枠線*/
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/  
    cursor:pointer;	
	
}

.box2 {
    padding: 0.5em 1em;
    margin: 2em 0;
    font-weight: bold;
    color: black;/*文字色*/
    background: #FFF;
    border: solid 3px grey;/*線*/
    border-radius: 10px;/*角の丸み*/
}
.box2 p {
    margin: 0; 
    padding: 5px 0;
}


</style>
<%@include file="../header.html" %>


<h1>商品情報一覧表示画面</h1>

<c:forEach var="item" items="${itemBean}">
    <div class="box2">
		<p>商品ID：<c:out value="${item.item_no}"/></p>
		<p>商品名：<c:out value="${item.item_name}"/></p>
		<p>商品サイズ：<c:out value="${item.item_size}"/></p>
		<p>色：<c:out value="${item.color}"/></p>
		<p>価格：<c:out value="${item.price}"/></p>
	</div>
</c:forEach>

<!-- history.backを使う方法 -->
<!-- button type="button" class="button" onclick="history.back()" name="back">戻る</button-->
<button type="button" class="button" onclick="location.href='../views/menu.jsp'" name="back">戻る</button>



<%@include file="../footer.html" %>
