<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<style>
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
            <a href="memberinfo.html" class="list-group-item list-group-item-action ">회원정보</a>
            <a href="matchinglist.html" class="list-group-item list-group-item-action ">나의 매칭목록</a>
            <a href="matchdetail.html" class="list-group-item list-group-item-action ">나의 신청내역</a>
             <a href="match_receive" class="list-group-item list-group-item-action active">신청받은내역</a>
            <a href="reportlist.html" class="list-group-item list-group-item-action">신고받은 내용</a>
            <a href="rate_receive" class="list-group-item list-group-item-action">받은 평점</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 신청 받은 내역</h2>
          <div class="table-responsive">
            <table class="table table-hover table-bordered">
              <tbody>
                
                <tr class="table-primary text-center">
                  <th style="width: 50px;">번호</th>
                  <th style="width: 50px;">신청자</th>
                  <th style="width: 200px;">방제목</th>
                  <th style="width: 70px;">경기장</th>
                  <th style="width: 170px;">날짜(대전일)</th>
  	              <th style="width: 50px;">버튼 </th>
                </tr>
                
                
                
                
             <c:forEach items="${lo  }" var="bo">
             <c:if test="${bo.NOTICE_MSG_STATUS.equals('수락')  || bo.NOTICE_MSG_STATUS.equals('신청')}">
					<tr class="odd gradeX">
					<td>1<input type="hidden" value="${user.user_id }"
							name="user.user_id" /> <input type="hidden"
							value="${bo.NOTICE_MSG_NO}" name="NOTICE_MSG_NO" /> </td>
						
						<td><c:out value="${bo.NOTICE_MSG_RIVAL}" /></td>
						<td><c:out value="${bo.BOARD_TITLE}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_PLACE}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_TIME}" /></td>
						<td><c:choose>
						<c:when test="${bo.NOTICE_MSG_STATUS.equals('신청')}">
							
							<button class="btn btn-danger btn-sm mr-1 rounded-pill"  type="button"
									onclick="popupyn('${bo.NOTICE_MSG_RIVAL}' ,'${bo.BOARD_NUM}')" >응답</button>
							</c:when>
							
								<c:when test="${bo.NOTICE_MSG_STATUS.equals('수락')}">

							<button class="btn btn-danger btn-sm mr-1 rounded-pill" type="button"
									onclick="popupre('${bo.NOTICE_MSG_RIVAL}' ,'${bo.NOTICE_MSG_NO}','${bo.NOTICE_MSG_USER}')">경기결과</button>
							</c:when>
							
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

  <!-- 수락/거절modal-->
  <div class="modal fade" id="modalyn" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" >응답하기</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="myform" name="myform" >
          <input type="hidden" id="rival" class="rival" name="NOTICE_MSG_RIVAL" />
          <input type="hidden" id="num" class="num" name="BOARD_NUM" />
             <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="yes">
                <label class="form-check-label" for="inlineRadio1">수락</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="no">
                <label class="form-check-label" for="inlineRadio2">거절</label>
              </div>
              </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="sendyn()">응답하기</button>
        </div>
      </div>
    </div>
  </div>
  </div>

<!-- 결과modal-->
  <div class="modal fade" id="modalre" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" >결과</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="myresult" name="myresult" >
          <input type="hidden1" id="rival" class="rival" name="NOTICE_MSG_RIVAL" />
          <input type="hidden1" id="rival2" class="rival2" name="rivalName" />
          <input type="hidden1" id="user" class="user" name="NOTICE_MSG_USER" />
          <input type="hidden1" id="user2" class="user2" name="userName" />
          <input type="hidden1" id="num" class="num" name="NOTICE_MSG_NO" />
             <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="result" id="result" value="승">
                <label class="form-check-label" for="result">승</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="result" id="result" value="무">
                <label class="form-check-label" for="result">무</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="result" id="result" value="패">
                <label class="form-check-label" for="result">패</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="result" id="result" value="노쇼">
                <label class="form-check-label" for="result">노쇼</label>
              </div>
              </form>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" onclick="sendre()">결과제출</button>
        </div>
      </div>
    </div>
  </div>
  </div>








 <script>
    function popupyn(rival,num){
    	myform.rival.value = rival;
    	myform.num.value = num;
    	
      $('#modalyn').modal('show');
    }

    function sendyn(){
    	$.post("/user/applyn", $("#myform").serialize(), function(data) {
			if (data == "Y") {
				alert("수락했습니다.");
				location.reload();
			} else {
				
				alert("거절했습니다");
				location.reload();
			}
		});
    	
    	$('#myform').modal('hide');
    	
    	location.reload();
    }

    
    
    
    function popupre(rival,num,user){
    	myresult.rival.value = rival;
    	myresult.rival2.value = rival;
    	myresult.num.value = num;
    	myresult.user.value = user;
    	myresult.user2.value = user;
    	
      $('#modalre').modal('show');
    }

    function sendre(){
    	$.post("/match/result", $("#myresult").serialize(), function(data) {
			if (data == "Y") {
				alert("체줄 완료");
				location.reload();
			}
		});
    	
    	$('#myresult').modal('hide');
    	location.reload();
    } 
    
    
    
   
  </script>



 <%@include file="../includes/footer.jsp"%>
