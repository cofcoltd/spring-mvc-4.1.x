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
  
  	<h4>Path Pattern Matching By Suffix</h4>
  	
  	<ul>
  		<br><li><a href="${pageContext.request.contextPath}/suffix/process/tomas.pdf">*.pdf</a></li>
  		
  		<br><li><a href="${pageContext.request.contextPath}/suffix/process/person/321.pdf">/person/{personId}.pdf</a></li>
  	</ul>

  </body>
</html>
