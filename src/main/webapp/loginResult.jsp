<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date,java.io.*,java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${idChk == 0}">
	<script>
		alert("아이디를 다시 확인해주세요.");
		location.href = "loginForm.jsp";
	</script>
</c:if>
<c:if test="${pwChk == 0}">
	<script>
		alert("비밀번호를 다시 확인해주세요.");
		location.href = "loginForm.jsp";
	</script>
</c:if>
<c:if test="${idChk == 1 && pwChk == 1}">
	<script>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		session.setAttribute("id", id);
	%>
	console.log(${dateOfDating});
	alert("${name}" + "님 반갑습니다! 로그인에 성공하여 사진첩 페이지로 이동합니다.");
	location.href = "queryList.jsp";
	</script>
</c:if>
</body>
</html>