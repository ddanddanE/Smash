<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardlist</title>
</head>
<body>

<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>경기 장소</th>
			<th>경기 날짜</th>
			<th>종목</th>
		</tr>
		<c:forEach var="blist" items="${blist}">
		<tr>
			<td>${blist.Board_Num}</td>
			<td>${blist.Board_Title}</td>
			<td>${blist.Board_Sport_Address}</td>
			<td>
				<fmt:formatDate value="${blist.Board_ReservationDate}" pattern="yyyy-MM-dd" />
			</td>
			<td>${blist.Board_Category}</td>
		</tr>
		</c:forEach>
	</table>

	

</body>
</html>