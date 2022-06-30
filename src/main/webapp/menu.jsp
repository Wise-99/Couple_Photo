<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table id="menu">
	<tr><td bgcolor = "#D18063">
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="info.jsp" style = "color:white; text-decoration:none">사이트 소개</a>
		<% if(session.getAttribute("id") == null){ %>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="loginForm.jsp" style = "color:white; text-decoration:none">로그인</a>
		<%} else {%>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="photoInsertForm.jsp" style = "color:white; text-decoration:none">사진 등록</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="queryList.jsp" style = "color:white; text-decoration:none">사진첩</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="logout.jsp" style = "color:white; text-decoration:none">로그아웃</a>
		<% } %>
	</td></tr>
</table>
</body>
</html>