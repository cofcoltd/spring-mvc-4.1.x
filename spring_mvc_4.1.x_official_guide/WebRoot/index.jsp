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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<style type="text/css">
h4{
	background-color: orange;
}
</style>

</head>

<body>

	<div >
		<h4>17.3 Implementing Controllers</h4>
		<ul>
			<li><a href="${pageContext.request.contextPath}/central/17.3.2">17.3.2 Mapping Requests With @RequestMapping</a></li>
			<br>
			<li><a href="${pageContext.request.contextPath}/central/17.3.3">17.3.3 Defining @RequestMapping handler methods</a></li>
			
		</ul>
	</div>




	

</body>
</html>
