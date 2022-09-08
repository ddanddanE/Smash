<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <%@include file="../includes/header.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
table.type03 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 3px solid #369;
	margin: 20px 10px;
}

table.type03 th {
	width: 147px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #153d73;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table.type03 td {
	width: 100px;
	padding: 10px;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}
</style>



</head>
<body>
<div class="container my-5">

	<table class="type03">
		<span>${read.report_id }의 누적된 신고 횟수 : ${count }</span>

		<tr>
			<th>글번호</th>
			<td><input type="text"
				value='<c:out value="${read.report_num }" />' readonly="readonly"></td>
		</tr>

		<tr>
			<th>신고 글 제목</th>
			<td><input type="text"
				value='<c:out value="${read.report_title }" />' readonly="readonly"></td>
		</tr>

		<tr>
			<th>신고한사람</th>
			<td><input type="text"
				value="<c:out value="${read.report_rival }" />" readonly="readonly"></td>

		</tr>

		<tr>
			<th>신고당한사람</th>
			<td><input type="text"
				value="<c:out value="${read.report_id }" />" readonly="readonly"></td>
		</tr>

		<tr>
			<th>날짜</th>
			<td><input type="text"
				value="<fmt:formatDate value="${read.report_date }" pattern="yyyy-MM-dd" />"
				readonly="readonly"></td>
		</tr>

		<tr>
			<th>제재내용</th>
			<td><textarea rows="15" cols="20" readonly="readonly"><c:out
						value="${read.report_reason }" /></textarea></td>
		</tr>



	</table>
	<button type="button" onclick="history.go(-1)">목록</button>

</div>
</body>

 
  
</html>