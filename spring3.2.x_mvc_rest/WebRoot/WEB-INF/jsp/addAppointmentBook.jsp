<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

	<p><a href="${pageContext.request.contextPath}/index.jsp">back</a></p>

	<sf:errors path="name"></sf:errors>
	<sf:errors path="time"></sf:errors>
	<sf:errors path="content"></sf:errors>
	
	<sf:form  method="post" modelAttribute="appointmentBook">
		<fieldset>
			<legend>add AppointmentBook</legend>
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
					<td><input type="submit" value="add appointmentBook" /></td>
				</tr>
			</table>
		</fieldset>
	</sf:form>

</body>
</html>
