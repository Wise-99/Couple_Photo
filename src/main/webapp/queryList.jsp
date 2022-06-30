<%@ page import = "final_project.Post" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>
<%@page import = "java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "/connectDB.jsp" %>
	<%
		request.setCharacterEncoding("UTF-8");
	
		Object _name = session.getAttribute("name");
		Object _date = session.getAttribute("dating");
	    String name = (String)_name;	
	    String date = (String)_date;
	
		Date today = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		Date startDay = transFormat.parse(date);
		long toNow = today.getTime();
		long toStart = startDay.getTime();
		long passedTime = toNow - toStart + 86400000; //하루 = 86400000밀리초
		long passedDay = Math.round(passedTime/(1000*60*60*24));
		
		PreparedStatement pstat = null;
		ResultSet rs = null;
		Object id = session.getAttribute("id");
	    String session_id = (String)id;

		ArrayList<Post> list = new ArrayList<>();
		
		String sql = "select * from CouplePhoto_posts where id = ?";
		
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, session_id);
		rs = pstat.executeQuery(); /* 쿼리 실행 */
		
		while(rs.next()){
			Post post = new Post();
			post.setId(rs.getString(1));
			post.setDate(rs.getDate(2));
			post.setContent(rs.getString(3));
			if(rs.getString(4) != null){
				post.setImg1(rs.getString(4));
			}
			if(rs.getString(5) != null){
				post.setImg2(rs.getString(5));
			}
			if(rs.getString(6) != null){
				post.setImg3(rs.getString(6));
			}
			if(rs.getString(7) != null){
				post.setImg4(rs.getString(7));
			}
			if(rs.getString(8) != null){
				post.setImg5(rs.getString(8));
			}
			if(rs.getString(9) != null){
				post.setImg6(rs.getString(9));
			}
			if(rs.getString(10) != null){
				post.setImg7(rs.getString(10));
			}
			if(rs.getString(11) != null){
				post.setImg8(rs.getString(11));
			}
			if(rs.getString(12) != null){
				post.setImg9(rs.getString(12));
			}
			list.add(post);
		}
		
		request.setAttribute("list", list); /* 리스트를 request 영역에 저장 */
		request.setAttribute("loveDay", passedDay);
		request.setAttribute("name", name);
		
		rs.close();
		pstat.close();
		conn.close();
		
		RequestDispatcher rd = request.getRequestDispatcher("photoList.jsp");
		rd.forward(request, response);
	%>
</body>
</html>