<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%
	//1、取
	request.setCharacterEncoding("utf-8");
	String uname=request.getParameter("uname");
	String upwd=request.getParameter("upwd");
	
	String studentno=null;
	
	//2、调
	//jdbc
	try{
		String driver="com.mysql.fabric.jdbc.FabricMySQLDriver";
		String url="jdbc:mysql://localhost:3306/myschool?ssl=true";
		String user="root";
		String pwd="1111";
		
		Class.forName(driver);
		
		Connection conn=DriverManager.getConnection(url,user,pwd);
		String sql="select studentno,studentname from student "
			+" where studentname=? and loginPwd=? ";
		PreparedStatement pstate=conn.prepareStatement(sql);
		pstate.setString(1, uname);
		pstate.setString(2, upwd);
		
		ResultSet rs=pstate.executeQuery();
		while(rs.next())
		{
			studentno=rs.getString("studentno");
		}
		
		rs.close();
		pstate.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	

	//3、转
	if(null!=studentno)
	{
		response.sendRedirect("MyJsp.jsp?stuNo="+studentno);
	}
	else
	{
		response.sendRedirect("login.html");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
%>