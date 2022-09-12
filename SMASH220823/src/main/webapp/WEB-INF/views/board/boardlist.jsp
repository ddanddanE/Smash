<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>리스트 출력</h2>
<table border="1">
	<tr>
		<th>사진</th>
		<th>제목</th>
		<th>게임날짜</th>
		<th>주소</th>
		<th>종목</th>
	</tr>
	
	<c:forEach var="match" items="${list}">
		<tr>
			<td>${match.Board_Sport_Address_IMG }</td>
			<td>${match.Board_Title }</td>
			<td><fmt:formatDate value="${match.Board_ReservationDate}" pattern="yyyy년 MM월 dd일"/></td>
			<td>${match.Board_Sport_Address }</td>
			<td>${match.Board_Category }</td>
	
	</c:forEach>
</table>



</body>
</html>