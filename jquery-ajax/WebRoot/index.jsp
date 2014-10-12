<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
    	<a href="<%=basePath%>loading/load.html">Loading Resource</a><br><br>
    	<a href="<%=basePath%>http/post_and_get.html">Post And Get</a><br><br>
    	<a href="<%=basePath%>json/get_json.jsp">Get JSON</a><br><br>
    	<a href="<%=basePath%>script/getlater_script.html">GET Script</a><br><br>
    	
  
    	<a href="<%=basePath%>ajax/ajax.jsp">Full Ajax </a><br><br>
    
    	
    	<hr>
    	<p>XMLHttpRequest level 2 </p>
    	<a href="<%=basePath%>form/form.jsp">Advance Form</a><br>
    	<a href="<%=basePath%>html5-ajax/xhr_level2_html5.jsp">HTML5 Level2</a><br>
    	<a href="<%=basePath%>html5-ajax/xhr_level2_jquery.jsp">HTML5 Level2 / jQuery</a><br>
    	<a href="<%=basePath%>html5-ajax/xhr_level2_blob.jsp">Get Blob</a><br>
    	<a href="<%=basePath%>html5-ajax/xhr_level2_preview.jsp">Preview image before send</a><br><br>
    	
    	<hr>
		<a href="<%=basePath%>reverse/sse.jsp">Reverse Ajax by SSE</a><br><br>
		<a href="<%=basePath%>reverse/webSocket.jsp">Web Socket</a><br><br>
    	
    	<hr>
    	<a href="<%=basePath%>async/asyncProcess.jsp">Async Process</a><br><br>
    	<a href="<%=basePath%>async/asyncProcessByWork.jsp">Async Process By Worker</a><br><br>
    	
    	<hr>
    	<p>Storage --  Local / Session</p>
    	<a href="<%=basePath%>storage/localStorage1.html">localStorage - 1</a><br>
    	<a href="<%=basePath%>storage/localStorage2.html">localStorage - 2</a><br><br>
    	
  </body>
</html>
