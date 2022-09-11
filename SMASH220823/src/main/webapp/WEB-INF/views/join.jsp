<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/resources/js/user.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ec5badb6965bce310ca0bfdda8280394&libraries=services"></script>
<style>
.form-join {
    width: 100%;
    max-width: 800px;
    padding: 15px;
    margin: auto;
}
</style>
  <main>
    <section class="container">
      <div class="text-center mb-5">
        <form class="form-join border shadow" action="/user/success" method="post">
          <h1 class="h3 m-4 font-weight-normal">회원가입</h1>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="id" name="user_id" value="" placeholder="ID입력">
            </div>
 
            <button type="button" class="btn btn-outline-primary" id="idChk" onclick="return idchk()">중복확인</button>
            <input type="hidden" id = "idpass" value=""><!-- hidden -->
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호입력</label>
            <div class="col-sm-5">
              <input class="form-control" type="password" id="pw" name="user_pw" value="" placeholder="pw입력" onkeyup="passneed()">
              <a id="chkPW"></a>
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호확인</label>
            <div class="col-sm-5">
              <input class="form-control" type="password" id="pwconf" name="pwcheck" value="" placeholder="pw확인" onkeyup="passchk()">
              <a class="" id="alertPW"></a>
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">이름</label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="name" name="user_name" value="" placeholder="name입력">
            </div>
          </div>

          <div class="form-group row">
              <label for="inputPassword" class="col-sm-2 col-form-label">주민번호</label>
              <div class="col-sm-3">
                <input class="form-control" type="text" id="jumin1" name="jumin1" value="" placeholder="주민번호입력" maxlength="6" onkeyup="resi()"> 
              </div>
              
              <div class="col-sm-0">
                -
              </div>
              <div class="col-sm-3">
                <input class="form-control" type="text" id="jumin2" name="jumin2" value="" placeholder="주민번호입력" maxlength="7" onkeyup="resi()"> 
              </div>
              <input type="hidden" class="resiNum" id="resiNum"  name="user_resinum"><!-- hidden -->
          </div>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-2 col-form-label">성별</label>
					<div class="col-sm-3">
						<select class="form-control" id="gender" name="user_gender">
							<option value="M">남자</option>
							<option value="F">여자</option>
						</select>
					</div>
				</div>
				<div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">이메일</label>
            <div class="col-sm-3">
              <input type="text" class="form-control" id="firEmail" onkeyup="insertEmail()">
              
            </div>
            <div class="col-sm-0">
                @
             </div>
             <div class="col-sm-3">
             <input type="text" class="form-control" id="secEmail" onkeyup="insertEmail()">
             </div>
            <div class="col-sm-3">
            	<select class="form-control" id="selectEmail"  onchange="changeEmail()">
					<option value="직접입력">직접입력</option>
					<option value="naver.com">네이버</option>
					<option value="daum.net">다음</option>
					<option value="gmail.com">구글</option>
				</select>
            </div>
            <input type="hidden" id="email" name="user_email"><!-- hidden -->
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">핸드폰번호</label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="phone" name="user_phonenum" value="" placeholder="phone입력" maxlength="11">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">생년월일</label>
            <div class="col-sm-5">
              <input class="form-control" type="date" id="birth " name="user_birthday" value="" placeholder="생년월일입력">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">주소</label>
            <div class="col-sm-3">
              <input class="form-control" type="text" id="sample6_postcode" name="add" value="" placeholder="우편번호입력" readonly="readonly">
            </div>
            <button type="button" class="btn btn-outline-primary" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample6_address" name="add" value="" placeholder="주소" readonly="readonly">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample6_detailAddress" name="addDetail" value="" placeholder="상세주소" onkeyup="adr()">
            </div>

            <div class="col-sm-4">
              <input class="form-control" type="text" id="sample6_extraAddress" name="" value="" placeholder="참고 항목" readonly="readonly"> 
            </div>
            <input type="hidden" class="" id="Address" name="user_address" readonly="readonly"><!-- hidden -->
          </div>

          
          
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">고정운동장</label>
            <div class="col-sm-3">
              <input class="form-control" type="text" id="sample7_postcode" name="playground" value="" placeholder="우편번호입력" readonly="readonly">
            </div>
            <button type="button" class="btn btn-outline-primary" onclick="sample7_execDaumPostcode()">우편번호 찾기</button>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample7_address" name="" value="" placeholder="주소" readonly="readonly">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="sample7_detailAddress" name="" value="" placeholder="상세주소" onkeyup="sportadr()">
            </div>

            <div class="col-sm-4">
              <input class="form-control" type="text" id="sample7_extraAddress" name="" value="" placeholder="참고 항목"readonly="readonly"> 
            </div>
			<input type="hidden" class="" id="Sport_Address" name="user_sport_address" readonly="readonly"><!-- hidden -->
          </div>
			<div id="getmap" style="width: 500px; height: 300px">
            </div>
            <input type="hidden" id="longitude" name="user_sport_address_x">
            <input type="hidden" id="Latitude" name="user_sport_address_y">
          <button class="btn btn-lg btn-primary" type="submit" onclick="return checks()">회원가입</button>
          <button class="btn btn-lg btn-primary" type="reset">취소</button>
        </form>

      </div>
    </section>

  </main>
<%@include file="./includes/footer.jsp"%>


 