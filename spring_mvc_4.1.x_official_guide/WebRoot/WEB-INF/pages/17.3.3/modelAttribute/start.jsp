<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
    	<h4>Using @ModelAttribute on a method</h4>
    	Accounts List : 
    	<table border="1" cellpadding="2" cellspacing="2" width="30%">
    		<tr>
    			<td>id</td>
    			<td>name</td>
    			<td>role</td>
    			<td> ...  </td>
    		</tr>
    		<c:forEach var="account" items="${accounts}">
    			<tr>
    			<td>${account.id}</td>
    			<td>${account.name}</td>
    			<td>${account.role}</td>
    			<td><a href="#">detail</a></td>
    		</tr>
    		</c:forEach>
    		
    	</table>
    	
    	<hr>
    	<h4>Using @ModelAttribute on a method argument</h4>
    	
    	<form action="${pageContext.request.contextPath}/modelAttr/account/add">
    		name : <input name="name"><br>
    		role : <input name="role"><br>
    		<input type="submit"><br>
    	</form>
  </body>
</html>
