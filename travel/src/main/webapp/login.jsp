<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style type="text/css">
input {
	height: 30px;
	width: 80%;
	margin: 5px auto;
	border-radius: 5px;
	color: black;
	background: white;
	padding-left: 5px;
	font-family: FontAwesome, "Open Sans", Verdana, sans-serif;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
}

.btn {
	height: 40px;
	width: 82%;
	border-radius: 15px;
	border-color: black;
	margin: 5px auto;
	font-family: sans-serif;
	font-weight: 700;
	font-size: 10pt;
}

#loginbutton {
	background: black;
	color: white;
}

#insertbutton {
	background: white;
	color: black;
}

#center {
	width: 90%;
	margin: 30px auto;
	text-align: center;
}

.title {
	color: black;
	font-weight: bold;
	font-size: 20pt;
	text-align: center;
	padding-top: 40px
}

.myform {
	background: white;
	width: 50%;
	margin: auto;
	height: 450px;
	-webkit-box-shadow: 0px 0px 3px 1px rgba(38, 35, 128, 1);
	-moz-box-shadow: 0px 0px 3px 1px rgba(38, 35, 128, 1);
	box-shadow: 0px 0px 3px 1px rgba(38, 35, 128, 1);
}

.myform a {
	text-decoration: underline;
	color: black;
	font-family: sans-serif;
	font-size: 10px;
}

.t1 {
	font-size: 10px;
	margin-left: 10%;
	text-align: left;
}

.t2 {
	font-size: 15px;
}

input:focus {
	outline: none
}

input[type="checkbox"] {
	width: 15px;
	height: 15px;
	align-content: left;
	vertical-align: -3px;
}

::-webkit-input-placeholder {
	/* Chrome/Opera/Safari */
	color: #cccccc;
}

::-moz-placeholder {
	/* Firefox 19+ */
	color: #cccccc;
}

:-ms-input-placeholder {
	/* IE 10+ */
	color: #cccccc;
}

:-moz-placeholder {
	/* Firefox 18- */
	color: #cccccc;
}

@media screen and (max-width:500px) {
	.myform {
		width: 80%;
	}
}

@media screen and (max-width:800px) {
	.myform {
		width: 60%;
	}
}

.btn-social-login {
	margin-top: 10px;
	transition: all .2s;
	outline: 0;
	border: 1px solid transparent;
	padding: .4rem !important;
	border-radius: 50%;
	color: #fff;
}

.btn-social-login:focus {
	box-shadow: 0 0 0 .2rem rgba(0, 123, 255, .25);
}

.text-dark {
	color: #343a40 !important;
}
</style>
</head>
<body>
	<div class="myform">
		<div class="title">로그인</div>
		<div id="center">
			<form>
				<input type="text" placeholder="  아이디" /> 
				<input type="password" placeholder="  패스워드" />
			</form>
			<div class="t1">
				<input type="checkbox" name="" id=""> 아이디 저장
			</div>
			<button class="btn" id="loginbutton" type="submit">로그인</button>
			<button class="btn" id="insertbutton" type="submit">회원가입</button>
			<div class="t1">
				<a href="#">아이디 찾기 / 비밀번호 찾기</a>
			</div>
			<hr style="color: gray; margin-left: 5%; margin-right: 5%;">
			<div id="t2">
				<b>SNS 계정으로 로그인하기</b>
			</div>
			<div id="logo">
				<button class='btn-social-login' style='background: #1FC700'><i class="xi-2x xi-naver"></i></button>
				<button class='btn-social-login' style='background: #FFEB00'><i class="xi-2x xi-kakaotalk text-dark"></i></button>
				<button class='btn-social-login' style='background: #4267B2'><i class="xi-2x xi-facebook"></i></button>
				<button class='btn-social-login' style='background: #D93025'><i class="xi-2x xi-google"></i></button>
			</div>
		</div>
	</div>
</body>
</html>