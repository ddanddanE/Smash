<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<form name="frm" action="/Board_Write" method="post" class="type03">

		<table class="type03" width="100%">
			
			<tr>
				<th>Board_Id(작성자)</th>
				<td><input type="text" name="Board_Id" value="${sessionScope.id }" readonly="readonly"></td>

			</tr>

			<tr>
				<th>Board_Sport_Address(경기 장소)</th>
				<td><input type="text" name="Board_Sport_Address" value="${sessionScope.adress }"></td>

			</tr>
			
			<tr>
				<th>Board_Category(게임 종류)</th>
				<td>
				<select name="Board_Category">
					<option value="">종목</option>
					<option value="tennis">테니스</option>
					<option value="pingpong">탁구</option>
					<option value="badminton">배드민턴</option>
				</select>
				</td>

			</tr>
			
			<tr>
				<th>Board_Time(게임 시간)</th>
				<td><input type="date" name="Board_ReservationDate">
					<input type="time" name="Board_ReservationTime">
				</td>

			</tr>

			<tr>
				<th>Board_Title(매칭 제목)</th>
				<td><input type="text" name="Board_Title"></td>

			</tr>

			<tr>
				<th>Board_Content(매칭 내용)</th>
				<td><input type="text" name="Board_Content"></td>
			</tr>
				<input type="hidden" name="Board_Num" value="${sessionScope.bno }">
				<input type="hidden" name="Board_Date" value="${sessionScope.bdate }">
		</table>
		<button type="submit">완료</button>
	</form>

	

</div>
</body>
 <%@include file="../includes/footer.jsp" %> 
</html>