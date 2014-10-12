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

<title>My JSP 'blob.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<script type="text/javascript">

	function $$(id) {
		return document.getElementById(id);
	}
	
	function getBlobData() {
		var xhr = new XMLHttpRequest();
		xhr.open('post', '/jquery-ajax/img/mengdeo.jpg', true);
		xhr.responseType = 'blob';
		xhr.onreadystatechange = function() {
			//var blob = new Blob( [xhr.response] , {type: 'image/png'} );
			var blob = xhr.response;
			var img = $$('blob');
			img.src = window.URL.createObjectURL(blob);   
			window.URL.revokeObjectURL();
		}
		xhr.send();
	}
</script>

</head>

<body>
	<h4>xhr2 获取 blob 类型</h4>
	<button onclick='getBlobData()'>get blob data</button>
	<br>
	<img id="blob" alt="" src="" width="480px" height="210px" borer="0">
</body>
</html>
