<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    


  </head>
  
  <body>
   		<form method="get" action="${pageContext.request.contextPath}/admin/login">
		<fieldset>
			<legend>Admin Login</legend>
			<table>
				<tr>
					<td>name :</td>
					<td><input name="name" /></td>
				</tr>
				<tr>
					<td>pwd :</td>
					<td><input name="pwd" /></td>
				</tr>
				
				<tr>
					<td></td>
					<td><input type="submit" value="login" /></td>
				</tr>
				
			</table>
		</fieldset>
	</form>
	
	<hr>
	

	
  </body>
</html>
