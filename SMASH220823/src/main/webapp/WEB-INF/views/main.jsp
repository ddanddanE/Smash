<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
div{
float: right;
border:  3px solid black;
}
</style>
</head>
<body>
<div><c:import url="/WEB-INF/views/include/login.jsp"/></div>
<H1>MACHING</H1>

result<br>
<form action="/match/result" method="get">
<input type="hidden" name="NOTICE_MSG_NO"  value="4"/>
<input type="submit" value="end">
</form>
<br>
mypage<br>
<form action="/user/myPage" method="get">
<input type="hidden" name="id"  value="${id}"/>	
<input type="submit" value="end">
</form>

	<form action="/user/login" method="post">
		<input type="submit" value="로그인">
	</form>
</body>
</html>