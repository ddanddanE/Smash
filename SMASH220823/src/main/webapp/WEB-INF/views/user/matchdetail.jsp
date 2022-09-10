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
            <div class="p-3">${user.user_id}</div>
          </div>

           <div class="list-group">
            <a href="memberinfo.html" class="list-group-item list-group-item-action ">회원정보</a>
            <a href="matchinglist.html" class="list-group-item list-group-item-action ">나의 매칭목록</a>
            <a href="matchdetail.html" class="list-group-item list-group-item-action active">나의 신청내역</a>
             <a href="match_receive" class="list-group-item list-group-item-action">신청받은내역</a>
            <a href="reportlist.html" class="list-group-item list-group-item-action">신고받은 내용</a>
            <a href="rate_receive" class="list-group-item list-group-item-action">받은 평점</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 나의 신청내역</h2>
          <div class="table-responsive">
            <table class="table table-hover table-bordered">
              <tbody>
                
                <tr class="table-primary text-center">
                  <th style="width: 80px;">번호</th>
                  <th style="width: 80px;">상대</th>
                  <th style="width: 150px;">경기장(장소)</th>
                  <th style="width: 150px;">날짜(대전일)</th>
  	              <th style="width: 200px;">상태 </th>
  	              <th style="width: 200px;">버튼(수정) </th>
                </tr>
                
                
                
                
             <c:forEach items="${lo  }" var="bo">
             <c:if test="${bo.NOTICE_MSG_STATUS.equals('신청중') || bo.NOTICE_MSG_STATUS.equals('거절') || bo.NOTICE_MSG_STATUS.equals('수락') }">
					<tr class="odd gradeX">
					<td>1<input type="hidden" value="${user.user_id }"
							name="user.user_id" /> <input type="hidden"
							value="${bo.NOTICE_MSG_NO}" name="NOTICE_MSG_NO" /> </td>
						
						<td><c:out value="${bo.NOTICE_MSG_RIVAL}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_PLACE}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_TIME}" /></td>
								<td><c:out value="${bo.NOTICE_MSG_STATUS}" /></td>
						
						
						<td>
						<c:choose>
						<c:when test="${bo.NOTICE_MSG_STATUS.equals('신청중')}">

							<button class="button" type="button"
									onclick="popuprate('${bo.NOTICE_MSG_NO}','${user.user_id }','${bo.NOTICE_MSG_USER}','${bo.NOTICE_MSG_RIVAL}')">신청취소</button>
							</c:when>
							
								<c:when test="${bo.NOTICE_MSG_STATUS.equals('수락')}">

							<button class="button" type="button"
									onclick="popuprate('${bo.NOTICE_MSG_NO}','${user.user_id }','${bo.NOTICE_MSG_USER}','${bo.NOTICE_MSG_RIVAL}')">경기취소</button>
							</c:when>
							 	<c:when test="${bo.NOTICE_MSG_STATUS.equals('거절')}">
									거절
							</c:when>

									</c:choose>
										</td>
							</tr>
					</c:if>			
								

							
								
							
							
				</c:forEach>
				
				
				<c:forEach items="${lo2  }" var="bb">
				 <c:if test="${bb.NOTICE_MSG_STATUS.equals('신청중') || bb.NOTICE_MSG_STATUS.equals('거절') || bb.NOTICE_MSG_STATUS.equals('수락') }">
					<tr class="odd gradeX">
						<td>1</td>
						<td><c:out value="${bb.NOTICE_MSG_USER}" /></td>
						<td><c:out value="${bb.NOTICE_MSG_PLACE}" /></td>
						<td><c:out value="${bo.NOTICE_MSG_TIME}" /></td>
						<td><c:out value="${bb.NOTICE_MSG_STATUS}" /></td>
						
						
						<td>
						<c:choose>
						<c:when test="${bb.NOTICE_MSG_STATUS.equals('신청중')}">

							<button class="button" type="button"
									onclick="popuprate('${bb.NOTICE_MSG_NO}','${user.user_id }','${bb.NOTICE_MSG_USER}','${bb.NOTICE_MSG_RIVAL}')">신청취소</button>
							</c:when>
							
								<c:when test="${bb.NOTICE_MSG_STATUS.equals('수락')}">

							<button class="button" type="button"
									onclick="popuprate('${bb.NOTICE_MSG_NO}','${user.user_id }','${bb.NOTICE_MSG_USER}','${bb.NOTICE_MSG_RIVAL}')">경기취소</button>
							</c:when>
							 	<c:when test="${bb.NOTICE_MSG_STATUS.equals('거절')}">
									거절
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


<%@include file="../includes/footer.jsp"%>