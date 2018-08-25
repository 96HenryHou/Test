$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
$("#a").click(function(){
	$("#aa").addClass("");
});
	var userMessage={
         "title":"",
         "content":""
    };
    $("#message_form").validate({
		submitHandler : function(form) {
			userMessage.title = $("#title").val();
			userMessage.content = $("#content").val();
			$.ajax({
				type : "post",
				url : "userMessage.do", //这就是使用的servlet的url
				data : {
					userMessage : JSON.stringify(userMessage)
					},
				dataType : "text",
				success : function(data) {
					alert("1");
					if(data=="1"){
						alert("提问成功");
					}else{
						alert("提问失败");
					}
				},
				error : function(data) {
					alert("服务器故障");
				}
			});
			debug: true; // 阻止表单自动提交事件
		},
		rules : {
			title : {
				required : true,
				minlength : 3,
				maxlength:50,
			},
			content : {
				required : true,
				minlength : 10,
				maxlength :120
			}
		},
		messages : {
			title : {
				required : "请输入标题",
				minlength : "标题长度不能小于3",
			    extension:"请在结尾输入问号"
			},
			content : {
				required : "请内容密码",
				minlength : "密码长度不能小于10 ",
				maxlength :"最长不能输入120"
			}
		}
	})
});