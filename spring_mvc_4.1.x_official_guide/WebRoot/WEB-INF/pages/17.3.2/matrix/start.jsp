<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>

  		<h4>17.3.2 Mapping Requests With @RequestMapping</h4>
    	<ul>
    		
    		<br><li><a href=" ${pageContext.request.contextPath}/matrix/owners/42;q=11/pets/21;q=22">Matrix Variables : /matrix/owners/42;q=11/pets/21;q=22</a></li>
    		<br><li><a href=" ${pageContext.request.contextPath}/matrix/find/owners/42;q=11;r=12/pets/21;q=22;s=23">Matrix Variables : /owners/42;q=11;r=12/pets/21;q=22;s=23</a></li>
    		<br><li><a href=" ${pageContext.request.contextPath}/matrix/pet/compare;petIds=21,45,913">Matrix Variables : /pet/compare;petIds=21,45,913</a></li>
    	</ul>
  </body>
</html>
