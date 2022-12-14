<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../includes/header.jsp"%>

<style>
#myform fieldset {
	display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
    direction: rtl; /* 이모지 순서 반전 */
    border: 0; /* 필드셋 테두리 제거 */
    margin-left: 100px;
}
.modal-body input[type=button]{
float: right;
}

#myform input[type=radio] {
	display: none;
	margin-left: 100px;
}

#myform label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}



#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

.modal-body .button {
	margin-left: 180px;
}

#myform #span {
	margin-left: 170px;
}

#myform .dd {
	margin-left: 60px;
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

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

.button:hover {
	background-color: #008000;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
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
.button, .button3 {
	width: 80px;
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
.span{
font-size: 1.5em;
	color: transparent;
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
</style>

  <main>
    <section class="container">
      <div class="row mb-4">
        <div class="col-3">

          <div class="text-center p-3 mb-3 border rounded">
            <img src="/resources/images/profile1.jpg" class="rounded-circle" width="100%">
            <div class="p-3"><span class="span">★</span>${avg}<br>
            				${user.user_id}</div>
          </div>

          <div class="list-group">
            <a href="/user/memberinfo" class="list-group-item list-group-item-action ">회원정보</a>
            <a href="/user/matchinglist" class="list-group-item list-group-item-action active">나의 매칭목록</a>
            <a href="/user/matchdetail.html" class="list-group-item list-group-item-action">나의 신청내역</a>
             <a href="/user/match_receive" class="list-group-item list-group-item-action">신청받은내역</a>
            <a href="/report/reportlist" class="list-group-item list-group-item-action">신고받은 내용</a>
            <a href="#" class="list-group-item list-group-item-action">회원탈퇴</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 나의 매칭목록</h2>
          <div class="table-responsive">
            <table class="table table-hover table-bordered">
              <tbody>
                
                <tr class="table-primary text-center">
                  <th style="width: 50px;">번호</th>
                  <th style="width: 80px;">상대</th>
                  <th style="width: 200px;">방제목</th>
                  <th style="width: 70px;">경기장</th>
                  <th style="width: 170px;">날짜(대전일)</th>
  	              <th style="width: 200px;">평점/신고 </th>
  	              
                </tr>
                
                
                
                
             <c:forEach items="${lo  }" var="bo">
             <c:if test="${bo.NOTICE_MSG_STATUS.equals('완료') }">
					<tr class="odd gradeX">
					<td>1<input type="hidden" value="${user.user_id }"
							name="user.user_id" /> <input type="hidden"
							value="${bo.NOTICE_MSG_NO}" name="NOTICE_MSG_NO" /> </td>
						<c:out value="${fn:substring(title,0,20)}" />
						<td><c:out value="${bo.NOTICE_MSG_RIVAL}" /></td>
						<td><c:out value="${bo.BOARD_TITLE}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_PLACE}" /></td>
						<td><c:out value="${fn:substring(bo.NOTICE_MSG_TIME,0,13)}"/>시</td>
						
						<!-- 평점버튼 -->
						<td>
						<c:choose>
						<c:when test="${bo.NOTICE_MSG_URATE==0}">

							<button class="btn btn-secondary btn-sm mr-1 rounded-pill" type="button"
									onclick="popuprate('${bo.NOTICE_MSG_NO}','${user.user_id }','${bo.NOTICE_MSG_USER}','${bo.NOTICE_MSG_RIVAL}')">평점주기</button>
								
								<button class="btn btn-danger btn-sm mr-1 rounded-pill" type="button" onclick="popupReport('${bo.NOTICE_MSG_NO}','${bo.NOTICE_MSG_RIVAL}')">신고하기</button>
							
								
							</c:when>
							 <c:otherwise>
								<input type="button" class="btn btn-secondary btn-sm mr-1 rounded-pill" value="평점주기"
									disabled="disabled" />
						  		<input type="button" class="btn btn-danger btn-sm mr-1 rounded-pill" value="신고하기"
									disabled="disabled" />
							
							<!-- 신고버튼 -->
								</c:otherwise>
									</c:choose>
										
							</tr>
					</c:if>			
								

							
								
							
							
				</c:forEach>
				
				
				<c:forEach items="${lo2  }" var="bb">
				<c:if test="${bb.NOTICE_MSG_STATUS.equals('완료') }">
					<tr class="odd gradeX">
						<td>1</td>
						<td><c:out value="${bb.NOTICE_MSG_USER}" /></td>
						<td><c:out value="${bb.BOARD_TITLE}" /></td>
						<td><c:out value="${bb.NOTICE_MSG_PLACE}" /></td>
						<td><c:out value="${fn:substring(bb.NOTICE_MSG_TIME,0,13)}"/>시</td>
						<td>
						<c:choose>
						<c:when test="${bb.NOTICE_MSG_RRATE==0}">
								
								<button class="btn btn-secondary btn-sm mr-1 rounded-pill" type="button"
									onclick="popuprate('${bb.NOTICE_MSG_NO}','${user.user_id }','${bb.NOTICE_MSG_USER}','${bb.NOTICE_MSG_RIVAL}')">평점주기</button>
								<button type="button" class="btn btn-danger btn-sm mr-1 rounded-pill"
									onclick="popupReport1(2,'user3')">신고하기</button>
							</c:when>
							 <c:otherwise>
								<input type="button" class="btn btn-secondary btn-sm mr-1 rounded-pill" value="평점주기"
									disabled="disabled" />
								<button type="button" class="btn btn-danger btn-sm mr-1 rounded-pill"
									onclick="popupReport1(2,'user3')">신고하기</button>
									</c:otherwise>
									</c:choose>
							</td>
					</tr>
					</c:if>
				</c:forEach>
             
             
             
              </tbody>
            </table>
          </div>

          <nav>
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <span class="page-link">이전</span>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item active" aria-current="page">
                <span class="page-link">
                  2
                  <span class="sr-only">(current)</span>
                </span>
              </li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#">다음</a>
              </li>
            </ul>
          </nav>

        </div>
 
      </div>
   

    </section>

  </main>
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
							<label for="report_rival" class="col-form-label">로그인된ID</label> <input
								type="text" class="form-control" id="report_rival"
								name="report_rival" value="${sessionScope.user.user_id }"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="report_id" class="col-form-label">신고할ID</label> <input
								type="text" class="form-control" id="report_id" name="report_id"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="report_title" class="col-form-label">신고제목</label> <input
								type="text" class="form-control" id="report_title"
								name="report_title">
						</div>

						<div class="form-group">
							<label for="report_reason" class="col-form-label">신고내용</label>
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



  
  
  	<!--  평점 팝업	-->
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
						<br>
						<span id="span">별점을 선택해주세요</span> <br> 
						<div class="dd">코멘트:
						<textarea id="content" name="content" placeholder="체크 시  입력가능"
							disabled></textarea>
						<input type="checkbox" id="che" name="che" onclick="check()" /></div> </br>
						
					</form>
						<input type="button" value="보내기" class="btn btn-primary" onclick="go()"/>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
  

 <script>
 
	//코멘트 여부
	function check() {

		var cbList_0 = document.getElementById("che");
		var textBox1_ = document.getElementById("content");

		if (cbList_0.checked) {
			textBox1_.disabled = false;
			textBox1_.focus();
		} else {
			textBox1_.disabled = true;
			textBox1_.value = "";
		}
	}

 
    function popReport(){
      $('#modalReport').modal('show');


    }
	//평점!
   	function popuprate(num, id, user, rival) {

			myform.NOTICE_MSG_NO.value = num;
			myform.id.value = id;
			myform.userName.value = user;
			myform.rival.value = rival;

			$('#rate').modal('show');

		}
	
	function go() {
				

				$.post("/rate/rate_suc", $("#myform").serialize(), function(data) {
					
					if (data == "suc") {
						alert("완료");
						$('#rate').modal('hide');
						location.reload();
					} else {
						alert("실패");
					}
					
					rate.reset();
				});

			}

	
	//결과
    function popResult(){
      $('#modalResult').modal('show');

    }

    function sendReport(){
      alert("신고완료되었습니다");

      $('#modalReport').modal('hide');


    }

    function sendRate(){
      alert("평점주기완료되었습니다");
      $('#modalRate').modal('hide');

    }

    function sendResult(){
      alert("결과가 전송되었습니다");
      $('#modalResult').modal('hide');

    }
    
    //신고
    function popupReport(num, id) {

    	frmReport.report_id.value = id;
    	frmReport.report_num.value = num;

	$('#report').modal('show');

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
		//alert(data);
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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>


 <%@include file="../includes/footer.jsp"%>
