<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
  
  
  
  	<fieldset>
  		<legend>注册表单</legend>
  		<form action="regService.jsp" method="post" name="regForm">
  			用户名：<input type="text" name="uname"  value="" /><br/>
  			密&nbsp;&nbsp;码：<input type="password" name="upwd" value=""/><br/>
  			爱&nbsp;&nbsp;好：<input type="checkbox" name="like" value="war"/>War<br/>
  			<input type="checkbox" name="like" value="LoL"/>LoL<br/>
  			<input type="checkbox" name="like" value="战神"/>战神<br/>
  			<input type="checkbox" name="like" value="波斯王子"/>波斯王子<br/>
  			<input type="checkbox" name="like" value="刺客信条"/>刺客信条<br/>
  			<input type="submit" value="注册">
  		</form>

  	</fieldset>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   
  </body>
</html>
