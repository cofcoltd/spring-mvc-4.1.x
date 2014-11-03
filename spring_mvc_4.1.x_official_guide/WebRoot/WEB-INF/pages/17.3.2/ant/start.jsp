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
    	<h4 style="color:#F44043">Ant Style</h4>
		<br><li><a href="${pageContext.request.contextPath}/ant/customers/select/01">@RequestMapping("/customers/**") || (/customers/select/) , (/customers/select/01)</a> <span style="color:#F44043">but note that will be mapping to "/customers/{id}" </span></li>
		
		<br><li><a href="${pageContext.request.contextPath}/ant/customer1">@RequestMapping("/customer?") || ("/customer1") , ("/customera")</a> <span style="color:#F44043">but don't match "customer" or "customerxx"</span></li>
		
		<br><li><a>@RequestMapping("/customer*") || ('/customerabc') or ('/customer') is ok</a> but not ('/customer/*')</li>
		
		<br><li><a href="${pageContext.request.contextPath}/ant/customer/2013/01/3186">mix : ('/customer/**/{id}')</a></li>
  </body>
</html>
