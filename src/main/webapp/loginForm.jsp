<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Couple Photo - Login</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<script type="text/javascript">
window.history.forward();
function noBack() {
	window.history.forward();
}

	function check() {
		if(!frm.id.value){
			alert("아이디를 입력하세요.");
			frm.id.focus();
			return false;
		}
		if(!frm.password.value){
			alert("비밀번호를 입력하세요.");
			frm.password.focus();
			return false;
		}
		return true;
	}
</script>

<h1>Couple Photo</h1>
<jsp:include page="/menu.jsp" flush="false"/>	<!-- 상단 menu -->
<p id="explanation">Couple Photo는 날짜별로 사진을 저장하여 정리할 수 있는 웹 사이트 입니다.</p>
<form method="post" action="login.jsp" name="frm" onsubmit="return check()">
<table id="login">
	<tr>
		<td>아이디</td><td><input type="text" name="id" autofocus="autofocus"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td colspan="2">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="btnLogin" type="submit" value="로그인">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="joinForm.jsp" style = "color:black; text-decoration:none">회원가입</a>
		</td>
	</tr>
</table>
</form>
<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>