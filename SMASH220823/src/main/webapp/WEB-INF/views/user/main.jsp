<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>


<style>
<!--
#mainBanner {
	margin: auto;
}
carousel-control-prev-icon
.carousel-control-prev-icon{
	 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E"); 


}

.carousel-control-next-icon{
	background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23000' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E"); 

}
-->
</style>


  <div style="background: url(/resources/images/main.jpg) no-repeat right/cover">
    <div class="container">
      <div class="row align-items-center vh-50 py-5">
        <div class="col-xl-5 col-lg-6 mr-auto py-2 text-light order-2 text-center text-lg-left">
          <h1 class="mb-0">
            <span>SMASH</span>
          </h1>
          <p class="lead mb-3 font-weight-bold">운동을 함께할 상대를 온라인으로 매칭해주고 최적의 운동 시설을 쉽게 검색해보세요</p>
          <a class="btn btn-outline-light btn-lg mr-2" href="login.html" target="_new">시작하기</a>
          <div class="btn-group">
            <a href="theme.css" class="btn btn-outline-light btn-lg">
              지역검색
            </a>
            <button type="button" class="btn btn-lg btn-outline-light dropdown-toggle dropdown-toggle-split"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="sr-only">Downloads</span>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="theme.css">theme.css</a>
              <a class="dropdown-item" href="theme.min.css">theme.min.css</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="theme.scss">theme.scss</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" target="new"
                href="https://github.com/ThemesGuide/bootstrap-themes/tree/master/hootstrap">Full template</a>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>



  <main>
    <section class="container">
      <h1 class="text-center">TOP 랭커</h1>
      <hr style="width: 100px;" class="mt-4">
     
      <div class="row py-5">
        <div class="col-12 my-auto">
          <div class="row text-center">
            <div class="col-lg-3 mb-4">
              <div class="card h-100">
                <div class="card-body d-flex flex-column justify-content-center align-items-center">
                  <img src="/resources/images/profile1.jpg" class="rounded-circle" width="200">
                  <h4 class="card-title text-primary mt-3">고민훈</h4>
                  <p class="card-text">테니스(서울 노원구)</p>
                  <!-- 
                  <input type="hidden1" name="User_ID" value="${user.user_id }" />
                   -->
                  <a href="#" class="btn btn-primary mt-auto">Button</a>
                </div>
              </div>
            </div>
            <div class="col-lg-3 mb-4">
              <div class="card h-100">
                <div class="card-body d-flex flex-column justify-content-center align-items-center">
                  <img src="/resources/images/profile2.jpg" class="rounded-circle" width="200">
                  <h4 class="card-title text-primary mt-3">윤진환</h4>
                  <p class="card-text">테니스(의정부 의정부)</p>
                  <a href="#" class="btn btn-primary mt-auto">Button</a>
                </div>
              </div>
            </div>
            <div class="col-lg-3 mb-4">
              <div class="card h-100">
                <div class="card-body d-flex flex-column justify-content-center align-items-center">
                  <img src="/resources/images/profile3.jpg" class="rounded-circle" width="200">
                  <h4 class="card-title text-primary mt-3">신지원강사님</h4>
                  <p class="card-text">테니스(서울 종로구)</p>
                  <a href="#" class="btn btn-primary mt-auto">Button</a>
                </div>
              </div>
            </div>
            <div class="col-lg-3 mb-4">
              <div class="card h-100">
                <div class="card-body d-flex flex-column justify-content-center align-items-center">
                  <img src="/resources/images/profile4.jpg" class="rounded-circle" width="200">
                  <h4 class="card-title text-primary mt-3">이태우</h4>
                  <p class="card-text">테니스(서울 종로구)</p>
                  <a href="#" class="btn btn-primary mt-auto">Button</a>
                </div>
              </div>
            </div>
          </div>
        </div>
       </div>
    </section>
    


  </main>

<%@include file="../includes/footer.jsp"%>
