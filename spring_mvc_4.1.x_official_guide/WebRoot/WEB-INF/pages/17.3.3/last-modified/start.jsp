<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'start.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
   	<h4>Support for the 'Last-Modified' Response Header To Facilitate Content Caching</h4>
   	
   	<ul>
   		<li><a href="${pageContext.request.contextPath}/last/checkServer">checkServer</a></li>
   	</ul>
   	<hr>
   	${data}
   	
  </body>
</html>
