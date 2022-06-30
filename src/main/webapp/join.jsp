<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("password2");
	String name = request.getParameter("name");
	String date = request.getParameter("date");
	
	PreparedStatement pstat = null;
	ResultSet rs = null;
	
	String sql1 = "select * from CouplePhoto_users where id = ?";
	String sql2 = "insert into CouplePhoto_users values(?,?,?,?)";
	
	int idChk = 0;
	int result = 0;
	
	pstat = conn.prepareStatement(sql1);
	pstat.setString(1, id);
	rs = pstat.executeQuery();
	
	if(rs.next()){
		idChk = 1;
	}else{
		pstat = conn.prepareStatement(sql2);
		pstat.setString(1, id);
		pstat.setString(2, passwd);
		pstat.setString(3, name);
		pstat.setString(4, date);
		
		result = pstat.executeUpdate();
	}
	request.setAttribute("result", result);
	request.setAttribute("idChk", idChk);
	
	rs.close();
	pstat.close();
	conn.close();
%>
<jsp:forward page="joinResult.jsp"></jsp:forward>
</body>
</html>