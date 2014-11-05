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
  	${msg}
    <ul>
		<br><li><a href="${pageContext.request.contextPath}/methodArgumentType/reqAndresp">processRequestOrResponse</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/methodArgumentType/io">InputStream and OutputStream</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/methodArgumentType/io2">Reader and Writer</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/methodArgumentType/webRequest">WebRequest and NativeWebRequest</a></li>
    	<br><li><a href="${pageContext.request.contextPath}/methodArgumentType/session">HttpSession </a></li>		
    </ul>
    
    <hr>
    ${emp.name} / ${emp.age }
    <form action="${pageContext.request.contextPath}/methodArgumentType/emp/add" method="post">
    	name : <input name="name"><br>
    	age : <input name="age"><br>
    	<input type="submit" />
    </form>
    
  </body>
</html>
