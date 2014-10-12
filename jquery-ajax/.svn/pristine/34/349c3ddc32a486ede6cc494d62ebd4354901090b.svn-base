<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<script type="text/javascript" src="<%=basePath%>reverse/sse.js"></script>

  </head>
  
  <body>
  	
  	<button onclick="getSSEData()">receive server send event message</button>
  	<button onclick="cleardata()">clear html</button>
  	<button onclick="stopSSE()">cancel sse event</button>
  	
  	<div id="loading"></div>
  	<hr>
  	<div id="msg"></div>
  	
  </body>
</html>
