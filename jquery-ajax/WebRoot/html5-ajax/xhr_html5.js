function $$(id) {
	return document.getElementById(id);
}

function assembleForm() {

	var xhr = new XMLHttpRequest(); //LEVEL - 2
	//xhr.timeout = 3000;

	var name = $$('name').value;
	var pwd = $$('pwd').value;
	var img = $$('img'); //file
	
	//html - formdata
	var formdata = new FormData();   //map

	formdata.append("name", name);
	formdata.append("pwd", pwd);
	formdata.append("img", img.files[0]);

	xhr.open(
					'post',
					'/jquery-ajax/servlet/XHR2Servlet?method=getMutiFormData',
					true);

	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var data = xhr.responseText;
			
		}
	}

	xhr.ontimeout = function(event) {
		alert(event.data);
		xhr.abort();
	}
	/* load 事件：传输成功完成。

	* abort 事件：传输被用户取消。

	* error 事件：传输中出现错误。

	* loadstart 事件：传输开始。

	* loadEnd 事件：传输结束，但是不知道成功还是失败
	* */
	
	//xhr.onprogress = progressHandler; 
	xhr.upload.onprogress = progressHandler;
	xhr.upload.onerror = function(event) {
		
	}
	
	xhr.upload.onload = function(event) {
		
	}


	xhr.send(formdata);

}

function progressHandler(event) {
	var progress = $$('progress');
	
	if (event.lengthComputable) {
	var percentComplete = Math.floor( event.loaded / event.total * 100) +"%";
		progress.innerHTML = percentComplete+" loaded : "+ Math.floor(event.loaded/1024/1024)+"MB  , total : "+Math.floor( event.total/1024/1024) +" MB";
	}
}


