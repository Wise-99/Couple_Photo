<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Couple Photo - 사진 등록</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
function setThumbnail(event) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		var img = document.createElement("img"); 
		img.setAttribute("src", event.target.result); 
		document.querySelector("div#image_container").appendChild(img); 
	}; 
	reader.readAsDataURL(event.target.files[0]); 
}
</script>
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<script type="text/javascript">
window.history.forward();
function noBack() {
	window.history.forward();
}
</script>
<h1>Couple Photo</h1>
<jsp:include page="/menu.jsp" flush="false"/>	<!-- 상단 menu -->
<p>사진은 최대 9장까지 등록이 가능합니다.</p>
<p>사진의 크기는 300px * 300px로 미리보기가 가능합니다.</p>
<form method="post" action="insert.jsp" enctype="multipart/form-data">
<table id="photoSave">
	<tr>
		<td colspan="2"><input id="btnSave" type="submit" value="사진 저장"><input type="hidden" name="id" value="<%= session.getAttribute("id")%>"></td>
	</tr>
	<tr>
		<td colspan="2">사진 찍은 날짜 : <input type="date" name="saveDate"></td>
	</tr>
	<tr>
		<td colspan="2">내용 : <input type="text" name="content"></td>
	</tr>
	<tr>
		<td>첫번째 사진 : <input type="file" name="image1" accept="image/*" onchange="setThumbnail(event);"/></td>
		<td>두번째 사진 : <input type="file" name="image2" accept="image/*" onchange="setThumbnail(event);"/></td>
		<td>세번째 사진 : <input type="file" name="image3" accept="image/*" onchange="setThumbnail(event);"/></td>
	</tr>
	<tr>
		<td>네번째 사진 : <input type="file" name="image4" accept="image/*" onchange="setThumbnail(event);"/></td>
		<td>다섯번째 사진 : <input type="file" name="image5" accept="image/*" onchange="setThumbnail(event);"/></td>
		<td>여섯번째 사진 : <input type="file" name="image6" accept="image/*" onchange="setThumbnail(event);"/></td>
	</tr>
	<tr>
		<td>일곱번째 사진 : <input type="file" name="image7" accept="image/*" onchange="setThumbnail(event);"/></td>
		<td>여덟번째 사진 : <input type="file" name="image8" accept="image/*" onchange="setThumbnail(event);"/></td>
		<td>아홉번째 사진 : <input type="file" name="image9" accept="image/*" onchange="setThumbnail(event);"/></td>
	</tr>
	<tr>
		<td colspan="3"><div id="image_container"></div></td>
	</tr>
</table>
</form>
<jsp:include page="/footer.jsp" flush="false"/>
</body>
</html>