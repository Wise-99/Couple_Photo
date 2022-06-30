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
	String passwd = request.getParameter("password");
	
	PreparedStatement pstat = null;
	ResultSet rs = null;
	
	String sql_id = "select * from CouplePhoto_users where id = ?";
	String sql_pw = "select * from CouplePhoto_users where id = ? AND password = ?";
	
	int idChk = 0;
	int pwChk = 0;
	
	pstat = conn.prepareStatement(sql_id);
	pstat.setString(1, id);
	rs = pstat.executeQuery();
	
	if(rs.next()){
		idChk = 1;
		
	}
	
	pstat = conn.prepareStatement(sql_pw);
	pstat.setString(1, id);
	pstat.setString(2, passwd);
	rs = pstat.executeQuery();
		
	if(rs.next()){
		pwChk = 1;
		String name = rs.getString("name");
		String dateOfDating = rs.getString("dateOfDating");
		
		request.setAttribute("name", name);
		request.setAttribute("dateOfDating", dateOfDating);
		
		session.setAttribute("name", name);
		session.setAttribute("dating", dateOfDating);
	}
	
	request.setAttribute("idChk", idChk);
	request.setAttribute("pwChk", pwChk);
	request.setAttribute("id", id);
	
	rs.close();
	pstat.close();
	conn.close();
%>

<jsp:forward page="loginResult.jsp"></jsp:forward>
</body>
</html>