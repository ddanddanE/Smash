<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<style>

#myform fieldset {
	display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
}


#myform input[type=radio] {
	display: none;
	margin-left: 30px;
}

#myform label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
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
	margin-left: 80px;
}

.button:hover {
	background-color: #008000;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
#span{
	margin-left: 80px;
}
textarea {
			width: 65%;
			height: 150px;
			padding: 10px;
			box-sizing: border-box;
			border: solid 2px #1E90FF;
			border-radius: 5px;
			font-size: 16px;
			resize: both;
			
		}
</style>

<script type="text/javascript">
	function check() {

		var cbList_0 = document.getElementById("che");
		var textBox1_ = document.getElementById("content");

		if (cbList_0.checked) {
			textBox1_.disabled = false;
			textBox1_.focus();
		} else {
			textBox1_.disabled = true;
			textBox1_.value="";
		}
	}
</script>
</head>
<body>

	<form action="/rate/rate_success" method="post" class="mb-3" id="myform"
		name="myform">
		<input type="hidden" value="${param.NOTICE_MSG_NO}" name="NOTICE_MSG_NO"/>
		<input type="hidden" value="${id}" name="id" /> 
		<input type="hidden" value="${rivalName}" name="rival" /> 
		<input
			type="hidden" value="${userName}" name="userName" />
		<fieldset>
			 <input type="radio" name="rating" value="5"
				id="rate1"><label for="rate1">★</label> <input type="radio"
				name="rating" value="4" id="rate2"><label for="rate2">★</label>
			<input type="radio" name="rating" value="3" id="rate3"><label
				for="rate3">★</label> <input type="radio" name="rating" value="2"
				id="rate4"><label for="rate4">★</label> <input type="radio"
				name="rating" value="1" id="rate5"><label for="rate5">★</label>
		</fieldset>
		<br><span id="span">별점을 선택해주세요</span>
		<br> 코멘트:
		<textarea id="content" name="content" placeholder="체크 시  입력가능" disabled></textarea>
		<input type="checkbox" id="che" name="che" onclick="check()" /> </br>
		 <input type="submit" value="보내기" class="button" />
	</form>

</body>
</html>