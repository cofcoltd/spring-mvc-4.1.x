<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'JQ_02.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.1.js"></script>
    
    <script>
    	$(function(){
			$('#btn_json').click(function(){
				
				$.getJSON('/jquery-ajax/servlet/JQ_JsonServlet' ,
					{method : 'getExcludePropertyJson'} , 
					function( json , status , xhr ){
						$.each( json , function(i , data ) {
							var data =
							 " empno : "+json[i].empno +
							 " dept : "+json[i].dept+
							 " ename : "+json[i].ename+
							 " job : "+json[i].job+
							 " mgr : "+json[i].mgr+
							 " hiredate : "+new Date( json[i].hiredate.year , json[i].hiredate.month  , json[i].hiredate.day)+
							 " sal : "+json[i].sal+
							 " comm : "+json[i].comm;
							$('#getExcludePropertyJson').append($('<div>'+data+'</div>'));
							//$.parseJSON("");
						});
					});
			});
			
			
			$('#btn_nesting_json').click(function(){
				
				
			})
			
		});
    </script>


  </head>
  
  <body>
  		<button id="btn_json">获取 JSON </button>
  		
  		<button id="btn_nesting_json">获取 嵌套 JSON </button>
  		
   		<div id="getExcludePropertyJson"></div>
  </body>
</html>
