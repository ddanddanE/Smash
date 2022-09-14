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
            <a href="/user/memberinfo" class="list-group-item list-group-item-action active">회원정보</a>
            <a href="/user/matchinglist" class="list-group-item list-group-item-action ">나의 매칭목록</a>
            <a href="/user/matchdetail.html" class="list-group-item list-group-item-action">나의 신청내역</a>
             <a href="/user/match_receive" class="list-group-item list-group-item-action">신청받은내역</a>
            <a href="/report/reportlist" class="list-group-item list-group-item-action">신고받은 내용</a>
            <a href="#" class="list-group-item list-group-item-action">회원탈퇴</a>
            </div>

        </div>
        <div class="col-9">
          <h2 class="mb-3"><i class="bi bi-list-stars"></i> 회원정보</h2>
          
          
        <form action="#">
            <div class="form-group row">
              <label class="col-md-2 col-form-label form-control-label text-muted">이름</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value=${user.user_name} id="name"  name="user_name">
              </div>
            </div>
 
          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">이메일</label>
              <div class="col-md-3">
                <input class="form-control" type="text" id="firEmail" value=${firEmail}>
              </div>
              <div class="col-md-0">
                @
              </div>
              <div class="col-md-3">
                <input class="form-control" type="text"  id="secEmail" value=${secEmail}>
              </div>
              <div class="col-md-0">
                <select class="form-control" id="selectEmail">
					<option value="직접입력">직접입력</option>
					<option value="naver.com">네이버</option>
					<option value="daum.net">다음</option>
					<option value="gmail.com">구글</option>
				</select>
              </div>
          </div>

          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">전화번호</label>
              <div class="col-md-5">
                <input class="form-control" type="text" id="phoneNum" placeholder="-를 빼고 입력해주세요" maxlength="11" name="user_phonenum" value=${user.user_phonenum}>
              </div>
          </div>

          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">생년월일</label>
              <div class="col-md-5">
                <input class="form-control" type="date" id="birth" name="user_birthday" value=${user.user_birthday}>
              </div>
          </div>

          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">주소</label>
             
              <div class="col-md-5">
               	<input class="form-control" type="text" id="sample6_postcode" placeholder="우편번호" readonly="readonly" value="${adr4}">
	          </div>
	          
	           <div class="col-md-0">
               	<input class="form-control" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" >	
	          </div>
          </div>


          <button type="submit" class="btn btn-outline-primary" onclick="">수정</button>
          <button type="reset" class="btn btn-outline-primary">취소</button>
      </form>
 
      </div>
    </section>

  </main>



 <%@include file="../includes/footer.jsp"%>