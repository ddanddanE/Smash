<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>

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
        <form class="form-join border shadow" action="#">
          <h1 class="h3 m-4 font-weight-normal">회원가입</h1>
          
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="id" name="id" value="" placeholder="ID입력">
            </div>
 
            <button type="button" class="btn btn-outline-primary" onclick="">중복확인</button>
            
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호입력</label>
            <div class="col-sm-5">
              <input class="form-control" type="password" id="pw" name="pw" value="" placeholder="pw입력">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호확인</label>
            <div class="col-sm-5">
              <input class="form-control" type="password" id="pwcheck" name="pwcheck" value="" placeholder="pw확인">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">이름</label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="name" name="name" value="" placeholder="name입력">
            </div>
          </div>

          <div class="form-group row">
              <label for="inputPassword" class="col-sm-2 col-form-label">주민번호</label>
              <div class="col-sm-3">
                <input class="form-control" type="text" id="jumin1" name="jumin1" value="" placeholder="주민번호입력"> 
              </div>
              
              <div class="col-sm-0">
                -
              </div>

              <div class="col-sm-3">
                <input class="form-control" type="text" id="jumin2" name="jumin2" value="" placeholder="주민번호입력"> 
              </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">이메일</label>
            <div class="col-sm-5">
              <input class="form-control" type="email" id="email" name="email" value="" placeholder="email입력">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">핸드폰번호</label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="phone" name="phone" value="" placeholder="phone입력">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">생년월일</label>
            <div class="col-sm-5">
              <input class="form-control" type="date" id="user_BIRTHDAY " name="user_BIRTHDAY" value="" placeholder="생년월일입력">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">주소</label>
            <div class="col-sm-3">
              <input class="form-control" type="text" id="add" name="add" value="" placeholder="우편번호입력">
            </div>
            <button type="button" class="btn btn-outline-primary" onclick="">우편번호 찾기</button>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="add" name="add" value="" placeholder="주소">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="addDetail" name="addDetail" value="" placeholder="상세주소">
            </div>

            <div class="col-sm-4">
              <input class="form-control" type="text" id="" name="" value="" placeholder="참고 항목"> 
            </div>
          </div>

          
          
          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label">고정운동장</label>
            <div class="col-sm-3">
              <input class="form-control" type="text" id="playground" name="playground" value="" placeholder="우편번호입력">
            </div>
            <button type="button" class="btn btn-outline-primary" onclick="">우편번호 찾기</button>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="" name="" value="" placeholder="주소">
            </div>
          </div>

          <div class="form-group row">
            <label for="inputPassword" class="col-sm-2 col-form-label"> </label>
            <div class="col-sm-5">
              <input class="form-control" type="text" id="" name="" value="" placeholder="상세주소">
            </div>

            <div class="col-sm-4">
              <input class="form-control" type="text" id="" name="" value="" placeholder="참고 항목"> 
            </div>


          </div>

          <button class="btn btn-lg btn-primary" type="submit">회원가입</button>
          <button class="btn btn-lg btn-primary type="reset">취소</button>
        </form>

      </div>
    </section>

  </main>

<%@include file="./includes/footer.jsp"%>

 