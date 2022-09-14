<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <link rel="stylesheet" href="/resources/css/theme.css" />
  <link rel="stylesheet" href="/resources/css/template2.css" />


  <title>Smash 온라인 스포츠 매칭 서비스</title>


</head>

<body>
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary" id="navbar1">
    <div class="container">
      <a class="navbar-brand mr-1 mb-1 mt-0" href="/"><img src="/resources/images/logo.png" height="36"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="collapsingNavbar">
        <ul class="navbar-nav ml-auto">
         
          <li class="nav-item">
            <a class="nav-link font-weight-bold" href="/matchlist">매칭목록</a>
          </li>          
          <li class="nav-item">
            <a class="nav-link font-weight-bold" href="ranking">랭킹보기</a>
          </li>

        </ul>
        <c:if test="${user.user_id eq null}" >
        	<span class="nav-link font-weight-bold">${user.user_id }</span>
        		<div class="ml-1">
          			<a href="login" class="btn btn-light">로그인</a>
        		</div>
        </c:if>
        <c:if test="${user.user_id ne null}">
        	<span class="nav-link font-weight-bold">${user.user_id }</span>
        		<div class="ml-1">
          			<a href="/mypage/matchinglist" class="btn btn-light">마이페이지</a>
        		</div>
        		<div class="ml-1">
          			<a href="/user/logout" class="btn btn-light">로그아웃</a>
        		</div>
         		
        </c:if>
      </div>
    </div>
  </nav>