<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>


<style>
.form-signin {
    width: 100%;
    max-width: 330px;
    padding: 30px;
    margin: auto;
}


</style>

  <main>
    <section class="container">

      <div class="text-center mb-5">
        <form class="form-signin border shadow ">
          <img class="mb-4" src="/resources/images/logo.png" height="72">
          <h1 class="h3 mb-3 font-weight-normal">비밀번호 찾기</h1>

          <p class="text-left">회원가입 시 아이디와 이메일을 입력하시면 임시비밀번호를 이메일로 전송해드립니다.</p>

          <div class="mb-3">
            <label for="inputEmail" class="sr-only">아이디</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="아이디" required autofocus>
          </div>
          
          <div class="mb-3">
            <label for="inputPassword" class="sr-only">이메일</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="이메일" required>
          </div>          
          

          <button class="btn btn-lg btn-primary btn-block" type="submit">전송</button>
       </form>
      </div>
    </section>

  </main>



  <%@include file="./includes/footer.jsp"%>