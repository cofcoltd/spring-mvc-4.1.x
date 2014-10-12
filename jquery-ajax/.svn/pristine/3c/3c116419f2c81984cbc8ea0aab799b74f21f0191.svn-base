<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'form.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.1.js"></script>
    
    <script>
    	$(function(){
			$('#btn_serialize').click(function(){
				
				$.ajax({
					type : 'post',
					url : 'http://localhost:8080/jquery-ajax/servlet/JQ_FormServlet' ,
					data : $('#form').serialize(),
					dataType: 'html', 
					success : function(responseData , status , xhr ) {
						$('#result').html(responseData)
					}
				});
			});
			
			$('#btn_serializeArray').click(function(){
			
				var json = $('#form').serializeArray();
				
				$.ajax({
					type : 'post',
					url : 'http://localhost:8080/Components_Ajax-jQuery/servlet/JQ_FormServlet2' ,
					data :  { json : json },
					dataType: 'html', 
					success : function(responseData , status , xhr ) {
						
					}
				});
			});
			
			
			$('#btn_param').click(function(){
				var obj = { 'username' : $('input[name=username]').val() , 'pwd' : $('input[name=pwd]').val() };
				var params = $.param(obj);
				$('#result').html(params)
			});
			
		});
    </script>

  </head>
  
  <body>
   <h4>DBCP Config</h4>
  	<form id="form">
    	<input name="username" /><br>
        <input name="pwd" /><br>
        <input id="btn_serialize"  type="button" value="serialize form" />
        <input id="btn_serializeArray"  type="button" value="serializeArray" />
        <input id="btn_param"  type="button" value="param" />
    </form>
    <hr>
    <div id="result"></div>
    <hr>
    <div id="result2">
    
    </div>
  </body>
</html>
