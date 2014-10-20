<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>My JSP 'appointmentBooks.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">


</head>

<body>
<p><a href="${pageContext.request.contextPath}/index.jsp">back</a></p>
<br>
<hr>
	<table border="1" bgcolor="#fff0c9" align="center">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>time</td>
			<td>content</td>
			<td>....</td>
		</tr>

		<c:forEach var="book" items="${books}">
			<tr>
				<td>${book.value.id }</td>
				<td><a href="${pageContext.request.contextPath}/appointmentBook/${book.key}">${book.value.name }</a></td>
				<td>${book.value.time }</td>
				<td>${book.value.content }</td>
				<td><a href="${pageContext.request.contextPath}/appointmentBook/${book.key}/delete">remove this book</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
