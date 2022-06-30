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
<c:if test="${result > 0}">
	<script>
		alert("사진이 성공적으로 삭제되었습니다.");
		location.href = "queryList.jsp";
	</script>
</c:if>
<c:if test="${result == 0}">
	<script>
		alert("사진 삭제에 실패했습니다.관리자에게 문의 부탁드립니다.");
		location.href = "queryList.jsp";
	</script>
</c:if>

</body>
</html>