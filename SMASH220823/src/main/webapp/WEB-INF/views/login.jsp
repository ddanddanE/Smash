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
        <form class="form-signin border shadow " action="/user/logincheck" method="post">
          <img class="mb-4" src="/resources/images/logo.png" height="72">
          <h1 class="h3 mb-3 font-weight-normal">로그인해주세요</h1>
          <div class="mb-3">
            <label for="inputEmail" class="sr-only">ID</label>
            <input type="text" name="User_Id" id="User_ID" class="form-control" placeholder="아이디" required autofocus>
          </div>
          
          <div class="mb-3">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password"  name="User_Pw" id="User_PW" class="form-control" placeholder="비밀번호" required>
          </div>          
          <div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="remember-me"> 아이디 기억하기
            </label>
          </div>

          <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
          <p class="mt-3">아이디가 없으세요? <a class="font-weight-bold" href="/join">회원가입</a></p>
          <p class="mt-1 mb-3">비밀번호를 잊으셨나요? <a class="font-weight-bold" href="password.html">비밀번호 찾기</a></p>
        </form>
      </div>

    </section>

  </main>



  <footer id="footer" class="bg-dark text-light py-5">
    <div class="container py-5">
      <div class="row">
        <div class="col-6 col-md-6 col-lg-3 mb-2">
          <h6 class="text-uppercase">Tools</h6>
          <ul class="nav flex-column">
            <li><a class="text-white" target="ext" rel="nofollow" href="https://themestr.app"
                title="Bootstrap theme builder">Themestr.app</a></li>
            <li><a class="text-white" target="ext" rel="nofollow" href="http://themes.guide"
                title="Bootstrap free and pro themes">Themes.guide</a></li>
            <li><a class="text-white" target="ext" rel="nofollow" href="http://codeply.com"
                title="Prototype and edit code for Bootstrap and other responsive frameworks">Codeply</a></li>
            <li><a class="text-white" target="ext" rel="nofollow" href="http://bootply.com">Bootply</a></li>
          </ul>
        </div>
        <div class="col-6 col-md-6 col-lg-3 mb-2">
          <h6 class="text-uppercase">More</h6>
          <ul class="nav flex-column">
            <li><a class="text-white" target="_new" href="http://wdstack.com"
                title="The top projects, tools and apps for Web developers">WDStack</a></li>
            <li><a class="text-white" target="_new" href="http://theme.cards">Theme.cards</a></li>
            <li><a class="text-white" target="_new" href="http://www.bootbundle.com">BootBundle</a></li>
            <li><a class="text-white" target="_new" title="Learn about Bootstrap 4 using this free theme"
                href="http://bootstrap4.guide">Bootstrap4.guide</a></li>
          </ul>
        </div>
        <div class="col-12 col-md-12 col-lg-6 mb-2 text-right">
          <h6 class="text-uppercase">Follow</h6>
          <ul class="nav float-right">
            <li><a class="text-white mr-2" rel="nofollow" href="http://twitter.com/ThemesGuide"
                title="Follow on Twitter"><i class="h1 fa fa-fw fa-twitter fa-2x ion-logo-twitter"></i></a></li>
            <li><a class="text-white mr-2" rel="nofollow" href="https://www.facebook.com/codeply"
                title="Follow on Facebook"><i class="h1 fa fa-fw fa-facebook fa-2x ion-logo-facebook"></i></a></li>
            <li><a class="text-white mr" rel="nofollow" href="https://github.com/ThemesGuide/bootstrap-themes"
                title="Follow on GitHub"><i class="h1 fa fa-fw fa-facebook fa-2x ion-logo-github"></i></a></li>
          </ul>
        </div>
      </div>
      <!--/row-->
    </div>
  </footer>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>