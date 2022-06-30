<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${idChk > 0 }">
			<script>
				alert("이미 가입된 아이디입니다.");
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${result > 0 }">
			<script>
				alert("회원 가입에 성공하였습니다. 로그인 후 이용해주세요!");
				location.href="loginForm.jsp";
			</script>
		</c:when>
			<c:when test="${result <= 0 }">
			<script>
				alert("회원 가입 실패");
				history.go(-1);
			</script>
		</c:when>
	</c:choose>
</body>
</html>