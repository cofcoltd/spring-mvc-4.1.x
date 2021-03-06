<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'asyncProcess.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<script type="text/javascript">
function $$(id) {
	return document.getElementById(id);
}

function asyncTransfer() {

	var xhr = new XMLHttpRequest();

	var formdata = new FormData($$('form'));

	xhr.open('post','/jquery-ajax/servlet/asyncServlet?method=processForm',true);

	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var data = xhr.responseText;
			$$('txt').innerHTML = data;
			
		}
	}
	xhr.upload.onprogress = function(event) {
		var progress = $$('progress');
		if (event.lengthComputable) {
		var percentComplete = Math.floor( event.loaded / event.total * 100) +"%";
			progress.innerHTML = percentComplete+" loaded : "+
				 Math.floor(event.loaded/1024/1024)+"MB  , total : "+
				 Math.floor(event.total/1024/1024) +" MB";
		}
	}


	xhr.send(formdata);

}

	</script>

</head>

<body>

<form id="form">
		<fieldset>
			<legend>Async File Process</legend>
			<input id="name" name="name" /><br> 
			<input id="img" name="img" type="file" /><br>	
			<input type="button" value="Async Transfer Data" onclick="asyncTransfer()"/>
		</fieldset>
	</form>
	TXT : <div id="txt"></div>
	PROGRESS : <div id="progress"></div>
	

</body>
</html>
