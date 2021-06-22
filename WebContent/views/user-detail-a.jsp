<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WEAR HOUSE Detail</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">

</head>
<style>

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

    height:70px;
    width: 100%;
    background-color: #fff;
    color: #000;


  }

  .header-left{

    float: left;
    padding: 25px;


  }

  .sub{

   padding-right:10px ;


  }

  .logo{

   float: left;
   width: 90px;
   height: 65px;
   


  }

  .header-right{

   float: right;
   padding: 25px;
   margin-right: 5px;


  }

  .container{
  
    padding: 100px 20px;
    width: 1200px;
    margin: 0 auto;
    height: 1800px;
 
 
   }

   a{

   text-decoration: none;
   color: #000;


   }

   a:hover{

   text-decoration: underline;


   }
   
   footer{

    height:100px;
    width: 100%;
    background-color: #fff;
    padding-top: 30px;

}

.footer-left{

  float: left;
  
  

}

.footer-center{

  padding-top:100px;
  padding-right:30px ;
 


}

.footer-center p{

  text-align: center;
  font-size: 8px;
  

}

.input{

  margin: 20px;
  padding:20px;


}

.footer-right{

 float: right; 
 


}

.icon-wrapper{

  

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

img:hover{

 opacity:0.7;


}

.t {
  
  width:700px;
  height:750px;


}

.container{

  width:1200px;
  height:4000px;



}

.top-wrapper{
 
  position:relative;
  padding-top:0px;
  height:3800px;

} 

.main-left{

  position: absolute;
  top:0px;
  bottom:200px;


}


.main-right{

  position: sticky;
  left:800px;
  top:200px;
  text-align: left;
  float: right;
  font-size:13px;
  z-index:5;
  padding-bottom:100px;
  padding-right:50px;

}

.small{
  
  float: left;
  width:80px;
  height:90px;



}

.btn-wrapper{

  padding:10px 0;

}

.btn{

  padding:5px 10px;
  background-color:rgb(68, 155, 68);
  display: inline-block;
  font-size:15px;

}

.quan{

  display: inline-block;

}

.output-box{

   padding:5px 10px;
   margin:5px 0;
   border:double 5px #cccccc;

}

.small-wrapper{
 
  padding:5px 0 0 10px;

}

.size-wrapper{

  margin-top:120px;
  


}


.size{

 border:2px solid grey;
 margin-bottom:5px;
 margin-right:5px;
 padding:15px;


}


</style>
<body>

    <header>
         
      <div class="header-logo">

          <a onclick="location.href='../views/user.jsp'"><img src="../views/image/T-logo.png" class="logo"></a>

          <div class="header-left">
                
            <a href="#" class="sub">MEN'S</a>
            <a href="#" class="sub">WOMEN'S</a>
            <a href="#" class="sub">ACCESSORIES</a>
            <a href="#" class="sub">COLLECTIONS</a>

          </div>

          <div class="header-right">

            <a href="#" class="sub">SEARCH</a>
            <a href="#" class="sub">ACCOUNT</a>
            <a href="T-s.map.html" class="sub">MAP</a>
            <a href="#" class="sub">SHOPPING BAG</a>

          </div>

      </div>

    </header>

    <div class="container">

         <div class="top-wrapper">

          <div class="main-right">

            <p>HAWAIIAN PATTERN SHIRT</p>
            <br>
            <p>¥9,480(税込)</p>

            <div class="small-wrapper">
              <a onclick="location.href='../views/user-detail.jsp'"><img src="../views/image/t1.jpeg" class="small"></a>
              <a onclick="location.href='../views/user-detail-a.jsp'"><img src="../views/image/t1a.jpeg"class="small"></a>
            </div>
            
            <div class="size-wrapper">
              <a href="#" class="size">S</a>
              <a href="#" class="size">M</a>
              <a href="#" class="size">L</a>
              <a href="#" class="size">LL</a>
            </div>
            　　　　　　　
            <div class="btn-wrapper">
              <form action="#" id="wrap">
              <input type="text" placeholder="数量" class="quan" name="quantity">
              <input type="submit" class="btn" value="カートに入れる">
            </form>
            </div>
  
            <div class="output-box">
            <p id="output"></p>
            <p id="total">
            </div>
    

            <p>100% レーヨン</p>
            <p>インポート</p>
            <br>
            <p>着用サイズ: M</p>
            <p>モデル: 身長182cm, 胸囲91cm, ウエスト78cm, 股下</p>
            <p>81cm</p>
            <br>
            <p>*必ずサイズガイドをご確認ください。</p>
            <br>
            <a href="#" class="guide">> FIT DETAIL</a>
            <br>
            <a href="#" class="guide">> FIT GUIDE</a>
            <br>
            <a href="#" class="guide">> 再入荷リクエストについて</a>

          </div>

          <div class="main-left">

            <img src="../views/image/t1a.jpeg" class="t">
            <img src="../views/image/t1a-1.jpeg" class="t">
            <img src="../views/image/t1a-2.jpeg" class="t">
            <img src="../views/image/t1a-3.jpeg" class="t">
            <img src="../views/image/t1a-4.jpeg" class="t">
              
          </div>
         
        </div>

    </div>

    <footer>

      <div class="footer-logo">

        <div class="footer-left">
              
          <input type="text" placeholder="NEW SIGNUP" class="input">

          <!--a href="#" class="sub">MEN'S</!--a>
          <a href="#" class="sub">WOMEN'S</a>
          <a href="#" class="sub">ACCESSORIES</a>
          <a-- href="#" class="sub">COLLECTIONS</a-->
          
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

          <p>©︎　2021 WARE HOUSE</p>

        </div>

      </div>

    </footer>
    
       <div class="footer-line">
     
       </div>
    
      <script>
        'use strict'
  
        function totalPrice(inputInt){
  
          const price=9480;
          let total = inputInt*price;
          return total;
  
        };
  
        document.getElementById('wrap').onsubmit = function(event){
  
          event.preventDefault();
          let inputInt = document.getElementById('wrap').quantity.value;
          console.log('クリックされました');
          document.getElementById('output').textContent = inputInt+'着購入ありがとうございます。合計金額取得中…';
          console.log(totalPrice(inputInt));
          document.getElementById('total').textContent = '合計金額は'+totalPrice(inputInt)+'円です。';
          
        };
  
  
      </script>
    
</body>
</html>