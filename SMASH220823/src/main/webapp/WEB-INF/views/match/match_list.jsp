<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

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

.carousel-control-prev-icon{
	 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E"); 


}

.carousel-control-next-icon{
	background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E"); 

}
</style>


</head>
<body>


 	<div class="container my-5">

		<a>매칭리스트</a> <Br> <a>로그인된 ID : ${sessionScope.id }</a>

		<table>
			<thead>
				<tr>
					<th>글번호</th>
					<th>종목</th>
					<th>상대방ID</th>
					<th>매칭날짜</th>
					<th>신고하기</th>

				</tr>
			</thead>

			<tbody>
				<tr>
					<td>3</td>
					<td>테니스</td>
					<td>car</td>
					<td>2022.08.26</td>
					<td>
						<button class="btn btn-primary" type="button"
							onclick="popuprate(3,'car')">평점주기</button>
						<button class="btn btn-danger" type="button"
							onclick="popupReport(3,'car')">신고하기</button>
					</td>

				</tr>
				<tr>
					<td>2</td>
					<td>테니스</td>
					<td>user3</td>
					<td>2022.08.26</td>
					<td><button type="button" onclick="popupReport1(2,'user3')">신고하기</button>
						<button type="button" onclick="popupReport1(2,'user3')">신고하기</button></td>


				</tr>
				<tr>
					<td>1</td>
					<td>테니스</td>
					<td>ID</td>
					<td>2022.08.26</td>
					<td><button type="button" onclick="popupReport(1,'ID')">신고하기</button></td>

				</tr>
			</tbody>

		</table>

		<nav aria-label="Page navigation example" style="margin-top: 10px">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled"><a class="page-link">Previous</a>
				</li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>




		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>




			<div class="carousel-inner" id="aa">
				<div class="carousel-item active">
					<img src="/resources/images/Test.jpg" class="d-block w-50"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/resources/images/Test01.jpg" class="d-block w-50"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/resources/images/walle.jpg" class="d-block w-50"
						alt="...">
				</div>
			</div>


			<button class="carousel-control-prev" type="button" 
				data-target="#carouselExampleIndicators" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-target="#carouselExampleIndicators" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</button>
		</div>

	</div>

	<!-- 신고하기 팝업 레이어 -->
	<div class="modal fade" id="report" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">신고하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form name="frmReport" id="frmReport">
						<input type="hidden" name="report_num">
						<div class="form-group">
							<label for="report_rival" class="col-form-label">report_rival(로그인된
								아이디)</label> <input type="text" class="form-control" id="report_rival"
								name="report_rival" value="${sessionScope.id }"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="report_id" class="col-form-label">report_id</label> <input
								type="text" class="form-control" id="report_id" name="report_id"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="report_title" class="col-form-label">report_title</label>
							<input type="text" class="form-control" id="report_title"
								name="report_title">
						</div>

						<div class="form-group">
							<label for="report_reason" class="col-form-label">report_reason</label>
							<textarea class="form-control" id="report_reason"
								name="report_reason"></textarea>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="sumbitReport()">신고하기</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 평점 팝업 레이어-->
	<div class="modal fade" id="rate" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">평점주기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form name="frmRate" id="frmRate">
						<input type="hidden" name="report_num">
						<div class="form-group">
							<label for="report_rival" class="col-form-label">report_rival(로그인된
								아이디)</label> <input type="text" class="form-control" id="report_rival"
								name="report_rival" value="${sessionScope.id }"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="report_id" class="col-form-label">report_id</label> <input
								type="text" class="form-control" id="report_id" name="report_id"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="report_title" class="col-form-label">평점</label>
							<input type="text" class="form-control" id="report_title"
								name="report_title">
						</div>

						<div class="form-group">
							<label for="report_reason" class="col-form-label">평가내용</label>
							<textarea class="form-control" id="report_reason"
								name="report_reason"></textarea>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="sumbitReport()">신고하기</button>
				</div>
			</div>
		</div>
	</div>



	<script>
	
// 이미지 슬라이드 쇼 시간 설정?
//	$('.carousel').carousel({
//	    interval: 3000 //기본 5초
//	  })

	
	
	function popuprate(num, id) {

		frmRate.report_id.value = id;
		frmRate.report_num.value = num;

		$('#rate').modal('show');

	}	
	
	
	
	function popupReport(num, id) {

			frmReport.report_id.value = id;
			frmReport.report_num.value = num;

			$('#report').modal('show');

		}

		function popupReport1(num, id) {
			window.open("/report/reportinsert?num=" + num + '&report_id=' + id,
					'report', 'width=600, height=280');

		}

		function sumbitReport() {
			if (frmReport.report_title.value == "") {
				alert("제목입력");
				frmReport.report_title.focus();
				return;
			}

			if (frmReport.report_reason.value == "") {
				alert("내용입력");
				frmReport.report_reason.focus();
				return;
			}

			$.post("/report/reportProc", $("#frmReport").serialize(), function(data) {
				alert(data);
				if (data == "success") {
					alert("신고완료");
				} else {
					alert("신고실패하였습니다");
				}
				$('#report').modal('hide');
				frmReport.reset();
			});

		}
	</script>


</body>
<%@include file="../includes/footer.jsp"%>
</html>