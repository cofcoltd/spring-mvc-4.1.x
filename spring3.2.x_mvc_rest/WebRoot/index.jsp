<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
  		<c:set var="a" value="${admin}"></c:set>
  		<c:if test="${!empty a.name}">
  			<p>hi , ${a.name}</p>
  		</c:if>
  		
  		
  		<c:if test="${empty a.name}">
  			<p><a href="${pageContext.request.contextPath}/admin/">Login</a></p>
  		</c:if>
  		
  		<hr>
  
    	<h3>Rest : AppointmentBooks</h3>
    	<ul>
    		<li><a href="${pageContext.request.contextPath }/appointmentBook/add">add appointmentBook</a></li>
    		<li><a href="${pageContext.request.contextPath }/appointmentBook/appointmentBooks">Find all appointmentBooks</a></li>
    	</ul>
    	
    	<hr>
    	
    	<h3>Grant Role</h3>
    	<ul>
    		<li><a href="${pageContext.request.contextPath}/role/">Role View</a></li>
    	</ul>
    	
    	<h3>Customer</h3>
    	<ul>
    		<li><a href="${pageContext.request.contextPath}/customer/">add customer</a></li>
    	</ul>
    	
    	<hr>
    	<img src="${pageContext.request.contextPath}/resources/img/mvc.png"/>
    	
    	
    	
  </body>
</html>
