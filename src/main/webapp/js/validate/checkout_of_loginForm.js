$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
    var loginUser={
         "username":"",
         "password":""
    }
    
  $("#login-form").validate({
   submitHandler:function(form){
        loginUser.username=$("#username").val();
        loginUser.password=$("#password").val();  
			$.ajax({
							type : "get", 
							url : "login.do", //这就是使用的servlet的url
			     			data :{user:JSON.stringify(loginUser)},
							dataType : "text",
							success : function(data) {
								if(data=="1"){
								window.location.href="index.jsp";	
								}else{
									alert("账号或密码错误");
								}
							},
							error : function(data) {
								alert("服务器故障");
							}
						});
		debug:true;	// 阻止表单自动提交事件
     },
    rules: {
      username: {
        required: true,
        number:true,
        minlength:5
      },
      password: {
        required: true,
        minlength:5
      }
    },
    messages: {
      username: {
        required: "请输入用户名",
        number: "请输入数字",
        minlength: "用户名长度不能小于6"
      },
      password: {
        required: "请输入密码",
        minlength: "密码长度不能小于 5 "
      }
     }
    })
});