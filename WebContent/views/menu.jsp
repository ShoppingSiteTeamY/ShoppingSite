<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../header.html" %>
<style>
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
  background: linear-gradient(135deg, #grey, #fff);
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



header{

    position: fixed;
    height:70px;
    width: 100%;
    background-color:rgba(255,255,255,0.7);
    color: #000;
    z-index:5;

  }

  .sub{

    margin:0px 10px;
    padding: 3px 10px;
    background-color:#fff;
    border-radius:4px;
    color: #000;

  }

  .logo{

    float: left;
    width: 90px;
    height: 65px;

  }
  
  .header-space{
  
    margin:0px 10px;
  
  }

  .header-left{

    float: left;
    padding: 25px;

  }

  .header-right{

    float: right;
    padding: 25px;
    margin-right: 5px;

  }


.main{

  position: absolute;
	top: 0px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(../views/image/back2.jpg);
	background-size: cover;
	z-index: 0;

}

.container{
	
	position:absolute;
	top:200px;
	left:370px;
	
}

h1{

	padding-left:20px;
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
    box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/  
    cursor:pointer;	
}

.click2{
	width: 100%; /*親要素いっぱい広げる*/
    padding: 20px 5px; /*ボックスを大きくする*/
    margin:20px 0px;
    font-size: 25px;
    border-radius: 6px; /*ボックス角の丸み*/
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
    margin:20px 50px;
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

.header-left{

	position:absolute;
	top:0px;
	left:20px;
    display:block;
	text-align:left;

}

.header-right{

	position:absolute;
	top:20px;
	right:40px;
	display:block;
	text-align:right;

}

.btn-gradation {
  display: inline-block;
  width: 100%; /*親要素いっぱい広げる*/
  text-align: center;
  font-size: 25px;
  color: #3f3f3f;
  text-decoration: none;
  font-weight: bold;
  padding: 20px 30px; /*ボックスを大きくする*/
  border-radius: 30px; /*ボックス角の丸み*/
  background-image: linear-gradient(-90deg, #ffffd5, #eaffff);
  transition: .5s;
  background-size: 200%;
  cursor:pointer;	
  margin:20px 10px;
  box-sizing: border-box; /*横幅の解釈をpadding, borderまでとする*/  
  
}



.btn-gradation:hover {
  background-position: right center;
}
</style>

<header>
         
        <div class="header-logo">

          <!--  <form action="../views/login-error.jsp" method="post"><input type="image" src="../views/image/T-logo.png" class="logo"></form> -->

           <div class="header-left">
            
                 <h3>(ようこそ${loginBean.name}さん。)</h3>
	             
           </div>
           
           <h1>管理者画面</h1>

           <div class="header-right" style="display:inline-flex">

	             <form action="../views/login-error.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="bag" value="LOG OUT"></form>
	             

           </div>

       </div>

 </header>


<div class="main">
<%-- 
	<h3 class="header-left">(ようこそ${loginBean.name}さん。)</h3>
	<a class="header-right"
		onclick="location.href='../jp.co.aforce.act/ShopLogout.action'">ログアウト</a> --%>

	<div class=container>


		<div class="form">
			<form action="../src/allSearch" method="post">
				<button type="submit"
					class="click btn-gradation">商品情報一覧表示</button>
			</form>
			<button type="button"
				class="click btn-gradation"
				onclick="location.href='../views/regist.jsp'">商品情報新規登録</button>
			<button type="button"
				class="click btn-gradation"
				onclick="location.href='../views/update.jsp'">商品情報変更</button>
			<button type="button"
				class="click btn-gradation"
				onclick="location.href='../views/delete.jsp'">商品情報削除</button>

		</div>

	</div>

</div>
>

<%@include file="../footer.html"%>