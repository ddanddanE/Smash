<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<style type="text/css">
#myform fieldset {
	display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
    margin-left: 120px;
}

#myform .dd {
	margin-left: 60px;
}

#myform input[type=radio] {
	display: none;
	margin-left: 30px;
}

#myform label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

.button5{
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
	margin-top: 30px;
	margin-left: 150px;
}

.button5:hover {
	background-color: #008000;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
#span3{
	margin-left: 170px;
}
textarea {
			width: 65%;
			height: 150px;
			padding: 10px;
			box-sizing: border-box;
			border: solid 2px #1E90FF;
			border-radius: 5px;
			font-size: 16px;
			resize: both;
			
		}


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
	<div class="container my-5">
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

						<td><input type="hidden" value="${user.user_id }"
							name="user.user_id" /> <input type="hidden"
							value="${bo.NOTICE_MSG_NO}" name="NOTICE_MSG_NO" /> <c:out
								value="${bo.NOTICE_MSG_USER}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_RIVAL}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_PLACE}" /></td>
						<td><fmt:formatDate value="${bo.NOTICE_MSG_TIME }"
								pattern="yy-MM-dd" /></td>
						<td><c:out value="${bo.NOTICE_MSG_STATUS}" /></td>
						<td><c:if test="${bo.NOTICE_MSG_URATE==0 &&  bo.NOTICE_MSG_STATUS.equals('완료') }">

								<button class="button" type="button"
									onclick="popuprate('${bo.NOTICE_MSG_NO}','${user.user_id }','${bo.NOTICE_MSG_USER}','${bo.NOTICE_MSG_RIVAL}')">평점주기</button>

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
						<td><c:if test="${bb.NOTICE_MSG_RRATE==0 && bb.NOTICE_MSG_STATUS.equals('완료') }">
								
								<button class="button" type="button"
									onclick="popuprate('${bb.NOTICE_MSG_NO}','${user.user_id }','${bb.NOTICE_MSG_USER}','${bb.NOTICE_MSG_RIVAL}')">평점주기</button>
								<button type="button" class="button3"
									onclick="popupReport1(2,'user3')">신고하기</button>
							</c:if> <c:if test="${bb.NOTICE_MSG_RRATE==1}">
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
	</div>






	<!--  팝업	-->
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
					<form class="mb-3" id="myform" name="myform">
						<input type="hidden" name="NOTICE_MSG_NO" /> <input type="hidden"
							name="id" /> <input type="hidden" name="rival" /> <input
							type="hidden" name="userName" />
						<fieldset>
							<input type="radio" name="rating" value="5" id="rate1"><label
								for="rate1">★</label> <input type="radio" name="rating"
								value="4" id="rate2"><label for="rate2">★</label> <input
								type="radio" name="rating" value="3" id="rate3"><label
								for="rate3">★</label> <input type="radio" name="rating"
								value="2" id="rate4"><label for="rate4">★</label> <input
								type="radio" name="rating" value="1" id="rate5"><label
								for="rate5">★</label>
						</fieldset>
						<br> <span id="span3">별점을 선택해주세요</span> <br>
						<div class="dd">
							코멘트:
							<textarea id="content" name="content" placeholder="체크 시  입력가능"
								disabled></textarea>
							<input type="checkbox" id="che" name="che" onclick="check()" />
						</div>
						</br>

					</form>
					<input type="button" value="보내기" class="button5" onclick="go()" />
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<script>
		function popuprate(num, id, user, rival) {

			myform.NOTICE_MSG_NO.value = num;
			myform.id.value = id;
			myform.userName.value = user;
			myform.rival.value = rival;

			$('#rate').modal('show');

		}

		function go() {

			$.post("/rate/rate_success", $("#myform").serialize(), function(data) {

				if (data == "suc") {
					alert("성공");
					$('#rate').modal('hide');
					location.reload();
				} else {
					alert("실패");
				}

				rate.reset();
			});

		}
		
		function check() {

			var cbList_0 = document.getElementById("che");
			var textBox1_ = document.getElementById("content");

			if (cbList_0.checked) {
				textBox1_.disabled = false;
				textBox1_.focus();
			} else {
				textBox1_.disabled = true;
				textBox1_.value="";
			}
		}
	</script>

</body>

</html>