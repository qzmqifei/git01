<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="statics/bootstrap/css/bootstrap.css" rel="stylesheet">
<script src="statics/js/utils.js"></script>
<script src="statics/bootstrap/js/bootstrap.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="statics/js/jquery-3.4.1.js"></script>
<!-- 配置文件 -->
<script type="text/javascript" src="statics/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="statics/ueditor/ueditor.all.js"></script>
<div class="container">
	<div class="col-md-9">
		<div class="data_list">
			<div class="data_list_title">
				<h1 align="center">
					<span class="glyphicon glyphicon-cloud-upload"></span>&nbsp;发布日志
				</h1>
			</div>
			<div class="container-fluid">
				<div class="container-fluid">
					<div class="row" style="padding-top: 20px;">
						<!-- 如果类型集合存在，则显示添加页面  -->
						<div class="col-md-12">
							<form class="form-horizontal" method="post"
								action="blogServlet?actionName=add" id="blogForm">
								<div class="form-group">
									<label for="title" class="col-sm-2 control-label">日志标题:</label>
									<div class="col-sm-8">
										<input class="form-control" name="title" id="title"
											placeholder="日志标题">
									</div>
								</div>
								<div class="form-group">
									<label for="title" class="col-sm-2 control-label">日志内容:</label>
									<div class="col-sm-8">
										<textarea id="noteContent" name="content"></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-5 col-sm-4">
										<a href="blogServlet?actionName=blogList"><input
											type="button" class="btn btn-danger" value="不保存"></a>
										&nbsp;&nbsp;<input type="button" class="btn btn-success"
											onclick="checkForm()" value="保存"><br> <font
											id="error" color="red">${resultInfo.msg }</font>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	var ue;
	$(function(){
		ue = UE.getEditor("noteContent");
	});
	function checkForm(){
		 var title = $("#title").val();
		 var content = ue.getContent();
		 console.log(title);
		 console.log(content);
		 //非空判断
		 if(isEmpty(title)){
			 $("#error").html("日志标题不能为空!");
			 return;
		 }
		 if(isEmpty(content)){
			 $("#error").html("日志内容不能为空!");
			 return;
		 }
		//提交表单，发送请求
		$("#blogForm").submit();
	}
</script>