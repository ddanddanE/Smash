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
          
          <div class="mb-3">
            <label for="inputid" class="sr-only">아이디</label>
            <input type="text" id="inputid" class="form-control" placeholder="아이디" name="user_id"required autofocus>
          </div>
          
          <div class="mb-3">
            <label for="inputname" class="sr-only">이름</label>
            <input type="text" id="inputname" class="form-control" placeholder="이름" name="user_name" required>
          </div>  
          
          <div class="mb-3">
            <label for="inputemail" class="sr-only">이메일</label>
            <input type="email" id="inputemail" class="form-control" placeholder="이메일" name="user_email" required>
          </div>         
          
          <button class="btn btn-lg btn-primary btn-block" type="button" onclick="findpw()">전송</button>
       </form>
      </div>
    </section>

  </main>
<script>
function findpw(){
	$.ajax({
		url : "/user/findPWresult",
		type : "POST",
		data : {
			"id" : $("#inputid").val(),
			"name" : $("#inputname").val(),
			"email" : $("#inputemail").val()
		},
		success: function(data){
			if(data == 1){
				$("#inputid").val("");
				$("#inputname").val("");
				$("#inputemail").val("");
				$("#inputname").focus();
				alert("아이디나 이름,이메일이 다릅니다.");
			}else{
				alert(data);
				history.go(-1);
			}
		}
	});
}
</script>


  <%@include file="./includes/footer.jsp"%>