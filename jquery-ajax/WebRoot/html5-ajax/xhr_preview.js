function preview1(file) {
	var img = new Image(), url = img.src = URL.createObjectURL(file);
	var $img = $(img);
	img.onload = function() {
		URL.revokeObjectURL(url)
		$('#preview').empty().append($img)
	}
}

function preview2(file) {
	var reader = new FileReader(); //HTML5
	reader.onload = function(e) { //读取完成时候调用的事件
		var $img = $('<img>').attr("src", e.target.result) //result --> 读取到的文件内容.
		$('#preview').empty().append($img)
	}
	reader.readAsDataURL(file);   
}

$(function() {
	$('#imgs').change(function(event) {
		var file = event.target.files[0];
		preview2(file)
	})
})