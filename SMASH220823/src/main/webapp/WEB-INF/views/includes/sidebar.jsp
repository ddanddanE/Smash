<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="common.css">
<meta charset="UTF-8">
<title>좌측 토글 사이드 바 만들기</title>

<style type="text/css">
body, ul, li {
	padding: 0;
	margin: 0;
	list-style: none;
}

a {
	color: inherit;
	text-decoration: none;
}

.left-side-bar>ul ul {
	display: none;
	position: absolute;
	top: 0;
	left: 100%;
	background-color: #dfdfdf;
}

body {
	height: 10000px;
}

.left-side-bar {
	background-color: #dfdfdf;
	height: 100%;
	width: 180px;
	position: fixed;
	left: -155px;
	transition: left .3s;
}

.left-side-bar>.status-ico {
	text-align: right;
	padding: 10px;
}

.left-side-bar>ul li {
	position: relative;
}

.left-side-bar ul {
	font-weight: bold;
	text-align: center;
	padding: 0;
}

.left-side-bar ul>li>a {
	display: block;
	padding: 10px;
	white-space: nowrap;
}

.left-side-bar:hover {
	left: 0;
}

.left-side-bar ul>li:hover ul {
	display: block;
}

.left-side-bar ul>li:hover>a {
	color: white;
	background-color: black;
}

.left-side-bar>.status-ico>span:last-child {
	display: none;
}

.left-side-bar:hover>.status-ico>span:last-child {
	display: block;
}

.left-side-bar:hover>.status-ico>span:first-child {
	display: none;
}
</style>


</head>
<body>
	<div class="left-side-bar">
		<div class="status-ico">
			<span>▶</span> <span>▼</span>
		</div>

		<ul>
			<li><a href="#">메뉴</a>
				<ul>
					<li><a href="/member/Member">회원가입</a></li>
					<li><a href="#">매칭 신청</a></li>
					<li><a href="/match/match_list">매칭 목록</a></li>
					<li><a href="#">매칭 결과?</a></li>
					
				</ul></li>
			<li><a href="#">마이페이지?</a>
				<ul>
					<li><a href="#">회원정보수정?</a></li>
					<li><a href="#">결제내역?</a></li>
					<li><a href="#">나의 승률?랭킹?</a></li>
					<li><a href="#">나의 평점?</a></li>
				</ul></li>
			<li><a href="#">광고 물품?</a>
				<ul>
					<li><a href="#">농구?</a></li>
					<li><a href="#">탁구?</a></li>
					<li><a href="#">축구?</a></li>
					<li><a href="#">야구?</a></li>
					<li><a href="#">테니스?</a></li>
				</ul></li>
			<li><a href="#">신고?</a>
				<ul>
					<li><a href="/report/reportlist">신고내역?</a></li>
					<li><a href="/report/reportinsert">신고하기?</a></li>
					<li><a href="#">2차 메뉴 아이템3</a></li>
					<li><a href="#">2차 메뉴 아이템4</a></li>
					<li><a href="#">2차 메뉴 아이템5</a></li>
				</ul></li>
			<li><a href="#">코딩!</a>
				<ul>
					<li><a href="https://www.youtube.com/">유튜브</a></li>
					<li><a href="#">테니쓰</a></li>
					<li><a href="#">2차 메뉴 아이템3</a></li>
					<li><a href="#">2차 메뉴 아이템4</a></li>
					<li><a href="https://www.google.com/search?q=%EB%A7%A5%EC%8B%AC&sxsrf=ALiCzsaNcJxn5i24jpy7rPJkX8MXnrvtKw:1661418252814&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj32qCm0eH5AhUZO3AKHX0ICp8Q_AUoAXoECAIQAw&biw=1536&bih=754&dpr=1.25">
					쨔쓰!</a></li>
				</ul></li>
		</ul>
	</div>


</body>
</html>