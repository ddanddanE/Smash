<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">


<link href="/resources/css/result.css" rel="stylesheet">



</head>
<body>


<form action="/main" method="post">
<input type="1hidden" value="${NOTICE_MSG_USER}" name="userName"/>
<input type="1hidden" value="${NOTICE_MSG_RIVAL}" name="rivalName"/>
<input type="1hidden" value="${param.NOTICE_MSG_NO}" name="NOTICE_MSG_NO"/>
<div class="wrap">
<input type="submit" class="button1" value="승" name="result"  />
<input type="submit" class="button" value="패" name="result"   />
</div>
</form>

</body>
</html>