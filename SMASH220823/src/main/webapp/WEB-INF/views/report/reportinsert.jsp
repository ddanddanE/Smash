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

	<form name="frm"action="/report/reportinsert" method="post" class="type03" onsubmit="return insert_ch()">

		<table class="type03" width="100%">
			<tr>
				<th>report_rival(로그인된 아이디)</th>
				<td><input type="text" name="report_rival" value="${sessionScope.id }" readonly="readonly"></td>

			</tr>

			<tr>
				<th>report_id(신고할 아이디)</th>
				<td><input type="text" name="report_id" value="${param.report_id }"></td>

			</tr>

			<tr>
				<th>report_title(신고글 제목)</th>
				<td><input type="text" name="report_title"></td>

			</tr>

			<tr>
				<th>report_reason(신고이유?)</th>
				<td><input type="text" name="report_reason"></td>

			</tr>

		</table>
		<button type="submit">신고?</button>
	</form>

	<script>
		function insert_ch() {
			
			if(frm.report_rival.value==""){
				alert("로그인ID 입력");
				frm.report_rival.focus();
				return false;
			
			} 
			else if(frm.report_id.value==""){
				alert("신고할ID 입력");
				frm.report_id.focus();
				return false;
			
			}
			else if(frm.report_title.value==""){
				alert("신고 제목 입력");
				frm.report_title.focus();
				return false;
			
			}
			else if(frm.report_reason.value==""){
				alert("신고 내용 입력");
				frm.report_reason.focus();
				return false;
			
			}else{
				alert("신고완료");
				//self.close();
				//histroy.go(-1);
			}
		}
	</script>

</div>
</body>
 <%@include file="../includes/footer.jsp" %>   
</html>