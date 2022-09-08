<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<<style>
<!--
ul {
    display: flex;
    justify-content: center;
  }
-->
</style>



<main>
<section class="container">
	<div class="row mb-4">
		<div class="col-3">

			<div class="text-center p-3 mb-3 border rounded">
				<img src="/resources/images/profile1.jpg" class="rounded-circle"
					width="100%">
				<div class="p-3">${sessionScope.user.user_id }</div>
			</div>

		 <div class="list-group">
            <a href="/user/memberinfo" class="list-group-item list-group-item-action ">회원정보</a>
            <a href="/user/matchinglist" class="list-group-item list-group-item-action ">나의 매칭목록</a>
            <a href="/user/matchdetail.html" class="list-group-item list-group-item-action">나의 신청내역</a>
             <a href="/user/match_receive" class="list-group-item list-group-item-action ">신청받은내역</a>
            <a href="/report/reportlist" class="list-group-item list-group-item-action active">신고받은 내용</a>
            <a href="#" class="list-group-item list-group-item-action">회원탈퇴</a>
            </div>

		</div>
		<div class="col-9">
			<h2 class="mb-3">
				<i class="bi bi-list-stars"></i> 신고받은 내용
			</h2>
			<a>총 신고 개수 :${count }</a> <Br> <a>로그인된 ID :
				${sessionScope.user.user_id }</a>

			<div class="table-responsive">
				<table class="table table-hover table-bordered">
					
					<thead>
						<tr class="table-primary text-center">
							<th style="width: 80px;">번호</th>
							<th>신고글 제목</th>
							<th style="width: 150px;">날짜</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach items="${sel }" var="bo">
							<tr class="odd gradeX">
								<td><c:out value="${bo.report_num }" /></td>
								<td><c:out value="${bo.report_title}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${bo.report_date }" /></td>
							</tr>
						</c:forEach>
				
						</tbody>
				</table>
			</div>

				<!-- 페이징 -->
		
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item ${pageingStart -pageingSize>0 ?"":"disabled" }">
			<a class="page-link" href="/report/reportlist?page_num=${page_num-1 }"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			
			<c:forEach var="page" begin="${pageingStart }" end="${pageingEnd }">
				
				<li class="page-item ${page == page_num ? "active":""}">
					<a class="page-link" href="/report/reportlist?page_num=${page }">${page }</a>
				</li>
			
			</c:forEach>
			
			<li class="page-item ${pageingStart+pageingSize<= pageingTotal? "":"disabled"  }">
			<a class="page-link" href="/report/reportlist?page_num=${page_num+1 }"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>

		</div>

	</div>

</section>

</main>

<%@include file="../includes/footer.jsp"%>