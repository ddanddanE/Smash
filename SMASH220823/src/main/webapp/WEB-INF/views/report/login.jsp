<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>


<style type="text/css">


</style>


</head>
<body>

	<div class="container my-5">
	
		<div class="row" style="margin: auto;">
			<div class="page-header">
				
			</div>
			<div class="col-md-3" style="margin: auto;">
				<div class="login-box well">
					<form accept-charset="UTF-8" role="form" method="post" action="">
					
						<h4>로그인</h4>
						<div class="form-group">
							<label for="username-email">ID입력</label> <input
								name="user_id" value='' id="username-email"
								placeholder="ID" type="text"
								class="form-control" />
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label> <input name="password"
								id="password" value='' placeholder="Password" type="password"
								class="form-control" />
						</div>
						<!--로그인 버튼 -->
						<div class="form-group">
							<input type="button"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								onclick="location.href='/match/match_list'"
								value="Login" />
						</div>
						<span class='text-center'><a
							href="/bbs/index.php?mid=index&act=dispMemberFindAccount"
							class="text-sm">비밀번호 찾기</a></span>
						<hr />
						<div class="form-group">
							<a href="" class="btn btn-default btn-block m-t-md"> 회원가입</a>
						</div>
						
					</form>
				</div>
			</div>
		</div>


	</div>
</body>

<%@include file="../includes/footer.jsp"%>
</html>