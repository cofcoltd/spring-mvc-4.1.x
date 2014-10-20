<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'roles.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    


  </head>
  
  <body>
   		<h3>Grant Role to Admin</h3>
   		<form action="${pageContext.request.contextPath}/role/grant" method="post" >
   		
   			<c:forEach var="role" items="${roles }">
   				<input type="checkbox" name="roles" value="${role.id }">${role.name }
   			</c:forEach>
   			
   			<br>
   			<input type="submit">
   		</form>
  </body>
</html>
