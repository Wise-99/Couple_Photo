<%@page import = "java.sql.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		
	
		String url = "jdbc:mysql://localhost:3306/jspDB?"+"useSSL=false&serverTimezone=UTC";
		String user = "root";
		String password = "yer9210kek^^";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
	%>
</body>
</html>