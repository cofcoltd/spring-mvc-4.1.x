<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'start.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<script type="text/javascript">
	function getAccountById() {
		
		
		var xhr2 = new XMLHttpRequest();
		
		xhr2.open("post" , "${pageContext.request.contextPath}/responseBody/account/1" , true);
		//xhr2.setRequestHeader('Content-Type', 'application/json;charset=utf-8');
		
		xhr2.onreadystatechange  = function() {
			if(xhr2.status == 200 && xhr2.readyState ==4) {
				alert(xhr2.responseText)
			}
		}
		xhr2.send();
	}
	
	
	function getAccountById2() {
		
		
		var xhr2 = new XMLHttpRequest();
		
		xhr2.open("post" , "${pageContext.request.contextPath}/responseBody/account/2/update" , true);
		
		xhr2.onreadystatechange  = function() {
			if(xhr2.status == 200 && xhr2.readyState ==4) {
				alert(xhr2.responseXML)
			}
		}
		xhr2.send();
	}
		
		
	
	</script>

  </head>
  
  <body>
   		<h4>Mapping the response body with the @ResponseBody annotation</h4>
   		
   		<ul>
   			<li><button onclick="getAccountById()">get Account By Id / @ResponseBody -- json</button></li>
   			<li><button onclick="getAccountById2()">get Account By Id / @ResponseBody -- xml</button></li>
   		</ul>
   		
  </body>
</html>
