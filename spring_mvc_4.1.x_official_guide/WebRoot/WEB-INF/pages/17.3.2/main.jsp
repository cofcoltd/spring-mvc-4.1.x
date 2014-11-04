<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
    <h4>17.3.2 Mapping Requests With @RequestMapping</h4>
    <ul>
    	<br><li><a href="${pageContext.request.contextPath}/template/">URI Template Patterns</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/ant/">Path Patterns ( ANT )</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/suffix/">Path Pattern Matching By Suffix</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/matrix/">Matrix Variables</a></li>
    	
    	<br><li><a href="${pageContext.request.contextPath}/cpmt/">CPMT ( Consumable/Producible  Media Types)</a></li>
    	
    	<br><li><a href="${pageContext.request.contextPath}/relative/">Request Parameters and Header Values</a></li>
    	
    </ul>
  </body>
</html>
