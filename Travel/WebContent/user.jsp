<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="statics/bootstrap/css/bootstrap.min.css">
<script src="statics/js/jquery-3.2.1.min.js"></script>
<script src="statics/js/jquery-1.11.3.js"></script>
<script src="statics/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type"
	content="text/html; charset=charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-image: url(statics/images/云层.jpg);"
	data-stellar-background-ratio="0.5">

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<a href="index.jsp">
					<button type="button" class="btn btn-success btn-sm"
						style="position: relative; top: 1%; left: 94%">返回主页</button>
				</a> <a href="login.jsp">
					<button type="button" class="btn btn-default btn-danger btn-sm"
						style="position: relative; top: 1%; left: 95%">退出</button>
				</a>
				<div class="row clearfix">
					<div class="col-md-2 column">
				
						<img id="head" alt="140x140"
							src="userServlet?actionName=userHead&fileName=${user.head}"
							class="img-circle"
							style="top: 20px; right: 50px; border-radius: 25px; border: none;"
							width="135px" height="135px" class="img-circle" onclick="openHeadMenu()" />
				<form id="imageform" action="userServlet"  method="post" enctype="multipart/form-data">
				<input type="hidden" name="actionName"  value="headFile">
        			<input   type="file" name="img" id="file"/>
       				 <input  type="submit" value="修改头像" class="btn btn-sm active btn-primary"  />
				</form>	
							
						<blockquote class="pull-right">
							<p align="center" style="color: #CC66CC" id="nick2">
								${user.nick }</p>
							<p align="center">
								<span style="font-size: 15px" id="mood2">${user.mood}</span>
						</blockquote>
					</div>
					<form action="userServlet" method="get" id="alter" onclick="close()">
						<div class="col-md-6 column">
							<div class="tabbable" id="tabs-103631">
								<ul class="nav nav-tabs">
									<li><a href="#panel-164449" data-toggle="tab">日志动态</a></li>
									<li class="active"><a href="#panel-452357"
										data-toggle="tab">个人资料</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane" id="panel-164449"
										style="font-size: 20px;">
										<p>暂无记录</p>
									</div>
									<div class="tab-pane active" id="panel-452357"
										style="font-size: 20px;">
										<p >
											昵称:&nbsp;&nbsp;&nbsp;<span style="font-size: 16px; color:"
												id="nick1" >${user.nick}</span>
										</p>
										<p>
											性别:&nbsp;&nbsp;&nbsp;<span style="font-size: 16px; color:"
												id="sex1">${user.sex}</span>
										</p>
										<p>
											心情:&nbsp;&nbsp;&nbsp;<span style="font-size: 16px; color:"
												id="mood1">${user.mood}</span>
										</p>
										<p>
											手机:&nbsp;&nbsp;&nbsp;<span style="font-size: 16px; color:"
												id="phone1">${user.phone}</span>
										</p>
										<p>
											邮箱:&nbsp;&nbsp;&nbsp;<span style="font-size: 16px; color:"
												id="email1">${user.email}</span>
										</p>
										<input type="button" class="btn btn-info btn-sm active"
											value="修改信息" id="alter" onclick="openModel()">
										
									</div>
								</div>
									
								
							
									
							</div>

						</div>
				</form>
				
				
					<div class="col-md-4 column">
						<div class="media">
							<a href="#" class="pull-left"><img src=""
								class="media-object" alt='' /></a>
							<div class="media-body">
								<h4 class="media-heading"></h4>
								<div class="media">
									<a href="#" class="pull-left"><img src=""
										class="media-object" alt='' /></a>
									<div class="media-body">
										<h4 class="media-heading"></h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="carousel slide" id="carousel-934913">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-934913"></li>
						<li data-slide-to="1" data-target="#carousel-934913"></li>
						<li data-slide-to="2" data-target="#carousel-934913"
							class="active"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img alt=""
								src="statics/images/4e07739aca695d90d6fed1871ec625a5.jpg"
								style="border-radius: 25px; border: none;" width="1200px"
								height="800px" class="img-circle" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
						<div class="item">
							<img alt=""
								src="statics/images/ade24a9fa9c8539403360be5b3482479.jpg"
								style="border-radius: 25px; border: none;" width="1200px"
								height="800px" class="img-circle" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
						<div class="item active">
							<img alt=""
								src="statics/images/c7f52d493ced7b4e754dd8be4cb02208.jpg"
								style="border-radius: 25px; border: none;" width="1200px"
								height="800px" class="img-circle" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-934913"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-934913"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
		</div>

	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="padding:6px 10px 6px 20px;
	background-color:#007DCF;
	border:0px;
	height:30px;
				">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">新增</h4>
				</div>
				<div class="modal-body" style="padding:30px 40px 30px 40px;
	background-color:#6699CC;
	border-left:1px solid #007DCF;
	border-right:1px solid #007DCF;
				">
					<div class="form-group" style="background-color:#6699CC;
	border:1px solid #007DCF">
						<label for="usermsg"></label> 
						<input type="hidden"
							name="uname" id="uname" value="${user.uname }" style="background-color:#6699CC;
	border:1px solid #007DCF">
						<p style="color:white">昵称</p>
						<input type="text" name="nick" class="form-control" id="nick"
							placeholder="请输入昵称" value=""style="color:"> 
							<p style="color:white">性别</p>
						<input type="text" name="sex"
							class="form-control" id="sex" placeholder="请输入性别" value="">
							<p style="color:white">心情</p>
						<input type="text" name="mood" class="form-control" id="mood"
							placeholder="请写下您此刻的心情" value=""> 
							<p style="color:white">手机</p>
						<input type="text" name="phone" class="form-control" id="phone" placeholder="请输入手机号"
							value=""> 
							<p style="color:white">邮箱</p>
						<input type="text" name="email"
							class="form-control" id="email" placeholder="请输入邮箱" value="">
						<span id="savemsg" style="font-size: 14px; color: red"></span>
					</div>
				</div>
				<div class="modal-footer" style="background-color:#6699CC;
	border:1px solid #007DCF;
	border-top:none;
	padding:0px 15px 30px 15px;
				">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span>关闭
					</button>
					<button type="submit" id="save" class="btn btn-primary"
						onclick="saveMsg()">
						<span class="glyphicon glyphicon-floppy-disk"></span>保存
					</button>
				</div>

			</div>
		</div>
	</div>
</body>

<script src="user/userMSgAlter.js" type="text/javascript"></script>
<script src="statics/js/utils.js" type="text/javascript"></script>
<script type="text/javascript">
 document.getElementById("imageform").style.display='none';
</script>

</html>