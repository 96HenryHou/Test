<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/localhost.css">
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/showMessage.js"></script>

<!-- validate输入认证 -->
<script src="../js/validate/jquery.js"></script>
<script src="../js/validate/jquery.validate.min.js"></script>
<script src="../js/validate/messages_zh.js"></script>
<!-- ä¸­ææç¤ºmessages -->
<script src="../js/validate/checkout_of_messageForm.js"></script>
<!--校验输入 -->
</head>
<body>
	<div class="root">
		<div class="header">
			<div class="row">
				<div class="col-xs-8 col-xs-offset-1" >
					<nav class="navbar-default header-inner" role="navigation">
					<div class="container-fluid">
						<div class="navbar-header">
							<div class="navbar-brand logo">E师生</div>
						</div>
						<!--向左对齐-->
						<ul class="nav navbar-nav navbar-left">
							<li><a href="#" data-toggle="modal" data-target="#myModal">提问</a></li>
							<li><a href="fileUpload.jsp">资源</a></li>
							<li><a href="#">话题</a></li>
						</ul>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group ">
								<input type="text" class="form-control" id="search-text"
									placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">搜索</button>
						</form>
					</div>
					</nav>
				</div>
				<div class="col-xs-3">
					<!--向左对齐-->
					<nav class="navbar-default header-badges" role="navigation"
						style="background-color:white !important">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="index.jsp"> <span
								class="glyphicon glyphicon-home"></span></a></li>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span></a>
						</li>
						<li><a href="#"> <span
								class="glyphicon glyphicon-envelope"><%=session.getAttribute("loginUser")%></span></a></li>
					</ul>
					</nav>
				</div>
			</div>
		</div>

		
		<div class="App-main" style="margin-top:20px">
			<div class="App-container" >
				<div class="col-xs-7 col-xs-offset-1">	 		
					<div class="panel  panel-info">
						<div class="panel-heading">
						<label>用户:</label><span class="AuthorInfo-name" id="user-1">侯亦鸣</span>
						</div>
						<div class="panel-body" id="comment-1">
							<h4 class="card-title" id="card-title-1">Card title</h4>
							<p class="card-text" id="card-text-1">Some example text. Some example text.</p>
						</div>
						<div class="panel-footer">
							<button type="button" class="btn btn-default btn-sm">评论</button>
						</div>
					</div>

					<div class="panel  panel-info">
						<div class="panel-heading">
							<h3 class="panel-title" id="title-2">带有 title 的面板标题</h3>
						</div>
						<div class="panel-body" id="comment-2">
						<h3 class="panel-title" id="title-2">带有 title 的面板标题</h3>
						面板内容</div>
						<div class="panel-footer">面板脚注</div>
					</div>

					<div class="panel  panel-info">
						<div class="panel-heading">
							<h3 class="panel-title" id="title-3">带有 title 的面板标题</h3>
						</div>
						<div class="panel-body" id="comment-3">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊面板内容</div>
						<div class="panel-footer">面板脚注</div>
					</div>

					<div class="panel  panel-info">
						<div class="panel-heading">
							<h3 class="panel-title" id="title-4">带有 title 的面板标题</h3>
						</div>
						<div class="panel-body" id="comment-4">面板内容</div>
						<div class="panel-footer">面板脚注</div>
					</div>

					<div class="panel  panel-info">
						<div class="panel-heading">
							<h3 class="panel-title" id="title-5">带有 title 的面板标题</h3>
						</div>
						<div class="panel-body" id="comment-5">面板内容</div>
						<div class="panel-footer">面板脚注</div>
					</div>

					<div class="">
						<ul class="pagination" id="pageRoll">
						</ul>
					</div>
				</div>
			</div>
			
			<div class="col-xs-3 right-container" style="height:1000px; background-color: pink">
				<div class="Card">
					<ul class="GlobalSideBar-categoryList">
						<li class="GlobalSideBar-categoryItem">
						<a class="Button Button--plain" href="#" target="_blank" title="Live" type="button" style="color: rgb(255, 207, 0);">
						<span class="GlobalSideBar-categoryIcon">
						<svg class="Zi Zi--Live" fill="currentColor" viewBox="0 0 24 24" width="24" height="24"> 
						<path d="M13.693 10.354l1.634-7.542c.195-.901-.16-1.083-.798-.39l-9.18 9.97c-.638.693-.377 1.254.582 1.254h5.376l-1.634 7.542c-.195.901.16 1.083.798.39l9.18-9.97c.638-.693.377-1.254-.582-1.254h-5.376z">
						</path></svg></span>
						<span class="GlobalSideBar-categoryLabel">Live</span>
						</a>
						</li>

						<li class="GlobalSideBar-categoryItem">
						<a class="Button Button--plain" href="#" target="_blank" title="书店" type="button" style="color: rgb(67, 212, 128);">
						<span class="GlobalSideBar-categoryIcon">
						<svg class="Zi Zi--Ebook" fill="currentColor" viewBox="0 0 24 24"width="24" height="24">
						 <path d="M16 17.649V2.931a.921.921 0 0 0-.045-.283.943.943 0 0 0-1.182-.604L4.655 5.235A.932.932 0 0 0 4 6.122v14.947c0 .514.421.931.941.931H19.06c.52 0 .941-.417.941-.93V7.292a.936.936 0 0 0-.941-.931h-.773v12.834a.934.934 0 0 1-.83.924L6.464 21.416c-.02.002 2.94-.958 8.883-2.881a.932.932 0 0 0 .653-.886z"fill-rule="evenodd">
						 </path></svg></span>
						 <span class="GlobalSideBar-categoryLabel">书店</span>
						 </a>
					   </li>
						<li class="GlobalSideBar-categoryItem">
						<a class="Button Button--plain" href="#" target="_blank"
							title="圆桌" type="button" style="color: rgb(0, 132, 255);"><span
								class="GlobalSideBar-categoryIcon"><svg
										class="Zi Zi--Org" fill="currentColor" viewBox="0 0 24 24"
										width="24" height="24"> <path
										d="M10.786 8.41a8.938 8.938 0 0 0-3.968-2.528c-.305-1.719.814-3.337 2.442-3.741 1.221-.405 2.646.101 3.46 1.011 1.045 1.38.915 3.64.814 4.348-.102 1.315-1.221 3.034-1.323 3.135-.305-.809-.814-1.517-1.425-2.225zm-2.442 2.832c-1.526.202-3.052 1.01-4.171 2.123-1.12-.404-1.934-1.314-2.137-2.427-.316-2.427 1.526-3.64 2.849-3.842 1.628-.371 2.849.505 4.07 1.415 1.146 1.012 2.035 2.63 2.035 2.73-.916-.202-1.832-.1-2.646 0zm4.986.303c.509-.607.931-1.586 1.12-2.225.318-1.039.61-3.134.203-4.651 1.323-1.011 3.154-1.011 4.477.303 1.235 1.146 1.017 2.933.814 3.438-.663 1.581-1.933 2.326-3.256 2.832-1.221.404-3.256.303-3.358.303zm-2.645 1.011c-.51.607-.916 1.416-1.221 2.326-.407 1.314-.643 3.06-.102 4.55-1.323 1.011-3.256 1.011-4.477-.202-1.198-1.124-1.018-2.932-.814-3.438.599-1.605 1.933-2.326 3.256-2.831.916-.304 3.256-.405 3.358-.405zm9.259-1.82c1.017.404 1.933 1.315 2.035 2.427.233 2.57-1.526 3.64-2.849 3.842-1.526 0-2.85-.505-4.07-1.415-1.018-.81-2.035-2.528-2.035-2.63.916.203 1.831.102 2.645 0 1.628-.404 3.053-1.112 4.274-2.224zm-6.716 4.854c1.065 1.08 2.442 2.022 4.07 2.528.306 1.719-.814 3.235-2.442 3.741-1.22.405-2.645-.101-3.46-1.011-1.1-1.481-1.017-3.54-.915-4.247.102-1.315 1.221-3.034 1.323-3.135.305.708.721 1.44 1.424 2.124z"></path></svg></span><span
								class="GlobalSideBar-categoryLabel">圆桌</span></a></li>
						<li class="GlobalSideBar-categoryItem"><a
							class="Button Button--plain" href="#"
							target="_blank" title="专栏" type="button"
							style="color: rgb(15, 136, 235);"><span
								class="GlobalSideBar-categoryIcon"><svg
										class="Zi Zi--Edit" fill="currentColor" viewBox="0 0 24 24"
										width="24" height="24"> <path
										d="M4.076 16.966a4.19 4.19 0 0 1 1.05-1.76l8.568-8.569a.524.524 0 0 1 .741 0l2.928 2.927a.524.524 0 0 1 0 .74l-8.568 8.57c-.49.49-1.096.852-1.761 1.051l-3.528 1.058a.394.394 0 0 1-.49-.488l1.06-3.53zM20.558 4.83c.59.59.59 1.546 0 2.136l-1.693 1.692a.503.503 0 0 1-.712 0l-2.812-2.812a.504.504 0 0 1 0-.712l1.693-1.693a1.51 1.51 0 0 1 2.135 0l1.389 1.389z"></path></svg></span><span
								class="GlobalSideBar-categoryLabel">专栏</span></a></li>
						<li class="GlobalSideBar-categoryItem"><a
							class="Button Button--plain" href="#" target="_blank"
							title="付费咨询" type="button" style="color: rgb(84, 120, 240);"><span
								class="GlobalSideBar-categoryIcon"><svg
										class="Zi Zi--Infinity" fill="currentColor"
										viewBox="0 0 24 24" width="24" height="24"> <path
										d="M11.267 10.188h-2.69a.26.26 0 0 0-.261.26v.508c0 .149.117.26.262.26h2.896v1.54H8.578a.26.26 0 0 0-.262.259v.508c0 .15.117.26.262.26h2.896v2.31c0 .139.119.257.265.257h.522a.258.258 0 0 0 .265-.257v-2.31h2.896a.26.26 0 0 0 .262-.26v-.508a.257.257 0 0 0-.262-.26h-2.896v-1.54h2.896a.26.26 0 0 0 .262-.26v-.507a.257.257 0 0 0-.262-.26h-2.69l2.51-2.636a.26.26 0 0 0-.004-.366l-.423-.413a.253.253 0 0 0-.36.01L12 9.418 9.545 6.784a.248.248 0 0 0-.36-.011l-.423.413a.264.264 0 0 0-.004.366l2.509 2.636zM12 19.973c-1.101 0-2.16-.15-3.152-.43-.532.18-5.27 2.177-4.743 1.179.527-.998 1.58-2.746.806-3.25C3.11 15.936 2 13.822 2 11.486 2 6.8 6.477 3 12 3s10 3.8 10 8.487-4.477 8.486-10 8.486z"></path></svg></span><span
								class="GlobalSideBar-categoryLabel">咨询</span></a></li>
					</ul>
				</div>

				<div class="Card" style="margin-top:1px; height:100px">
					
				</div>
			</div>
		</div>
	</div>



	<!-- 模态框 -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- 模态框头部 -->
				<div class="modal-header">
					<h4 class="modal-title">请输入你的问题</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- 模态框主体 -->
				<div class="modal-body">
					<form role="form" id="message_form" name="message_form">
						<div class="form-group ">
							<label for="name">问题</label> <input type="text" id="title"
								class="form-control" name="title"></input>
						</div>
						<div class="form-group ">
							<label for="name">问题描述</label>
							<textarea class="form-control " rows="5" id="content"
								name="content"></textarea>
						</div>
					</form>
				</div>
				<!-- 模态框底部 -->
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary" form="message_form">确认</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>