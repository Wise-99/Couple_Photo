<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Couple Photo - Information</title>
<style>
	div { text-align: center; }
</style>
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
<p>Couple Photo는 날짜별로 사진을 저장하여 정리할 수 있는 웹 사이트 입니다.</p>
<p>저장한 사진은 타인에게 보여지지 않으며, 본인이 사진을 추가 / 삭제 할 수 있습니다.</p>
<p>사진은 한 게시글 당 9장까지 저장할 수 있습니다.</p>
<br><br>
<p>자신만의 사진첩을 만들어보세요!</p>
<div >
<img src="https://cdn-icons-png.flaticon.com/512/6349/6349805.png" >
</div>
<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>