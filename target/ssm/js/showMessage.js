$(function(){
	var message_length;
	var message_data = new Array();
	var page_number;
	var page_length = 5;
	var page_limit = 5;
	var currentPage = 1;
	var nextPage = 1;
	
	$.ajax({
		type : "get", 
		url : "showMessage.do", //这就是使用的servlet的url
		dataType : "json",
		success : function(data) {
			if(data!=null){
				message_length=data.length;
				message_data=data;
				create_page();
			}else{
				alert("账号或密码错误");
			}
		},
		error : function(data) {
			alert("服务器故障");
		}
	});
	function create_page(){
    	page_number = message_length/page_length;			
		if(page_number<page_limit){
			$("#pageRoll").append(" <li><a href='#' id='page-turnLeft' onclick='return false'>&laquo;</a></li>");
    		for(i=1;i<=page_number;i++){
	     $("#pageRoll").append("<li><a href='#' class='pageButton' onclick='return false'>"+i+"</a></li>");
	     }
		   $("#pageRoll").append("<li><a href='#' id='page-turnRight' onclick='return false'>&raquo;</a></li>");
	}else{
		
	}
	};
	//一般最新都是on，这里是因为版本问题使用老版的delegate
	  $("#pageRoll").delegate(".pageButton","click",function(){
		  currentPage = parseInt($(this).text());
			  star = (currentPage-1)*page_length;
			  for(j=1;j<=5;j++){
				  $("#title-"+j).text(message_data[star].title);
                   $("#comment-"+j).text(message_data[star].content);
                   star++;
			  }
  });
	  $("#pageRoll").delegate("#page-turnRight","click",function(){
		  nextPage = parseInt(currentPage)+1;
		    currentPage = nextPage;
			  star = (nextPage-1)*page_length;
			  for(j=1;j<=5;j++){
				  $("#title-"+j).text(message_data[star].title);
                   $("#comment-"+j).text(message_data[star].content);
                   star++;
			  }
  });
	  
	  $("#pageRoll").delegate("#page-turnLeft","click",function(){
		  nextPage = parseInt(currentPage)-1;
		    currentPage = nextPage;
			  star = (nextPage-1)*page_length;
			  for(j=1;j<=5;j++){
				  $("#title-"+j).text(message_data[star].title);
                   $("#comment-"+j).text(message_data[star].content);
                   star++;
			  }
  });
	  
	  
})