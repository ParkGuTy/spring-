<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%@include file="./menubar.jsp" %>
	<h1>로그인</h1>
	
	<form action="./login.do" method="post">
		<input type="text" name="id" required="required">
		<input type="password" name="pw" required="required">
		<button type="reset">초기화</button>
		<button type="submit">로그인</button>
	</form>
</body>
</html>