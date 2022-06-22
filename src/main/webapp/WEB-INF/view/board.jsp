<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<style type="text/css">
body{
	margin: 0 auto;
	padding: 0 ;
	
}
table {
	margin: 0 auto; 
	padding : 0; 
	width : 1000px;
	height: 100px;
	text-align: center;
	width: 1000px;
	padding: 0;
}

#container {
	margin: 0 auto;
	padding: 0; 
	height : 100px;
	text-align: center;
	background-color: aqua;
	height: calc(100vh - 238px);
	
}
#tr{
	height: 10px;
	margin: 10px;
}

#header {
	text-align : center;
	background-color: purple;
	height:100px;
}

#footer {
	text-align: center;
	height: 100px;
	background-color: pink;
}
</style>
</head>
<body>
		<div id="header">
		<br>
			<h1>board</h1>
		</div>
		<%@include file="./menubar.jsp"%>
			<div id="container">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>조회수</th>
					</tr>
		<c:forEach items="${boardList}" var="b">
					<tr>
						<td>${b.b_no }</td>
						<td>${b.b_title }</td>
						<td>${b.u_id }</td>
						<td>${b.b_count }</td>
					</tr>
		</c:forEach>
				</table>
			</div>
		<div id="footer">footer</div>
</body>
</html>