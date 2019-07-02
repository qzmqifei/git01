/**
 * 用户登录
 * 	1、得到用户名和密码文本框的值（id选择器）
	2、判断值是否为空
		如果为空，显示错误提示信息
	3、如果不为空，提交表单（提交表单到userServlet）
 */	
function checkLogin() {	
	// 1、得到用户名和密码文本框的值（id选择器）
	var uname = $("#userName").val();
	var upwd = $("#userPwd").val();
	
	// 2、判断值是否为空
	if (isEmpty(uname) || isEmpty(upwd)) {
		// 如果为空，显示错误提示信息
		$("#msg").html("*用户名称&密码不能为空！");
		return;
	}
	
	// 3、如果不为空，提交表单（提交表单到userServlet）
	$("#loginForm").submit();
}
function register(){
	var uname=$("#uname").val();
	var pwd1=$("#pwd1").val();
	var pwd2=$("#pwd2").val();
	var phone=$("#phone").val();
	var email=$("#email").val();
	//邮箱注册策略
	var reg = new RegExp("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$"); 
	if(isEmpty(uname)){
		$("#msg1").html("*用户名不能为空");
		return;
	}
	if(isEmpty(pwd1)||isEmpty(pwd2)){
		$("#msg2").html("*密码不能为空");
		return;
	}
	$("#msg2").html("");
	if(uname==pwd1){
		$("#msg2").html("*用户名跟密码相同同");
		return;
	}
	$("#msg2").html("");
	if(pwd1!=pwd2){
		$("#msg3").html("*两次密码不一致");
		return;
	}
	$("#msg3").html("");
	if(!reg.test(email)){
		$("#msg4").html("*邮箱不符号规则");
		return;
	}
	$("#registerForm").submit();
}


$("#btn_comment").click(function(){
	var message = $("#message").val();
	var uname = $("#uname").val();
	var blogId = $("#blogId").val();
	
	$.ajax({
		type:"post",
		url:"userServlet",
		data:{
			"message":message,
			"uname":uname,
			"blogId":blogId,
			"actionName":"comment"
		},
		success:function(data){
			$("#clist").append("<li class=\"comment\"><div class=\"vcard bio\"><img src=\"statics/images/person_1.jpg\" alt=\"Image placeholder\"></div><div class=\"comment-body\"><h3>"+data.result.uname+"</h3><div class=\"meta\">"+data.result.date+"</div><p>"+data.result.mcomment+"</p><p><a href=\"#\" class=\"reply\">Reply</a></p></div></li>");
			$("#message").val(" ");
		}
		
	})
});



	
	