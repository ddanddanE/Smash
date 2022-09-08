<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="../includes/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  

<div class="container my-5">
	<form action="logout" method="post">
	 &nbsp;&nbsp;&nbsp;&nbsp;로그인된 id: ${sessionScope.id }
	 <button type="submit" >로그아웃</button>
	</form>
	</div>
</body>
  <%@include file="../includes/footer.jsp" %>  
</html>