<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SMASH MainPage</title>
</head>
<body>
${user.user_id}
	
	<c:choose>
		<c:when test="${user.user_id == null}">
			<form action="/user/login" method="post">
				<input type="submit" value="로그인">
			</form>
		</c:when>		
		<c:when test="${user.user_id != null}">
			<form action="/user/logout" method="post">
				<input type="submit" value="로그아웃">
			</form>
		</c:when>
	</c:choose>
	
</body>
</html>