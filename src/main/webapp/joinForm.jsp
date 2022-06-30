<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Couple Photo - Join</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<script type="text/javascript">
	function check() {
		if(!frm.id.value){
			alert("사용할 아이디를 입력하세요.");
			frm.id.focus();
			return false;
		}
		if(!frm.password1.value){
			alert("사용할 비밀번호를 입력하세요.");
			frm.password1.focus();
			return false;
		}
		if(!frm.password2.value){
			alert("비밀번호를 재입력하세요.");
			frm.password2.focus();
			return false;
		}
		if(frm.password1.value != frm.password2.value){
			alert("비밀번호가 다릅니다.");
			frm.password2.focus();
			return false;
		}
		
		if(!frm.name.value){
			alert("사용할 닉네임을 입력하세요.");
			frm.name.focus();
			return false;
		}
		if(!frm.date.value){
			alert("사귄 날짜를 입력하세요.");
			frm.date.focus();
			return false;
		}
		return true;
	}
</script>
<h1>Couple Photo</h1>
<jsp:include page="/menu.jsp" flush="false"/>	<!-- 상단 menu -->
<form method="post" action="join.jsp" name="frm" onsubmit="return check()">
<table id="join">
	<tr>
		<td>아이디</td><td><input type="text" name="id" autofocus="autofocus"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="password1"></td>
	</tr>
	<tr>
		<td>비밀번호 확인</td><td><input type="password" name="password2"></td>
	</tr>
	<tr>
		<td>닉네임</td><td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>사귄 날짜</td><td><input type="date" name="date"></td>
	</tr>
	<tr>
		<td colspan="2"><input id="btnJoin" type="submit" value="회원가입"></td>
	</tr>
</table>
</form>
<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>