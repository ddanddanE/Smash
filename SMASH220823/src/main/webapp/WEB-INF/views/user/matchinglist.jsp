<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

  <main>
    <section class="container">
      <div class="row mb-4">
        <div class="col-3">

          <div class="text-center p-3 mb-3 border rounded">
            <img src="/resources/images/profile1.jpg" class="rounded-circle" width="100%">
            <div class="p-3">ID입니다</div>
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
                  <th style="width: 80px;">번호</th>
                  <th style="width: 80px;">방장</th>
                  <th style="width: 80px;">참가자</th>
                  <th style="width: 80px;">경기장(장소)</th>
                  <th style="width: 150px;">날짜(대전일)</th>
                  <th style="width: 200px;">상태(현재진행상황)</th>
  	              <th style="width: 200px;">신고/평점 ${id }</th>
                </tr>
                
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">길동</a></td>
                  <td><a href="#">꺼정</a></td>
                  <td><a href="#">종록테니스장</a></td>
  	              <td class="text-center">2020-09-05</td>
                  <td><a href="#">대기</a></td>
                  <td class="text-center">
                    <button class="btn btn-secondary" onclick="popuprate('81','user10','userid1','sano1207')">평점주기</button>
                  </td>
                 
                </tr>
                
                
             <c:forEach items="${lo  }" var="bo">
					<tr class="odd gradeX">
					<td>1</td>
						<td><input type="hidden" value="${user.user_id }"
							name="user.user_id" /> <input type="hidden"
							value="${bo.NOTICE_MSG_NO}" name="NOTICE_MSG_NO" /> 
						<c:out value="${bo.NOTICE_MSG_USER}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_RIVAL}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_PLACE}" /></td>
						<td><fmt:formatDate value="${bo.NOTICE_MSG_TIME }"
								pattern="yy-MM-dd" /></td>
						<td><c:out value="${bo.NOTICE_MSG_STATUS}" /></td>
						
						<!-- 평점버튼 -->
						<td>
						<c:if test="${bo.NOTICE_MSG_URATE==0 &&  bo.NOTICE_MSG_STATUS.equals('완료') }">

							<button class="btn btn-secondary btn-sm mr-1 rounded-pill" type="button"
									onclick="popuprate('${bo.NOTICE_MSG_NO}','${user.user_id }','${bo.NOTICE_MSG_USER}','${bo.NOTICE_MSG_RIVAL}')">평점주기</button>
								
							</c:if>
							 <c:if test="${bo.NOTICE_MSG_URATE==1 }">
								<input type="button" class="button2" value="평점주기"
									disabled="disabled" />
							</c:if>
		
							
							<!-- 신고버튼 -->
						
						<c:if test="${bo.NOTICE_MSG_URATE==0 &&  bo.NOTICE_MSG_STATUS.equals('완료') }">

							<button class="btn btn-danger btn-sm mr-1 rounded-pill" type="button" onclick="popupReport('${bo.NOTICE_MSG_NO}','${bo.NOTICE_MSG_RIVAL}')">신고하기</button>
									
											
								
							</c:if>
							 <c:if test="${bo.NOTICE_MSG_URATE==1 }">
								<input type="button" class="button2" value="신고하기"
									disabled="disabled" />
							</c:if>
							</td>
							
					</tr>
				</c:forEach>
				
				
				<c:forEach items="${lo2  }" var="bb">
					<tr class="odd gradeX">
						<td>1</td>
						<td><c:out value="${bb.NOTICE_MSG_USER}" /></td>
						<td><c:out value="${bb.NOTICE_MSG_RIVAL}" /></td>
						<td><c:out value="${bb.NOTICE_MSG_PLACE}" /></td>
						<td><fmt:formatDate value="${bb.NOTICE_MSG_TIME }"
								pattern="yy-MM-dd" /></td>
						<td><c:out value="${bb.NOTICE_MSG_STATUS}" /></td>
						<td><c:if test="${bb.NOTICE_MSG_RRATE==0 && bb.NOTICE_MSG_STATUS.equals('완료') }">
								
								<button class="btn btn-secondary" type="button"
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

  <!--결과modal-->
  <div class="modal fade" id="modalResult" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">결과작성</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            
            <div class="form-group text-center">
              <label class="mr-5 font-weight-bold">결과</label>

              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                <label class="form-check-label" for="inlineRadio1">승</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2">무</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                <label class="form-check-label" for="inlineRadio3">패</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                <label class="form-check-label" for="inlineRadio3">노쇼</label>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="sendResult()">결과저장하기</button>
        </div>
      </div>
    </div>
  </div>


  <!-- 평점modal-->
  <div class="modal fade" id="modalRate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">평점주기</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Recipient:</label>
              <input type="text" class="form-control" id="recipient-name">
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Message:</label>
              <textarea class="form-control" id="message-text"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="sendRate()">평점주기</button>
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
						<input type="button" value="보내기" class="button" onclick="go()"/>
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
