<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<body>
	<form action="/user/findPWresult" method="post">
		아이디<input type="text" name="User_id">
		이름<input type="text" name="User_name">
		<br>
		주민등록번호 <input type="text" maxlength="6" id="firResi">-<input type="password" maxlength="1" id="secResi">●●●●●●
		<input type="text" id=Resi name="User_resi">
		<br>
		휴대전화<input type="text" placeholder="-를 빼고입력해주세요" name="User_PhoneNum">
		<input type="submit" value="찾기">
		<input type="reset" value="취소">
	</form>
</body>
<script>
	$("#firResi").keyup(function(){
		$("#Resi").val($("#firResi").val()+"-"+$("#secResi").val()+"%");
	});
	
	$("#secResi").keyup(function(){
		$("#Resi").val($("#firResi").val()+"-"+$("#secResi").val()+"%");
	});
</script>
</html>