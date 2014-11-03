<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
  </head>
  
  <body>
   		<h4>Consumable/Producible  Media Types</h4>
   		<div>Content-Type=application/x-www-form-urlencoded</div>
   		<form action="${pageContext.request.contextPath}/cpmt/process" enctype="application/x-www-form-urlencoded" method="post">
   			<input name="name"/>
   			<input name="pwd"/>
   			<input type="submit" />
   		</form>
   		
   		<hr>
   		<div>Content-Type=multipart/form-data</div>
   		<form action="${pageContext.request.contextPath}/cpmt/process" enctype="multipart/form-data"  method="post">
   			<input name="name"/>
   			<input name="pwd"/>
   			<input type="submit" />
   		</form>

   		<hr>
		<div>(consumes) Content-Type:application/json</div>  
		<form id="frm" action="${pageContext.request.contextPath}/cpmt/process" enctype="multipart/form-data"  method="post">
   			<input name="name"/>
   			<input name="pwd"/>
   			<input type="button" value="send json data" onclick="sendJson()"/>
   		</form> 	
		<script type="text/javascript">
		function sendJson() {
			var form = document.getElementById('frm');
			var json = JSON.stringify({'name' : form.name.value , 'pwd' : form.pwd.value});
			
			
			var xhr2 = new XMLHttpRequest();
			
			xhr2.open("post" , "${pageContext.request.contextPath}/cpmt/process" , true);
			xhr2.setRequestHeader('Content-Type', 'application/json;charset=utf-8');
			xhr2.onreadystatechange  = function() {
				if(xhr2.status == 200 && xhr2.readyState ==4) {
					alert(xhr2.responseText)
				}
			}
			xhr2.send(json);
		}
			
		</script>	
		
		
		
		
		<hr>
		<div>(produces) Accept : application/json</div>  
		<form id="frm2" action="${pageContext.request.contextPath}/cpmt/process" enctype="multipart/form-data"  method="post">
   			<input name="name"/>
   			<input name="pwd"/>
   			<input type="button" value="send json data2" onclick="sendJson2()"/>
   		</form> 	
		<script type="text/javascript">
		function sendJson2() {
			var form = document.getElementById('frm2');
			var json = JSON.stringify({'name' : form.name.value , 'pwd' : form.pwd.value});
			
			
			var xhr2 = new XMLHttpRequest();
			
			xhr2.open("post" , "${pageContext.request.contextPath}/cpmt/process" , true);
			xhr2.setRequestHeader('Accept', 'application/json;charset=utf-8');
			xhr2.onreadystatechange  = function() {
				if(xhr2.status == 200 && xhr2.readyState ==4) {
					var jackson = eval('('+xhr2.responseText+')');
					alert(jackson.name + " , "+jackson.pwd);
				}
			}
			xhr2.send(json);
		}
			
		</script>	
  </body>
</html>
