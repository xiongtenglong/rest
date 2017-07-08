var formObj = {
	checkForm:function(){
		var flag = true;
		flag = flag&&this.checkNull("username", "用户名不能为空");
		flag = flag&&this.checkNull("phone", "手机不能为空");
		flag = flag&&this.checkNull("password", "密码不能为空");
		flag = flag&&this.checkNull("password2", "确认密码不能为空");
		flag = flag&&this.checkPassword("password", "两次密码输入不同");
		flag = flag&&this.checkPhone("phone", "手机格式不对");
		return flag;
	},
	checkNull:function(name,msg){
		var value = $("#"+name).val();
		this.sendMsg(name,"");
		if(value==""){
			this.sendMsg(name, msg);
			return false;
		}
		return true;
	},
	sendMsg:function(name,msg){
		$("#"+name+"Id").html("<font color=red>"+msg+"</font>");
	},
	checkPassword:function(name,msg){
		var p1 = $("#"+name).val();
		var p2 = $("#"+name+"2").val();
		this.checkNull(name+"2", "确认密码不能为空");
		if($.trim(p2)!=""&&$.trim(p2)!=""){
			if(p1!=p2){
				this.sendMsg(name+"2", msg);
				return false;
			}
		}
		return true;
	},
	checkPhone:function(name,msg){
		var phone = $("#"+name).val();
		var reg = /^1[3|4|5|8]\d{9}$/;
		this.checkNull(name, "手机号不能为空");
		if($.trim(phone)!=""){
			if(!reg.test(phone)){
				this.sendMsg(name, msg);
				return false;
			}
		}
		return true;
	}
};
$().ready(function(){
	$("#username").blur(function(){
		var username = $("#username").val();
		if(!formObj.checkNull("username", "用户名不能为空")){
			return;
		}
		$("#usernameId").ajax({
			url : "http://sso.rest.com/user/check/"+username+"?r="+Math.random(),
			dataType : "json",
			success : function(data) {
                if (!data.data) {
                	$("#usernameId").html("<font color='green'>恭喜你,该用户名可以使用!</font>");
                }else {
                	$("#usernameId").html("<font color='red'>sorry,该用户名已被占用!</font>");
                }
            }
		});
	});
});




















