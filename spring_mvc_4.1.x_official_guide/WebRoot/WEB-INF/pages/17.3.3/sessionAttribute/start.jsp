<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  		<h4>Using @SessionAttributes to store model attributes in the HTTP session between requests</h4>
  		
  		<table bgcolor="#C0FFD0" width="40%">
  			<tr>
  				<td>id</td>
  				<td>name</td>
  				<td>...</td>
  			</tr>
  			<c:forEach var="pet" items="${datas}">
  			<tr>
  				<td>${pet.id}</td>
  				<td>${pet.name}</td>
  				<td><a href="${pageContext.request.contextPath}/sessionAttr/pet/add/${pet.id}">add to cart</a></td>
  			</tr>
  			</c:forEach>
  		</table>
  		
  		<hr>
  		<a href="${pageContext.request.contextPath}/sessionAttr/pet/empty">Clear BuyCart</a>
  		<hr><br><br>
  		<table>
  		<tr>
  			<td>id</td>
  			<td>name</td>
  			<td>...</td>
  		</tr>
  		<c:forEach var="p" items="${pets}">
  			<tr>
  				<td>${p.id}</td>
  				<td>${p.name}</td>
  				<td><a href="${pageContext.request.contextPath}/sessionAttr/">remove </a></td>
  			</tr>
  		</c:forEach>
  		</table>
  		
  </body>
</html>
