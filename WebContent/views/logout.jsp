<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../header.html"%>  
<style>
body {
	margin: 0;
	padding: 0;
	color: #fff;
	font-family: Arial;
	font-size: 12px;
	background-image: url(../views/image/back2.jpg);
	background-size: cover;
	z-index: -1;
}

.body {
	background-image: url(../views/image/back2.jpg);
	background-size: cover;
	width: 100%;
	margin: 0 auto;
	height: auto;
	z-index: 0;
}

.grad {
	position: absolute;
	top: -90px;
	left: -20px;
	right: -20px;
	bottom: 0px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(0, 0
		, 0, 0)), color-stop(100%, rgba(0, 0, 0, 0.65)));
	/* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header {
	position: absolute;
	top: calc(50% - 45px);
	left: calc(50% - 100px);
	z-index: 2;
}

.header div {
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span {
	color: #ffff2b !important;
}

.login {
	position: absolute;
	top: calc(52% - 0px);
	left: calc(50% - 135px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=submit] {
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #555;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login button[type=button] {
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #555;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover {
	opacity: 0.8;
}

.login input[type=submit]:active {
	opacity: 0.6;
}

.login button[type=button]:hover {
	opacity: 0.8;
}

.login button[type=button]:active {
	opacity: 0.6;
}
</style>

<div class="body">
	<div class="grad">
		<div class="header">
			<div>
				LogOut<span>Form</span>
			</div>
		</div>
		<div class="login">
			<form action="../jp.co.aforce.act/ShopLogout.action" method="post" class="log-out">
				<input type=submit value="LogOut">
			</form>
			<button type="button" onclick="history.back()">back</button>
		</div>
	</div>
</div>

<%@include file="../header.html"%>