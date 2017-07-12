
var REST = {
		checkLogin : function(){
			var ticket = $.cookie("REST_TICKET");
			if(!ticket){
				return ;
			}
			//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
			$.ajax({
				url : "http://sso.rest.com/user/query/" + ticket,
				dataType : "jsonp",
				type : "GET",
				success : function(data){
					if(data.status == 200){
						var _data = JSON.parse(data.data);
						$("#registbar").html('<a class="scroll123"><font color=red>'+ _data.username+'</font>,欢迎来到休憩网</a>')
						$("#loginbar").html('<a href="/service/doLogout" class="scroll123">退出</a>');
					}
				}
			});
		}
	}
$(function(){
	REST.checkLogin();
	
});