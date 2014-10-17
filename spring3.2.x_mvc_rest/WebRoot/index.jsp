<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
    	<h3>Rest : AppointmentBooks</h3>
    	<ul>
    		<li><a href="${pageContext.request.contextPath }/appointmentBook/add">add appointmentBook</a></li>
    		<li><a href="${pageContext.request.contextPath }/appointmentBook/appointmentBooks">Find all appointmentBooks</a></li>
    	</ul>
  </body>
</html>
