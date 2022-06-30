<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "connectDB.jsp" %>
<%
if(session.getAttribute("id") == null){
%>
		<script type="text/javascript">
			alert("로그인 후 이용해주세요!");
			location.href="index.jsp";
		</script>
<%
}else{
	request.setCharacterEncoding("UTF-8");
	String fileSave = "/uploads";
	String real = application.getRealPath(fileSave);
	int max = 1024 * 1024 * 10;
	
	MultipartRequest mr = 
			new MultipartRequest(request, real, max, "utf-8",
			new DefaultFileRenamePolicy());
	String id 		= mr.getParameter("id");
	String date 	= mr.getParameter("saveDate");
	String content 	= mr.getParameter("content");
	String img1 	= mr.getFilesystemName("image1");
	String img2 	= mr.getFilesystemName("image2");
	String img3		= mr.getFilesystemName("image3");
	String img4 	= mr.getFilesystemName("image4");
	String img5 	= mr.getFilesystemName("image5");
	String img6 	= mr.getFilesystemName("image6");
	String img7 	= mr.getFilesystemName("image7");
	String img8 	= mr.getFilesystemName("image8");
	String img9 	= mr.getFilesystemName("image9");

	PreparedStatement pstat = null;
	ResultSet rs = null;
	
	int result = 0;
	
	String sql = "insert into CouplePhoto_posts values(?,?,?,?,?,?,?,?,?,?,?,?)";
	pstat = conn.prepareStatement(sql);
	pstat.setString(1, id);
	pstat.setString(2, date);
	pstat.setString(3, content);
	if(img1 != null){
		pstat.setString(4, "/uploads/" + img1);
	}else{
		pstat.setString(4, img1);
	}
	if(img2 != null){
		pstat.setString(5, "/uploads/" + img2);
	}else{
		pstat.setString(5, img2);
	}if(img3 != null){
		pstat.setString(6, "/uploads/" + img3);
	}else{
		pstat.setString(6, img3);
	}
	if(img4 != null){
		pstat.setString(7, "/uploads/" + img4);
	}else{
		pstat.setString(7, img4);
	}
	if(img5 != null){
		pstat.setString(8, "/uploads/" + img5);
	} else{
		pstat.setString(8, img5);
	}
	if(img6 != null){
		pstat.setString(9, "/uploads/" + img6);
	}else{
		pstat.setString(9, img6);
	}
	if(img7 != null){
		pstat.setString(10, "/uploads/" + img7);
	}else{
		pstat.setString(10, img7);
	}
	if(img8 != null){
		pstat.setString(11, "/uploads/" + img8);
	}else{
		pstat.setString(11, img8);
	}
	if(img9 != null){
		pstat.setString(12, "/uploads/" + img9);
	}else{
		pstat.setString(12, img9);
	}
	
	result = pstat.executeUpdate();
	
	request.setAttribute("result", result);
}
%>
<jsp:forward page="insertResult.jsp"></jsp:forward>
</body>
</html>