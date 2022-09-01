<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<form action="/user/signup" method="post">
		<textarea rows="10" cols="10" readonly="readonly">
		1번 동의
		</textarea>
		<br>
		<input type="checkbox" value="1" class="firagr">1번 동의
		<br>
		<textarea rows="10" cols="10" readonly="readonly">
		2번 동의
		</textarea>
		<br>
		<input type="checkbox" value="1" class="secagr">2번 동의
		<br>
		
		<textarea rows="10" cols="10" readonly="readonly">
		3번 동의
		</textarea>
		<br>
		<input type="checkbox" value="1" class="trdagr">3번 동의
		<br>
		
		<input type="checkbox" class="allagr">전체 동의
		<br>
		<input type="hidden" class="resultagr"  name ="resultagr">
		<input type="submit" value="다음" onclick="addagr()">
	</form>

</body>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function addagr() {
		let agrvalue1 = document.querySelector(".firagr").value;
		let agrvalue2 = document.querySelector(".secagr").value;
		let agrvalue3 = document.querySelector(".trdagr").value;
		
		document.querySelector(".resultagr").value= agrvalue1+agrvalue2+agrvalue3;
	}
	
	$(".allagr").change(function(){
		  if($(".allagr").is(":checked")){
		 	 $(".firagr").prop("checked", true);
		 	 $(".secagr").prop("checked", true);
		 	 $(".trdagr").prop("checked", true);
		  }else{
		  	$(".firagr").prop("checked", false);
		  	$(".secagr").prop("checked", false);
		  	$(".trdagr").prop("checked", false);
		  }
		});
</script>
</html>