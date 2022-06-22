<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<style>

ul{
	background-color: #FFDAB9;
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	text-align: center;
}
li{ float: left; }

li a{
	display: block;
	background-color: #FFDAB9;
	color : #000000;
	padding : 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}
li a.current{
	background-color: #FF6347;
	color : white;
}
li a:hover:net(.current){
	background-color: #CD853F;
	color : black;
}
</style>
   
	<ul>
		<li><a href="./main.do">메인</a></li>
		<li><a class="current" href="/css/intro"> 똥개</a></li>
		<ul style="float:left; list-style-type:none;">
		<li><a href="./board.do">보드</a></li>
		<li><a href="./login.do" style="margin-left:1600px;">로그인</a></li>
		</ul>
	</ul>

