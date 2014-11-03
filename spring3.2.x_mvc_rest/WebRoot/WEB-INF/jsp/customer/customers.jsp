<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'customers.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
</head>

<body>
	<table border='1'>
		<tr>
			<td>name</td>
			<td>salary</td>
			<td>birth</td>
			<td>ismarry</td>
			<td>skills</td>
			<td>address</td>
		</tr>
		<c:forEach var="c" items="${customers}">
			<tr>
				<td>${c.name }</td>
				<td>${c.salary}</td>
				<td><fmt:formatDate value="${c.birth}" pattern="yyyy-MM-dd"/></td>
				<td>${c.ismarry}</td>
				<td>${c.skills}</td>
				<td>
					<c:forEach var="addr" items="${c.address}">
						${addr}
					</c:forEach>
				</td>
			</tr>
		</c:forEach>
		<table></table>
</body>
</html>
