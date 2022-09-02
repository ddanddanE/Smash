<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

.button, .button3{
	width: 70px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	
}


.button:hover {
	background-color: #008000;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-3px);
}


</style>
</head>
<body>

${user.user_id }님 환영합니다<br>
<input type="button" class="button" value="마이페이지" onclick="window.open('/user/myPage?user.user_id=${user.user_id}','ppp','width=800,height=800,left=500,top=200,resizeable,scrollbars')"/>
<button class="button" id="button" onclick="location.href='/log'">로그아웃</button>
</body>
</html>