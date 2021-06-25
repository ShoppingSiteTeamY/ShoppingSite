<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WEAR HOUSE HOME</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">

</head>
<style>

.flat.border {
  position: relative;
  text-align: center;
  /* 中央揃え */
  display: block;
  margin:0px 5px 0px 5px;
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
  cursor:pointer;
  
}
.flat.border:hover {
  background: grey;
  color: #fff;
}
.flat.border:active, .flat.border:focus {
  top: 2px;

}

*{
    margin: 0;
    padding: 0;
  }
  html{
    font-size: 16px;
  }
  body {
    font-family: Verdana, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
  }
  header, footer, nav, menu, article, aside, section, details, figcaption, figure{
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
  i{
    font-style: normal;
  }

  *{box-sizing:border-box;}

  body{

    background-color: #fff;
    width: 100%;

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

  .header-left{

    float: left;
    padding: 25px;

  }

  .header-right{

    float: right;
    padding: 25px;
    margin-right: 5px;

  }
  
  .header-space{
  
    margin:0px 5px;
  
  }

  .shop-wrapper{

    position: fixed;
    right:0;
    background-color: rgb(255, 255, 255);
    z-index:12;
    width:250px;
    height:600px;
    text-align: center;
    border:solid 2px #afafaf;
    border-radius:5px;
   

  }

  .cart{
    display: none;
  }

  .total-quantity{
    
    padding: 5px 3px;
    margin:  10px 30px;
    border:solid 2px #c4c4c4;
    
  }

　.total-payment{

  }

  .sub-total{

  

  }

  .shipment{

    padding: 10px 10px;
    margin: 10px 20px;
    color: #232323;
    background: #ffffff;
    border-bottom: solid 2px #9e9e9e;

  }

  .pay{
    padding: 10px 10px;
    margin: 10px 20px;
    color: #232323;
    background: #ffffff;
    border-bottom: solid 2px #9e9e9e;
  }

  .method{
    
    margin: 10px 20px;
    color: #232323;
    background: #ffffff;
    border: solid 2px #9e9e9e;
  }

  #method{
    
    


  }

  .top-bottom{

    position:fixed;
    top:70px; 
    background-color:rgba(255,255,255,1);
    z-index:4;
    width:100%;
    height:250px;
    display: none;

}


  .header-bottom1,.header-bottom2,.header-bottom3,.header-bottom4,.header-bottom5,.header-bottom6{

    position:fixed;
    top:70px; 
    background-color:rgba(255,255,255,1);
    z-index:7;
    height:250px;
    display: none;

  }

  .header-detail{

    margin-left:120px;
    width:100%;
    float: left;

  }

  .td{

    color: #000;
    display: inline-block;
    padding:7px 0;

  }

  .detail-form{

    width:60px;

  }

  .hm-wrapper{

    position: absolute;
    left:400px;
    width:900px;
    z-index:6;

  }

  .hm-item{
   
    width:200px;
    height:110px;
    float: left;
    padding-right:30px;
    text-align:center;
    color: #000;
    
  }

  .hm{

    width:130px;
    height:130px;

  }


  .container{
  
    padding: 50px 20px;
    width: 1200px;
    margin: 0 auto;
    height: 1800px;

  }

  .top-wrapper{

    width: 1150px;
    margin: 0 auto;
    padding:50px 0;
   
  }

  .item{

    width: 270px;
    height:330px;
    margin: 0px 7px;
    float: left;
    text-align: center;
    padding-top:40px ;

  }

  .sub-title{

    font-size:20px ;
    text-align: center;
    color: #000;
    font-weight: bold;

  }

  .number{

    width: 100%;
    margin: 0 auto;
    padding-top:80px;
    padding-right:10px;
    text-align: center;
    font-size: 20px;
    
  }

  .numbers{

    padding:3px 6px;
    color: #000;
    cursor:pointer;

  }

  .next-page{

    height: 40px ;
    padding:20px 0 80px 0;
    margin: 20px;

  }

  footer{

    height:100px;
    width: 100%;
    background-color: #fff;
    padding-top: 30px;

  }

  /*コピーライト　C　２０２１ WEAR HOUSE*/

  .footer-center{

    padding-top:100px;
    padding-right:10px ;
  
  }

  .footer-center p{

    text-align: center;
    font-size: 8px;
    
  }

  /*サインアップ*/

  .footer-left{

    float: left;
    margin:50px 0px 0px 40px; 

  }

  .input{

    margin: 20px;
    padding:20px;

  }

  /*FontAwesomeを利用したリンク*/

  .footer-right{

    float: right; 

  }

  .fab{
    
    padding-top: 20px;
    padding-right:15px;
    margin: 20px;
    font-size:30px ;
    color: #000;

  }

  .footer-line{

    height:50px;
    background-color: #fff;

  }
  
  /*写真にカーソルを合わせると値段が表示される*/
  
  .price{

    font-weight:normal;
    color: #000;
    opacity:0;

  }

  .hm-price{

    font-weight:normal;
    color: #000;
    opacity:0;

  }

  img:hover{

    opacity:0.7;

  }

  .item:hover .price{

    opacity:0.9 ;
    transition:1s;

  }

  .hm-item:hover .hm-price{

    opacity:0.9 ;
    transition:1s;

  }

  /*リンク先のアンダーライン*/

  a{

    text-decoration: none;

  }

  a:hover{

    text-decoration: underline;

  }

  img{

    width: 260px;
    height:270px;
    
    

  }


</style>
<script>
$(function(){

	  $('#M').hover(function()
	  {

	    $('#hb1,#topb').show();

	  });

	  $('#New').hover(function()
	  {

	    $('#hb1').show();

	  },function(){

	    $('#hb2,#hb3,#hb4,#hb5,#hb6').hide();

	  });
	   

	  $('#Tee').hover(function()
	  {

	    $('#hb2').show();

	  },function(){

	    $('#hb1,#hb3,#hb4,#hb5,#hb6').hide();

	  });

	  $('#Long').hover(function()
	  {

	    $('#hb3').show();

	  },function(){
	    $('#hb1,#hb2,#hb4,#hb5,#hb6',).hide();

	  });

	  $('#Knit').hover(function()
	  {

	    $('#hb4').show();

	  },function(){
	    $('#hb1,#hb2,#hb3,#hb5,#hb6').hide();

	  });

	  $('#Shirt').hover(function()
	  {

	    $('#hb5').show();

	  },function(){

	    $('#hb1,#hb2,#hb3,#hb4,#hb6').hide();

	  });

	  $('#Jacket').hover(function()
	  {

	    $('#hb6').show();

	  },function(){

	    $('#hb1,#hb2,#hb3,#hb4,#hb5').hide();

	  });



	  $('#con').hover(function(){

	    $('#hb1,#hb2,#hb3,#hb4,#hb5,#hb6,#topb',).fadeOut(500);

	  });


	  $('#bag').hover(function()
	  {

	    $('#shop').show();

	  });

	  $('#con').hover(function()
	  {

	    $('#shop').hide();

	  });



	});


</script>

<body>


    <header>
         
        <div class="header-logo">

           <form action="../src/UserAllSearch" method="post"><input type="image" src="../views/image/T-logo.png" class="logo"></form>

           <div class="header-left" style="display:inline-flex">
            
	             <form action="#" method="post" class="header-space"><input type="submit" class="reset flat border" id="M" value="RECOMMEND"></form>
	             <form action="../src/ranking" method="post" class="header-space"><input type="submit" class="reset flat border" id="W" value="RANKING"></form>
	             <form action="../src/lowPrice" method="post" class="header-space"><input type="submit" class="reset flat border" id="A" value="LOW PRICE"></form>
	             <form action="../src/highPrice" method="post" class="header-space"><input type="submit" class="reset flat border" id="C"value="HIGH PRICE"></form>
                 
           </div>

           <div class="header-right" style="display:inline-flex">

　　　　　　　      <form action="../src/keyWord" method="post" class="header-space" style="display:inline-flex">
					<input type="text" class="#" name="keyword" placeholder="Input any words!">
					<input type="submit" class="reset flat border up" value="SEARCH">
				 </form>
				 <form action="#" method="post" class="header-space"><input type="submit" class="reset flat border" id="map" value="MAP"></form>
	             <form action="../src/cart" method="post" class="header-space"><input type="submit" class="reset flat border" id="bag" value="SHOPPING CART"></form>
	             <form action="../views/logout-out.jsp" method="post" class="header-space"><input type="submit" class="reset flat border" id="bag" value="LOG OUT"></form>
	             

           </div>

       </div>

    </header>

    <%-- <div id="shop" class="cart">

      <div class="shop-wrapper">

        <div class="total-quantity">
            ようこそ、${loginBean.name}さん。
            #アイテムがカートに入っています
        </div>

        <div class="total-payment">

          <div class="sub-total">
            <p>商品合計（税込）</p>
            <p>1,800円</p>
          </div>

          <div class="shipment">
            <p>発送費（一律）</p>
            <p>800円</p>
          </div>

          <div class="pay">
            <p>合計金額</p>
            <p>2,600円</p> 
          </div>
                   
          <div class="how-to-pay">
            <p>お支払い方法を選択</p>
            <div class="method">
              <a href="#"><i class="fab fa-cc-visa" id=method></i></a>
              <a href="#"><i class="fab fa-cc-jcb" id=method></i></a>
              <a href="#"><i class="fab fa-cc-paypal" id=method></i></a>
              <a href="#"><i class="fab fa-cc-mastercard" id=method></i></a>
            </div>
          </div>

        </div>   

      </div>

    </div> --%>

    <div id="topb" class="top-bottom">

      <div class="header-detail">

        <div class="deatail-form">
          <a href="#" class="td" id="New">NEW ARRIVAL</a>
        </div>
        
        <div class="deatail-form">
          <a href="#" class="td" id="Tee">TEE'S</a>
        </div>
        
        <div class="deatail-form">
          <a href="#" class="td" id="Long">LONG TEE'S</a>
        </div>
        
        <div class="deatail-form">
          <a href="#" class="td" id="Knit">KNIT'S</a>
        </div>
        
        <div class="deatail-form">
          <a href="#" class="td" id="Shirt">SHIRT'S</a>
        </div>
        
        <div class="deatail-form">
          <a href="#" class="td" id="Jacket">JACKET'S & VEST'S</a>
        </div>


      </div>

    </div>

    <div id="hb1" class="header-bottom1">

      <div class="header-img">
      
        <div class="hm-wrapper">
          <div class="hm-item">
            <a href="#"><img src="../views/image/hm1.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hm2.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hm3.jpeg" class="hm"></a>
            <p>STOCK BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hm4.jpeg" class="hm"></a>
            <p>STOCK LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
        </div>

      </div>

    </div>

    <div id="hb2" class="header-bottom2">

      <div class="header-img">
      
        <div class="hm-wrapper">
          <div class="hm-item">
            <a href="#"><img src="../views/image/ht1.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/ht2.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/ht3.jpeg" class="hm"></a>
            <p>STOCK BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/ht4.jpeg" class="hm"></a>
            <p>STOCK LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
        </div>

      </div>

    </div>

    <div id="hb3" class="header-bottom3">

      <div class="header-img">
      
        <div class="hm-wrapper">
          <div class="hm-item">
            <a href="#"><img src="../views/image/hlt1.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hlt2.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hlt3.jpeg" class="hm"></a>
            <p>STOCK BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hlt4.jpeg" class="hm"></a>
            <p>STOCK LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
        </div>

      </div>

    </div>

    <div id="hb4" class="header-bottom4">

      <div class="header-img">
      
        <div class="hm-wrapper">
          <div class="hm-item">
            <a href="#"><img src="../views/image/hk1.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hk2.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hk3.jpeg" class="hm"></a>
            <p>STOCK BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hk4.jpeg" class="hm"></a>
            <p>STOCK LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
        </div>

      </div>

    </div>

    <div id="hb5" class="header-bottom5">

      <div class="header-img">
      
        <div class="hm-wrapper">
          <div class="hm-item">
            <a href="#"><img src="../views/image/hs1.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hs2.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hs3.jpeg" class="hm"></a>
            <p>STOCK BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hs4.jpeg" class="hm"></a>
            <p>STOCK LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
        </div>

      </div>

    </div>

    <div id="hb6" class="header-bottom6">

      <div class="header-img">
      
        <div class="hm-wrapper">
          <div class="hm-item">
            <a href="#"><img src="../views/image/hjv1.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hjv2.jpeg" class="hm"></a>
            <p>BIG LOGO TWILL LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hjv3.jpeg" class="hm"></a>
            <p>STOCK BUCKET HAT</p>
            <p class="hm-price">¥8,800</p>
          </div>
          <div class="hm-item">
            <a href="#"><img src="../views/image/hjv4.jpeg" class="hm"></a>
            <p>STOCK LOW PRO CAP</p>
            <p class="hm-price">¥7,700</p>
          </div>
        </div>

      </div>

    </div>

      <div class="container" id="con">

        <div class="top-wrapper">

          <div class="sub-title">・・YOU CAN CHOOSE ALL OF THEM・・</div>

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
            
        </div>
  
      </div>
      
      <div class="next-page">

        <div class="number">

          <div style="display:inline-flex">
            <form action="../src/UserAllSearch" method="post"><input type="submit" class="numbers" value="1"></form>・
            <form action="../src/UserAllSearch2" method="post"><input type="submit" class="numbers" value="2"></form>・
            <form action="#" method="post"><input type="submit" class="numbers" value="3"></form>・
            <form action="#" method="post"><input type="submit" class="numbers" value="4"></form>
          </div>
          
          <!--p>
          <a href="#">1</a><br><span>・</span>
          <a href="#">2</a><br><span>・</span>
          <a href="#">3</a><br><span>・</span>
          <a href="#">4</a><br><span>・</span>
          </p-->
    
        </div>

      </div> 

   <footer>

      <div class="footer-logo">

        <div class="footer-left">
          
          ようこそ${loginBean.name}さん
          
        </div>

        <div class="footer-right">

          <div class="icon-wrapper">
    
            <a href="https://www.apple.com/jp/apple-pay/"><i class="fab fa-apple-pay"></i></a>
            <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
            <a href="https://twitter.com/i/flow/signup"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/accounts/emailsignup/?hl=en"><i class="fab fa-instagram"></i></a>
            <a href="https://www.youtube.com/account"><i class="fab fa-youtube"></i></a>  
    
          </div>
    
        </div>

        <div class="footer-center">

          <p>©︎　2021 WEAR HOUSE</p>

        </div>
    
      </div>

  </footer>

    <div class="footer-line">

    </div>
      
</body>
</html>