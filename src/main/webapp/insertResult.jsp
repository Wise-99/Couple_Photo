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
		alert("사진을 저장하였습니다. 사진첩 페이지로 이동합니다.");
	</script>
	<input type="hidden" name = "id" value="<%=session.getAttribute("id")%>">
	<script type="text/javascript">
		location.href="queryList.jsp";
	</script>
</c:if>
<c:if test="${pwChk == 0}">
	<script>
		alert("사진 저장에 실패하여 작성 화면으로 되돌아갑니다.");
		history.go(-1);
	</script>
</c:if>
</body>
</html>