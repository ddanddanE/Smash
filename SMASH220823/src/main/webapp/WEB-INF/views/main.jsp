<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="./includes/header.jsp"%>

<style>
<!--
#mainBanner {
	margin: auto;
}
-->
</style>

<div
	style="background: url(/resources/images/main.jpg) no-repeat right/cover">
	<div class="container">
		<div class="row align-items-center vh-50 py-5">
			<div
				class="col-xl-5 col-lg-6 mr-auto py-2 text-light order-2 text-center text-lg-left">
				<h1 class="mb-0">
					<span>SMASH</span>
				</h1>
				<p class="lead mb-3 font-weight-bold">운동을 함께할 상대를 온라인으로 매칭해주고
					최적의 운동 시설을 쉽게 검색해보세요</p>
				<a class="btn btn-outline-light btn-lg mr-2" href="login.html"
					target="_new">시작하기</a>
				<div class="btn-group">
					<a href="theme.css" class="btn btn-outline-light btn-lg"> 지역검색
					</a>
					<button type="button"
						class="btn btn-lg btn-outline-light dropdown-toggle dropdown-toggle-split"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Downloads</span>
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="theme.css">theme.css</a> <a
							class="dropdown-item" href="theme.min.css">theme.min.css</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="theme.scss">theme.scss</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" target="new"
							href="https://github.com/ThemesGuide/bootstrap-themes/tree/master/hootstrap">Full
							template</a>
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
	<div class="row pt-5">
		<div class="col-12 my-auto">
			<div class="row text-center">
				<div class="col-lg-3 mb-4">
					<div class="card h-100">
						<div
							class="card-body d-flex flex-column justify-content-center align-items-center">
							<img src="/resources/images/profile1.jpg" class="rounded-circle"
								width="200">
							<h4 class="card-title text-primary mt-3">고민훈</h4>
							<p class="card-text">테니스(서울 노원구)</p>
							<a href="#" class="btn btn-primary mt-auto">Button</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 mb-4">
					<div class="card h-100">
						<div
							class="card-body d-flex flex-column justify-content-center align-items-center">
							<img src="/resources/images/profile2.jpg" class="rounded-circle"
								width="200">
							<h4 class="card-title text-primary mt-3">윤진환</h4>
							<p class="card-text">테니스(의정부 의정부)</p>
							<a href="#" class="btn btn-primary mt-auto">Button</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 mb-4">
					<div class="card h-100">
						<div
							class="card-body d-flex flex-column justify-content-center align-items-center">
							<img src="/resources/images/profile3.jpg" class="rounded-circle"
								width="200">
							<h4 class="card-title text-primary mt-3">신지원강사님</h4>
							<p class="card-text">테니스(서울 종로구)</p>
							<a href="#" class="btn btn-primary mt-auto">Button</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 mb-4">
					<div class="card h-100">
						<div
							class="card-body d-flex flex-column justify-content-center align-items-center">
							<img src="/resources/images/profile4.jpg" class="rounded-circle"
								width="200">
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

<section class="container mt-0">
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://file.miricanvas.com/template_thumb/2021/06/18/15/20/k0sn98sjppfjf53g/thumb.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="https://file.miricanvas.com/template_thumb/2021/06/18/15/30/k949e2hylr317ic6/thumb.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="https://file.miricanvas.com/template_thumb/2021/08/30/13/00/ka5anqit7ivfoxw3/thumb.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

</section>

</main>

<%@include file="./includes/footer.jsp"%>
