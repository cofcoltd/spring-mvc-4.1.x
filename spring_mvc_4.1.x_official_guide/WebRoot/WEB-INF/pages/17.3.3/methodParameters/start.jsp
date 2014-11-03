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
  	
  		<h4>Binding request parameters to method parameters with @RequestParam</h4>
  		
  		<ul>
  			<br><li><a href="${pageContext.request.contextPath}/methodParams/process01?param=data..">/process01?param=data..</a></li>
  			<br><li><a href="${pageContext.request.contextPath}/methodParams/process01">/process01</a></li>
  			<br><li><a href="${pageContext.request.contextPath}/methodParams/process02?p1=k,m,n&p2=x,y,z">/process02?p1=k,m,n&p2=x,y,z</a></li>
  		</ul>
   	
  </body>
</html>
