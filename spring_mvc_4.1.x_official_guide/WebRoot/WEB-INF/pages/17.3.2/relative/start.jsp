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

</head>

<body>
	<h4>Request Parameters and Header Values</h4>

	<ul>
		<li><a
			href="${pageContext.request.contextPath}/relative/owners/54/pets/31?find">narrow
				request matching through request parameter </a> || params=find</li>
		<br>
		<li><a
			href="${pageContext.request.contextPath}/relative/owners/54/pets/25?update&type=all">narrow
				request matching through request parameter </a>|| params = update ,
			'type=1' ] (BUG, if url no change )</li>
		<br>
		<li><a href="">header values</a></li>
	</ul>
</body>
</html>
