<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'xhr_level2_html5.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">


<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="<%=basePath%>html5-ajax/xhr_html5.js"></script>

</head>

<body>
	<form id="form">
		<fieldset>
			<legend>html5 - xhr level2 - file upload</legend>
			<input id="name" name="name" /><br> <input id="pwd" name="pwd" /><br>
			<input id="img" name="img" type="file" /><br> 
			<input id="up" type="button" value="send form data" onclick="assembleForm()"/>
		</fieldset>
	</form>
	<div id="progress"></div>
	
	<hr>
	
	
</body>
</html>
