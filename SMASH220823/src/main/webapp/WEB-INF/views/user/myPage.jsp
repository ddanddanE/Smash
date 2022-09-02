<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	color: #666;
	font: 14px/24px "Open Sans", "HelveticaNeue-Light",
		"Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial,
		"Lucida Grande", Sans-Serif;
}

table {
	border-collapse: separate;
	border-spacing: 0;
	width: 100%;
}

th, td {
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

img {
	margin: auto;
}

.button, .button3 {
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.button2 {
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #a0a0a0;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.button3:hover, .button4:hover {
	background-color: #DC143C;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-3px);
}

.button:hover {
	background-color: #008000;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-3px);
}

.button4 {
	text-align: center;
	margin: auto;
	display: block;
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}
</style>


</head>
<body>
	MYPAGE
	<table width="100%" border="1"
		class="table table-striped table-bordered table-hover"
		id="dataTables-example">
		<thead>
			<tr>
				<th>방장</th>
				<th>참가자</th>
				<th>장소</th>
				<th>대전일</th>
				<th>상태</th>
				<th>평점</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${lo  }" var="bo">
				<tr class="odd gradeX">

					<td><input type="hidden" value="${user.user_id }" name="user.user_id" /> <input
						type="hidden" value="${bo.NOTICE_MSG_NO}" name="NOTICE_MSG_NO" />
						<c:out value="${bo.NOTICE_MSG_USER}" /></td>
					<td><c:out value="${bo.NOTICE_MSG_RIVAL}" /></td>
					<td><c:out value="${bo.NOTICE_MSG_PLACE}" /></td>
					<td><fmt:formatDate value="${bo.NOTICE_MSG_TIME }"
							pattern="yy-MM-dd" /></td>
					<td><c:out value="${bo.NOTICE_MSG_STATUS}" /></td>
					<td><c:if test="${bo.NOTICE_MSG_URATE==0 }">
							<input type="button" class="button" value="평점주기"
								onclick="window.open('/rate/rate?NOTICE_MSG_NO=${bo.NOTICE_MSG_NO}&user.user_id=${user.user_id }&NOTICE_MSG_USER=${bo.NOTICE_MSG_USER}&NOTICE_MSG_RIVAL=${bo.NOTICE_MSG_RIVAL}','pp','width=350,height=400,left=500,top=200,resizeable,scrollbars')" />
							<button type="button" class="button3"
								onclick="popupReport1(2,'user3')">신고하기</button>
						</c:if> <c:if test="${bo.NOTICE_MSG_URATE==1 }">
							<input type="button" class="button2" value="평점주기"
								disabled="disabled" />
							<button type="button" class="button3"
								onclick="popupReport1(2,'user3')">신고하기</button>
						</c:if></td>
				</tr>
			</c:forEach>
			<c:forEach items="${lo2  }" var="bb">
				<tr class="odd gradeX">
					<td><c:out value="${bb.NOTICE_MSG_USER}" /></td>
					<td><c:out value="${bb.NOTICE_MSG_RIVAL}" /></td>
					<td><c:out value="${bb.NOTICE_MSG_PLACE}" /></td>
					<td><fmt:formatDate value="${bb.NOTICE_MSG_TIME }"
							pattern="yy-MM-dd" /></td>
					<td><c:out value="${bb.NOTICE_MSG_STATUS}" /></td>
					<td><c:if test="${bb.NOTICE_MSG_RRATE==0 }">
							<input type="button" class="button" value="평점주기"
								onclick="window.open('/rate/rate?NOTICE_MSG_NO=${bb.NOTICE_MSG_NO}&user.user_id=${user.user_id }&NOTICE_MSG_USER=${bb.NOTICE_MSG_USER}&NOTICE_MSG_RIVAL=${bb.NOTICE_MSG_RIVAL}','pp','width=350,height=400,left=500,top=200,resizeable,scrollbars')" />
							<button type="button" class="button3"
								onclick="popupReport1(2,'user3')">신고하기</button>
						</c:if> <c:if test="${bb.NOTICE_MSG_RRATE==1 }">
							<input type="button" class="button2" value="평점주기"
								disabled="disabled" />
							<button type="button" class="button3"
								onclick="popupReport1(2,'user3')">신고하기</button>
						</c:if></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<button class="button4" onclick="window.close()">닫기</button>


</body>

</html>