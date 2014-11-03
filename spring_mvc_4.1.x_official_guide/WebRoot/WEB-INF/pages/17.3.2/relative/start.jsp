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
		<li><button onclick="send_myheader()">header values</button></li>
		<script>
			function send_myheader() {
				var xhr2 = new XMLHttpRequest();
				
				xhr2.open("post" , "${pageContext.request.contextPath}/relative/header" , true);
				xhr2.setRequestHeader('myHeader', 'myValue');
				xhr2.onreadystatechange  = function() {
					if(xhr2.status == 200 && xhr2.readyState ==4) {
						alert(xhr2.responseText)
					}
				}
				xhr2.send();
			}
		</script>
	</ul>
</body>
</html>
