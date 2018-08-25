<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap </title>
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/localhost.css">
<link rel="stylesheet" href="../bootstrap/js/bootstrap.min.js">

<!-- Javascript -->
<script src="../js/jquery-1.11.1.min.js"></script>

<!-- validate输入认证 -->
<script src="../js/validate/jquery.js"></script>
<script src="../js/validate/jquery.validate.min.js"></script>
<script src="../js/validate/messages_zh.js"></script>
<!-- ä¸­ææç¤ºmessages -->
<script src="../js/validate/checkout_of_messageForm.js"></script>
<!--校验输入 -->
<script>
$(function(){
	
	$(".header").load("../jsp/index.jsp .header");
})
</script>
</head>
<body>

	<div class="header"></div>
	<div class="col-sm-6">
		<form role="form" id="message_form" name="messa_form" action="#">
			<div class="form-group ">
				<label for="name">问题</label> <input type="text" id="title"
					class="form-control" name="title"></input>
			</div>
			<div class="form-group ">
				<label for="name">问题描述</label>
				<textarea class="form-control " rows="5" id="content" name="content"></textarea>
				<button type="submit" class="btn btn-default">确认</button>
			</div>
		</form>
	</div>
</body>
</html>