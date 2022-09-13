<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="../includes/header.jsp"%>
<Style>
.span{
font-size: 1.5em;
	color: transparent;
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
</Style>
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
                  <th style="width: 50px;">번호</th>
                  <th style="width: 80px;">상대</th>
                  <th style="width: 200px;">방제목</th>
                  <th style="width: 70px;">경기장</th>
                  <th style="width: 170px;">날짜(대전일)</th>
  	              <th style="width: 80px;">상태 </th>
                </tr>

				
				
				<c:forEach items="${lo2  }" var="bb">
				 <c:if test="${bb.NOTICE_MSG_STATUS.equals('신청') || bb.NOTICE_MSG_STATUS.equals('거절') || bb.NOTICE_MSG_STATUS.equals('수락') }">
					<tr class="odd gradeX">
						<td>1</td>
						<td><c:out value="${bb.NOTICE_MSG_USER}" /></td>
						<td><c:out value="${bb.BOARD_TITLE}" /></td>
						<td><c:out value="${bb.NOTICE_MSG_PLACE}" /></td>
						<td><c:out value="${fn:substring(bb.NOTICE_MSG_TIME,0,13)}"/>시</td>
						
						
						<td>
						<c:choose>
						<c:when test="${bb.NOTICE_MSG_STATUS.equals('신청')}">
							대기중
							</c:when>
							
						<c:when test="${bb.NOTICE_MSG_STATUS.equals('수락')}">

							수락
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