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
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
body {
  color: #666;
  font: 14px/24px "Open Sans", "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", Sans-Serif;
}
table {
  border-collapse: separate;
  border-spacing: 0;
  width: 100%;
}
th,
td {
  padding: 6px 15px;
}
th {
  background: #42444e;
  color: #fff;
  text-align: left;
}
tr:first-child th:first-child {
  border-top-left-radius: 6px;
}
tr:first-child th:last-child {
  border-top-right-radius: 6px;
}
td {
  border-right: 1px solid #c6c9cc;
  border-bottom: 1px solid #c6c9cc;
}
td:first-child {
  border-left: 1px solid #c6c9cc;
}
tr:nth-child(even) td {
  background: #eaeaed;
}
tr:last-child td:first-child {
  border-bottom-left-radius: 6px;
}
tr:last-child td:last-child {
  border-bottom-right-radius: 6px;
}




</style>

</head>
<body>

<div class="container my-5">
			<a>총 신고 개수 : ${count }</a> <br>
			<a>로그인된 ID : ${sessionScope.id }</a>

		<table class="table">
					<thead>
						<tr>
							<th>글번호</th>
							<th>신고제목</th>
							<th>신고내용</th>
							<th>신고한 사람</th>
							<th>신고 당한 사람</th>
							<th>신고날짜</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${sel }" var="bo">
							<tr class="odd gradeX">
								<td><c:out value="${bo.report_num }"/></td>
								<td><c:out value="${bo.report_title }" /></td>
								<td><a href="/report/admin_read?report_num=${bo.report_num }&report_id=${bo.report_id}">
								${bo.report_reason}</a></td>
								<td>${bo.report_rival}</td>
								<td>${bo.report_id }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${bo.report_date }"/></td>
							</tr>
						</c:forEach>
						
						
					</tbody>
					
					

				</table>
</div>
</body>
  <%@include file="../includes/footer.jsp" %>    
</html>