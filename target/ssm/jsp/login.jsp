<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Login Form Template</title>
<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/form-elements.css">
<link rel="stylesheet" href="../css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../ico/apple-touch-icon-57-precomposed.png">

<!-- Javascript -->
<script src="../js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.backstretch.min.js"></script>
<!-- Jquery背景插件  -->
<script src="../js/login-scripts.js"></script>
<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
<!-- validate插件 -->
<script src="../js/validate/jquery.js"></script>
<script src="../js/validate/jquery.validate.min.js"></script>
<script src="../js/validate/messages_zh.js"></script>
<!-- 中文提示messages -->
<script src="../js/validate/checkout_of_loginForm.js"></script>
<!-- 对于账号密码进行校验 -->
</head>
<body>
	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>E师生</strong> Login Form
						</h1>
						<div class="description">
							<p>design by StrongWind (猎风工作室)</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>登录菜单</h3>
								<p>Enter your username and password to log on:</p>
							</div>
							<div class="form-top-right">
								<i class="fa fa-key"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form role="form" action="" method="post" class="login-form"
								id="login-form">
								<div class="form-group">
									<label class="sr-only" for="username">Username</label> <input
										type="text" name="username" number="请输入准确数字"
										placeholder="Username..." class="form-username form-control"
										id="username">
								</div>
								<div class="form-group">
									<label class="sr-only" for="password">Password</label> <input
										type="password" name="password" placeholder="Password..."
										class="form-password form-control" id="password">
								</div>
								<button type="submit" class="btn" id="confirm">Sign in!</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
