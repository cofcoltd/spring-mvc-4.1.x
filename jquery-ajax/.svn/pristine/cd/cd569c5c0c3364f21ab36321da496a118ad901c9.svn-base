<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jQuery ajax 综合案例 - JQ_03 </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	   
<style>
.content { 
	border-radius:8px; 
	background-color:#F9C; 
	margin-left:300px ; 
	font-family:"微软雅黑" ; font-style:oblique ; font-size:16px;
}

.send_btn { 
	border:none; border-radius:10px;
	background:none ;
	background-color:#09C;
	width:80px ; height:20px;
}

._btn { 
	border:none; border-radius:10px;
	background:none ;
	background-color:#CF0;
	width:80px ; height:20px;
	font-family:"微软雅黑" ;
}

#main {
	height: auto; width:800px; 
	position:relative; left:300px; top:5px;
	border:#069; border-radius:20px; border-width: 2px;  padding-bottom:10px;
	background-color:#CCFFFF ;
}
	
#main p{ font-family:"微软雅黑"; font-size:16px ; color:#666 }

.publish {
	border-radius:5px ; background-color:#69F ; padding:20px; margin:20px;
	white-space:normal;  /*pre : 　用等宽字体显示预先格式化的文本。*/
	word-break:normal; /* 非亚洲文本 , 不强行切除 */
	overflow:auto; 
	-webkit-transition: background-color 1s ease-in-out 0s;
	transition: background-color 1s ease-in-out 0s;
}
.publish:hover {
	background-color: #AC90C0;
}
.publish span,div{
	font-family:"微软雅黑"; font-size:16px ; color:#666
}

</style>
<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.1.js"></script>
<script>

/****
jquery中各个事件执行顺序如下：
1.ajaxStart(全局事件)
2.beforeSend
3.ajaxSend(全局事件)
4.success
5.ajaxSuccess(全局事件)
6.error
7.ajaxError (全局事件)
8.complete
9.ajaxComplete(全局事件)
10.ajaxStop(全局事件)
*****/

$(function(){


	$.fx.interval = 1;
	//进入页面刷新 , 并加载数据......

	/**
	$.ajaxSetup({
		type : 'post',
		url : '...',
		data : $('form').serialize()
	});
	*/

	$.ajax({
		type:'POST',
		url : '/jquery-ajax/servlet/JQ_MessageServlet' ,
		dataType: 'json',
		data: {
			method: "getMsgJson"
		} , 
		success:  function(data , status , xhr ){
			$.each(data , function(index , value){   //value -- json
				var publish= $('<div class="publish" ><div>'); //发布层
				var span_img = $('<span><img src='+value.img+'></span>'); //图层
				var span_content = $('<span>'+value.content+'</span>') //内容层
			
	
				var div_time = $('<div align="right">'+value.time+'</div>');
	
	
				var div_btn = $('<div align="right"></div>');
				var btn_quote = $('<button class="_btn">quote</button>');
				btn_quote.click(function(){
					var quote_value = $(this).parent('div').prev('div').prev('span').html();
					$('#content').val(quote_value);
				});
	
				var btn_remove = $('<button class="_btn">remove</button>');
				btn_remove.click(function(){
					$(this).parent('div').parent('div').remove();
				});
	
				div_btn.append(btn_quote).append(btn_remove);
	
				publish.append(span_img).append(span_content).append(div_time).append(div_btn);
		
				$('#result').append(publish);

			});
		}, 
		error : function(xhr , textStatus , err) {
			alert("show msg : "+xhr.status+" : "+xhr.readyState+" : "+textStatus);
		}
		
	});
		
		
		
		
		
		
		
		
		
		
		
		
		
	/*  发送按钮  点击后的   异步交互 ...........*/

	$('.send_btn').click(function(){

	/*   //获取所有 <form> 中的<img> 标签
	$('form:first img').each(function(index, element) {
        alert(element)
    });*/
	//获取选中的头像
	var img = $('input:radio:checked').val();
	var content = $('#content');
	var now = new Date();	
	var time = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+now.getDate()+" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();
	
	if(img==null) {
		alert("请选择头像"); return;
	}
	if(content.val()==""){
		alert("请输入内容"); return;
	}
	
	
	$.ajax({
		type : 'post', 
		url : '/jquery-ajax/servlet/JQ_MessageServlet' ,
		dataType: "html" ,
		beforeSend: function(){
			//alert('我要发送数据了....');
		},
		data : { 
			method : 'saveMessage',
			img : $('input:radio:checked').val() , 
			content : content.val() , 
			time : time
		} , 
		success: function( data , status , xhr ){
			var publish= $('<div class="publish" ><div>'); //发布层
			var span_img = $('<span><img src='+img+'></span>'); //图层
			var span_content = $('<span>'+content.val()+'</span>') //内容层
			
	
			var div_time = $('<div align="right">'+time+'</div>');
	
	
			var div_btn = $('<div align="right"></div>');
			var btn_quote = $('<button class="_btn">quote</button>');
			btn_quote.click(function(){
				var quote_value = $(this).parent('div').prev('div').prev('span').html();
				$('#content').val(quote_value);
			});
	
			var btn_remove = $('<button class="_btn">remove</button>');
			btn_remove.click(function(){
				
				$(this).parent('div').parent('div').remove();
			});
	
			div_btn.append(btn_quote).append(btn_remove);
	
			
			publish.hide();
			publish.append(span_img).append(span_content).append(div_time).append(div_btn);
			$('#result div:eq(0)').before(publish);
			var h = publish.outerHeight();
			
			publish.height(0);
			publish.show('1000');
			publish.animate({
				'height' : h
			}, 1000);
				


	
		},
		complete  : function( xhr , textStatus) {
			$('#loading').html('');
		} , 
		error: function(xhr , textStatus , err){
			alert("有错误出现 : "+xhr.status+" : "+xhr.readyState+" : "+textStatus);
		} ,
		beforeSend : function( xhr , status , xhr ) {
			$('#loading').html('<span>loading</span>');
		}
		
	});
	});

})
</script>
  </head>
  
  <body style=" background-color:#FC9">
  
	<!--发帖区域-->
    <form name="frm" style="height:auto">
    	<div>
         	<label style="margin-left:300px">
            	<input name="photo" type="radio" value="ajax/img/1.png"/>
            	<img src="ajax/img/1.png" />    
            </label>
            <label>
            	<input name="photo" type="radio" value="ajax/img/2.png"/>
            	<img src="ajax/img/2.png" />    
            </label>
            <label>
            	<input name="photo" type="radio" value="ajax/img/3.png"/>
            	<img src="ajax/img/3.png" />    
            </label>
            <label>
            	<input name="photo" type="radio" value="ajax/img/4.png"/>
            	<img src="ajax/img/4.png" />    
            </label>
            <label>
            	<input name="photo" type="radio" value="ajax/img/5.png"/>
            	<img src="ajax/img/5.png" />    
            </label>
            <br>
        	<textarea id="content"  rows="4" cols="50"   class="content"></textarea>
           
        	<input type="button" class="send_btn" value="Send"/>
        </div>
    </form>
    <div id="loading"></div>
	<div id="main">
    	<p align="center">Oracle Microblog</p>
        <div id="result">
        	
            
        </div>
    </div>
</body>
</html>



