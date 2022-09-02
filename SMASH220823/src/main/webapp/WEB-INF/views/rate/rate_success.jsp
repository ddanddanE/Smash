<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.a{
 text-align: center;
}

span{
font-size: 2em;
	color: transparent;
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.button{
	width: 140px;
	height: 45px;
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
	margin-top: 30px;
	margin-left: 100px;
}

.button:hover {
	background-color: #008000;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
</style>




</head>
<body>

	<div class="a">
	<img src="/resources/upload/${img}" width="200px" height="200px" />
	<br> ${rival}의 평점은 <span>★</span>${avg }
	<br>
	</div>
	<button class="button" onclick="bbb()">창 닫기</button>

<script>

opener.location.reload();

function bbb(){
	
	window.close();
}
</script>	

</body>
</html>