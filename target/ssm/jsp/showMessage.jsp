<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 暂时用网上的资源 -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> 
  
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/localhost.css">

<!-- Javascript -->
<!-- 文件版本问题，主要为了使on方法替代delegate，以后记得替换文件    -->
<script
	src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js">                       
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/showMessage.js"></script>

</head>
<body>
	<div class="main_body">
		<div class="col-md-4 col-md-offset-4 container" id="container"
			style="background-color: pink">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" id="title-1">带有 title 的面板标题</h3>
				</div>
				<div class="panel-body" id="comment-1">12222222222222啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊面板内容</div>
				<button type="button" class="btn btn-primary" data-toggle="collapse"
					data-target="#demo">简单的折叠</button>
				<div id="demo" class="collapse">Lorem ipsum dolor sit amet,
					consectetur adipisicing elit,</div>
				<div class="comment-list" id=""></div>
			</div>

			<div class="panel panel-default" >
				<div class="panel-heading">
					<h3 class="panel-title" id="title-2">带有 title 的面板标题</h3>
				</div>
				<div class="panel-body" id="comment-2">面板内容</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" id="title-3">带有 title 的面板标题</h3>
				</div>
				<div class="panel-body"  id="comment-3">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊面板内容</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" id="title-4">带有 title 的面板标题</h3>
				</div>
				<div class="panel-body" id="comment-4">面板内容</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" id= "title-5">带有 title 的面板标题</h3>
				</div>
				<div class="panel-body" id="comment-5">面板内容</div>
			</div>
			<div class="">
				<ul class="pagination" id="pageRoll">
				</ul>
			</div>
		</div>
	</div>
</body>
</html>