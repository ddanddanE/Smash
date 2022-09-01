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
<script type="text/javascript">
	function goPost() {
		let makeForm = document.createElement('form');
		makeForm.setAttribute('methode','post');
		makeForm.setAttribute('action','user/signup/agree'');
		document.body.appendChild(makeForm);
		makeForm.submit();
	}
</script>
<body>
	<div>
		<h1>logo</h1>
	</div>
	<div>
		<form action="/user/logincheck" method="post">
			ID: <input type="text" placeholder="ID" name="User_Id">
			<br>
			PW: <input type="password" placeholder="PW" name="User_Pw">
			<br>
			<input type="submit" value="로그인">
		</form>
	</div>
	<div>
		<a href="/user/signup/agree">Sign Up</a> / <a href="/user/findID">Find ID</a> / <a href="/user/findPW">Find PW</a>
	</div>
</body>
</html>