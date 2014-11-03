<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addCustomer.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<body>

	<form method="post"  action="${pageContext.request.contextPath}/customer/add">
		<fieldset>
			<legend>add Customer</legend>
			<table>
				<tr>
					<td>name :</td>
					<td><input name="name" type="text" /></td>
				</tr>
				<tr>
					<td>salary :</td>
					<td><input name="salary" type="number" /></td>
				</tr>
				<tr>
					<td>birth :</td>
					<td><input name="birth"  type="date" /></td>
				</tr>
				<tr>
					<td>isMarry :</td>
					<td>
						<input name="ismarry" type="radio" value="1" />true
						<input name="ismarry" type="radio" value="0" />false						
					</td>
				</tr>
				<tr>
					<td>skills :</td>
					<td>
						<input name=skills type="checkbox" value="java8" />java8
						<input name="skills" type="checkbox" value="spring mvc" />spring mvc
						<input name="skills" type="checkbox" value="python" />python
						<input name="skills" type="checkbox" value="oracle 12c" />oracle 12c
						<input name="skills" type="checkbox" value="erland" />erland
					</td>
				</tr>
				<tr>
					<td>address :</td>
					<td>
						<input name="address" type="text" /><br>
						<input name="ismarry" type="text" />					
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" /></td>
				</tr>

			</table>
		</fieldset>
	</form>
</body>
</html>
