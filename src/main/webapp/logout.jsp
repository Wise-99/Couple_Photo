<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
<%
   session.invalidate();
%>
<script>
	alert("로그아웃에 성공하여 로그인 화면으로 돌아갑니다.");
   location.href = 'loginForm.jsp';
</script>
</body>
</html>