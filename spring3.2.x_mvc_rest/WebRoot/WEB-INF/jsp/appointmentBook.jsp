<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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

<title>My JSP 'addAppointmentBook.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">


</head>

<body>

<br><br><br>



	<sf:form method="post" modelAttribute="appointmentBook" 
		action="${pageContext.request.contextPath}/appointmentBook/${bookname}/update">
		<fieldset>
			<legend>update your appointmentBook</legend>
			<table>
				<tr>
					<td>name :</td>
					<td><sf:input path="name" /></td>
				</tr>
				<tr>
					<td>time :</td>
					<td><sf:input path="time" /></td>
				</tr>
				<tr>
					<td>content :</td>
					<td><sf:input path="content" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="update" /></td>
				</tr>
			</table>
		</fieldset>
	</sf:form>

	<hr>
	<br>
	<br>

	<c:forEach var="name" items="${pageContext.request.attributeNames }">
		<p>${name}:</p>
	</c:forEach>

</body>
</html>
