<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>
<%@ page import = "final_project.Post" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Couple Photo - 사진첩</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<script>
window.history.forward();
function noBack() {
	window.history.forward();
}
</script>
<h1>Couple Photo</h1>
<jsp:include page="/menu.jsp" flush="false"/>	<!-- 상단 menu -->
<p id = "count">${name}님은 연인과 만난지 ${loveDay}일 (●'ᴗ'●)ﾉ♥</p>
<table id="photoList">
	<tr bgcolor="#f9d9ca">
		<th>날짜</th><th>내용</th><th>사진들</th><th>글 삭제</th>
	</tr>
	<%
		response.setContentType("text/html;charset=utf8");
		request.setCharacterEncoding("UTF-8");
			
		ArrayList<Post> list = (ArrayList<Post>)request.getAttribute("list");
	%>
	<c:forEach var="post" items="${list}">
		<tr>
			<td>${post.getDate()}</td>
			<td>${post.getContent()}</td>
			<td>
			<c:if test="${post.getImg1() != null}">
				<img src="${post.getImg1() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg2() != null}">
				<img src="${post.getImg2() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg3() != null}">
				<img src="${post.getImg3() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg4() != null}">
				<img src="${post.getImg4() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg5() != null}">
				<img src="${post.getImg5() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg6() != null}">
				<img src="${post.getImg1() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg7() != null}">
				<img src="${post.getImg7() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg8() != null}">
				<img src="${post.getImg8() }" style="width:200px; height:200px;">
			</c:if>
			<c:if test="${post.getImg9() != null}">
				<img src="${post.getImg9() }" style="width:200px; height:200px;">
			</c:if>
			</td>
			<td>
			<form method="post" action="delete.jsp">
				<input type="hidden" name="date" value = "${post.getDate()}">
				<input type="hidden" name="content" value = "${post.getContent()}"> 
			<button id = "btnDelete" type="submit">삭제</button>
			</form>
			</td>
		</tr>
	</c:forEach>
</table>
<br><br>
<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>