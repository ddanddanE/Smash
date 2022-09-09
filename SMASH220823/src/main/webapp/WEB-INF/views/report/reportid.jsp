<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container my-5">

	<form action="/report/reportlist" method="post">

		user_id = <input type="text" name="user_id">
	
	

		<button type="submit">확인</button>

	</form>

</div>
</body>

<%@include file="../includes/footer.jsp"%>
</html>