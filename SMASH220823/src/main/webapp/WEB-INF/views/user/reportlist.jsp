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
            <a href="memberinfo.html" class="list-group-item list-group-item-action ">회원정보</a>
            <a href="matchinglist.html" class="list-group-item list-group-item-action ">나의 매칭목록</a>
            <a href="matchdetail.html" class="list-group-item list-group-item-action ">나의 신청내역</a>
             <a href="match_receive" class="list-group-item list-group-item-action ">신청받은내역</a>
            <a href="reportlist.html" class="list-group-item list-group-item-action active">신고받은 내용</a>
            <a href="rate_receive" class="list-group-item list-group-item-action">받은 평점</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 신고받은 내용</h2>
          <div class="table-responsive">
            <table class="table table-hover table-bordered">
              <tbody>
                <tr class="table-primary text-center">
                  <th style="width: 80px;">번호</th>
                  <th>제목</th>
                  <th style="width: 150px;">날짜</th>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>
                <tr>
                  <td class="text-center">1</td>
                  <td><a href="#">제목이 길게 들어갑니다</a></td>
                  <td class="text-center">2020-09-05</td>
                </tr>

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