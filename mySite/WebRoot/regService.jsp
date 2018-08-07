<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regService.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	注册信息
    	<% request.setCharacterEncoding("utf-8"); //设置字符集%><br/>
    	用户名：<%=request.getParameter("uname") %><br/>
    	密&nbsp;码：<%=request.getParameter("upwd") %><br/>
    	爱&nbsp;好:
    	<%	//访问数据库  
    		//存好了
    		//转
    		response.sendRedirect("MyJsp.jsp");
    	
    	 %>
    	
    	<%String[] likes=request.getParameterValues("like"); %>
    	<% for(String like:likes){%>
    	
    		<h4><%=like %></h4>
    	
    	<%} %>
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
  </body>
</html>
