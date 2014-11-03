<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'start.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

</head>

<body>
	<h4>URI Template Patterns</h4>
	<li><a href="${pageContext.request.contextPath}/template/owners/39">/owners/{ownerId}</a></li>
	<br>
	<li>
		<a href="${pageContext.request.contextPath}/template/owners/42/pets/21">/owners/{ownerId}/pets/{petId}</a>
	</li>
	<br>
</body>
</html>
