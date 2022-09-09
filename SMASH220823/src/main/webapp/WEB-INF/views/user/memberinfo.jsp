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
            <a href="memberinfo.html" class="list-group-item list-group-item-action active">회원정보</a>
            <a href="matchinglist.html" class="list-group-item list-group-item-action ">나의 매칭목록</a>
            <a href="matchdetail.html" class="list-group-item list-group-item-action">나의 신청내역</a>
             <a href="match_receive" class="list-group-item list-group-item-action">신청받은내역</a>
            <a href="reportlist.html" class="list-group-item list-group-item-action">신고받은 내용</a>
            <a href="rate_receive" class="list-group-item list-group-item-action">받은 평점</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 회원정보</h2>
          
        <form action="#">
            <div class="form-group row">
              <label class="col-md-2 col-form-label form-control-label text-muted">아이디</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="메롱" name="id">
              </div>
            </div>
 
          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">비밀번호</label>
              <div class="col-md-5">
                <input class="form-control" type="password" value="123"name="pw">
              </div>
          </div>

          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">주소</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="어디일까요?" name="add">
              </div>
          </div>

          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">전화번호</label>
              <div class="col-md-5">
                <input class="form-control" type="number" value="01012341234" name="phone">
              </div>
          </div>

          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">필요 시 더 추가하세용 ~</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="필요 시 더 추가하세용" name="phone">
              </div>
          </div>


          <button type="submit" class="btn btn-outline-primary" onclick="">회원정보수정</button>
          <button type="reset" class="btn btn-outline-primary">취소</button>
      </form>
 
      </div>
    </section>

  </main>



 <%@include file="../includes/footer.jsp"%>