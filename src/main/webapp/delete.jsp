<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file = "connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");
	String date = request.getParameter("date");
	String content = request.getParameter("content");
	
	PreparedStatement pstat = null;
	int result = 0;
	
	String sql = "delete from CouplePhoto_posts where id = ? and date = ? and content = ?;";
	
	pstat = conn.prepareStatement(sql);
	pstat.setString(1, id);
	pstat.setString(2, date);
	pstat.setString(3, content);
	
	result = pstat.executeUpdate();
	
	request.setAttribute("result", result);
	
	pstat.close();
	conn.close();
%>
<jsp:forward page="deleteResult.jsp"></jsp:forward>
</body>
</html>