<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'webScoket.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.1.js"></script>
    
    <script>
		var webSocket;
		var content;
		
    	$(function(){
			
				$('#btn_init').click(function(){
					
					webSocket = new WebSocket('ws://localhost:8080/jquery-ajax/websocket');
					
					webSocket.onopen = function(event){
						 $('#content').append(event.data)
					}
					webSocket.onmessage = function(event) {
						 $('#content').append(event.data)
					}
					webSocket.onerror = function(event) {
						 $('#content').append(event.data)
					}
					webSocket.onclose  = function(event) {
						 $('#content').append(event.data)
					}
				});
				
							
				$('#btn_send').click(function(){
					webSocket.send('Client socket send message ....  ');
				});
		})
    </script>

  </head>
  
  <body>
  		
        <button id="btn_init">init WebScoket</button>	
  		
    	<button id="btn_send">send</button>
        
        <hr>
        
        <div id="content"></div>
  </body>
</html>
