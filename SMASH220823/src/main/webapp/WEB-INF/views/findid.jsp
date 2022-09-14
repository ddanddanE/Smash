<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

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
        <form class="form-signin border shadow" action="/user/findIDresult" method="post">
          <img class="mb-4" src="/resources/images/logo.png" height="72">
          <h1 class="h3 mb-3 font-weight-normal">아이디 찾기</h1>

          <div class="mb-3">
            <label for="inputname" class="sr-only">이름</label>
            <input type="text" id="inputname" class="form-control" placeholder="이름" name="user_name" required autofocus>
          </div>
          
          <div class="mb-3">
            <label for="inputemail" class="sr-only">이메일</label>
            <input type="email" id="inputemail" class="form-control" placeholder="이메일" name="user_email" required>
          </div>          
			
          <button class="btn btn-lg btn-primary btn-block" type="button" onclick="findid()">전송</button>
       </form>
      </div>
    </section>

  </main>

<script>
function findid(){
	$.ajax({
		url : "/user/findIDresult",
		type : "POST",
		data : {
			"name" : $("#inputname").val(),
			"email" : $("#inputemail").val()
		},
		success: function(data){
			if(data == 1){
				$("#inputname").val("");
				$("#inputemail").val("");
				$("#inputname").focus();
				alert("이름이나 이메일이 다릅니다.");
			}else{
				alert(data);
				history.go(-1);
			}
		}
	});
}
</script>


  <%@include file="./includes/footer.jsp"%>