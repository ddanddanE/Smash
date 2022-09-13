<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>
<script type="text/javascript" src="/resources/js/user.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec5badb6965bce310ca0bfdda8280394&libraries=services"></script>

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
          
        <form id="updateform" action="/user/updatesuccess" method="post">
            <div class="form-group row">
              <label class="col-md-2 col-form-label form-control-label text-muted">아이디</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="${user.user_id}" name="user_id" id="id" readonly="readonly">
              </div>
            </div>
 
          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">비밀번호</label>
              <div class="col-md-5">
                <input class="form-control" type="password" value="${user.user_pw}"name="user_pw" id="pw">
              </div>
          </div>
          
		  <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">이름</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="${user.user_name}" name="user_name" readonly="readonly">
              </div>
          </div>
          
          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">이메일</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="${user.user_email}" name="user_email">
              </div>
          </div>
          
          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">전화번호</label>
              <div class="col-md-5">
                <input class="form-control" type="number" value="${user.user_phonenum}" name="user_phonenum">
              </div>
          </div>
          
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">주소</label>
            <div class="col-sm-3">
              <input class="form-control" type="text" id="sample6_postcode" name="add" value="${adr4}" placeholder="우편번호입력" readonly="readonly">
            </div>
            <button type="button" class="btn btn-outline-primary" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample6_address" name="add" value="${adr1}" placeholder="주소" readonly="readonly">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample6_detailAddress" name="addDetail" value="${adr3}" placeholder="상세주소" onkeyup="adr()">
            </div>

            <div class="col-sm-4">
              <input class="form-control" type="text" id="sample6_extraAddress" name="" value="${adr2}" placeholder="참고 항목" readonly="readonly"> 
            </div>
            <input type="text" class="" id="Address" name="user_address" readonly="readonly" value="${user.user_address}"><!-- hidden -->
          </div>
          
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">운동장 주소</label>
            <div class="col-sm-3">
              <input class="form-control" type="text" id="sample7_postcode" name="add" value="${s_Adr4}" placeholder="우편번호입력" readonly="readonly">
            </div>
            <button type="button" class="btn btn-outline-primary" onclick="sample7_execDaumPostcode()">우편번호 찾기</button>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample7_address" name="add" value="${s_Adr1}" placeholder="주소" readonly="readonly">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample7_detailAddress" name="addDetail" value="${s_Adr3}" placeholder="상세주소" onkeyup="adr()">
            </div>

            <div class="col-sm-4">
              <input class="form-control" type="text" id="sample7_extraAddress" name="" value="${s_Adr2}" placeholder="참고 항목" readonly="readonly"> 
            </div>
            <input type="text" class="" id="Sport_Address" name="user_sport_address" readonly="readonly" value="${user.user_sport_address}"><!-- hidden -->
          </div>
			<div id="getmap">
            </div>
            <input type="text" id="longitude" name="user_sport_address_x" value="${user.user_sport_address_x}">
            <input type="text" id="Latitude" name="user_sport_address_y" value="${user.user_sport_address_y}">
          <!-- <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">필요 시 더 추가하세용 ~</label>
              <div class="col-md-5">
                <input class="form-control" type="text" value="필요 시 더 추가하세용" name="phone">
              </div>
          </div> -->
          
          <div class="form-group row">
            <label class="col-md-2 col-form-label form-control-label text-muted">비밀번호확인</label>
              <div class="col-md-5">
                <input class="form-control" type="password" value=""id="pwconf">
              </div>
          </div>
          
          
      </form>
		 <button type="submit" class="btn btn-outline-primary" onclick="pwchk()">회원정보수정</button>
          <button type="reset" class="btn btn-outline-primary">취소</button>
      </div>
    </section>

  </main>



 <%@include file="./includes/footer.jsp"%>