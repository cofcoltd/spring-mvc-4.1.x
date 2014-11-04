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
  	<h4>17.3.3 Defining @RequestMapping handler methods</h4>
    <ul>
    	<br><li><a href='${pageContext.request.contextPath}/methodArgumentType/'>Supported method argument types</a></li>
    	
  		<br><li><a href='${pageContext.request.contextPath}/methodParams/'>Binding request parameters to method parameters with @RequestParam</a></li>
  		
  		<br><li><a href='${pageContext.request.contextPath}/responseBody/'>Mapping the response body with the @ResponseBody annotation</a></li>
  		
  		
  		<br><li><a href='${pageContext.request.contextPath}/modelAttr/'>Using @ModelAttribute on a method (argument)</a></li>
  		
  		<br><li><a href='${pageContext.request.contextPath}/sessionAttr/'>Using @SessionAttributes to store model attributes in the HTTP session between requests</a></li>
  		
  		<br><li><a href='${pageContext.request.contextPath}/cookieValue/'>Mapping cookie values with the @CookieValue annotation</a></li>
  		
  		<br><li><a href='${pageContext.request.contextPath}/headerAttr/'>Mapping request header attributes with the @RequestHeader annotation</a></li>
  		
    </ul>
  </body>
</html>
