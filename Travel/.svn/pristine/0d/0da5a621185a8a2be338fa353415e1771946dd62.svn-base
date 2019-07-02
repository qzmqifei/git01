<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Adventure - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface"
	rel="stylesheet">

<link rel="stylesheet" href="statics/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="statics/css/animate.css">

<link rel="stylesheet" href="statics/css/owl.carousel.min.css">
<link rel="stylesheet" href="statics/css/owl.theme.default.min.css">
<link rel="stylesheet" href="statics/css/magnific-popup.css">

<link rel="stylesheet" href="statics/css/aos.css">

<link rel="stylesheet" href="statics/css/ionicons.min.css">

<link rel="stylesheet" href="statics/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="statics/css/jquery.timepicker.css">


<link rel="stylesheet" href="statics/css/flaticon.css">
<link rel="stylesheet" href="statics/css/icomoon.css">
<link rel="stylesheet" href="statics/css/style.css">

</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Adventure</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.jsp"
						class="nav-link">首页</a></li>
					<li class="nav-item"><a href="places.jsp" class="nav-link">景点</a></li>
					<li class="nav-item"><a href="blog.jsp" class="nav-link">日志</a></li>
					<li class="nav-item"><a href="contact.jsp" class="nav-link">联系</a></li>
					<li style="color: #FFFF33"><a href="user.jsp"><img
							alt="140x140"
							src="userServlet?actionName=userHead&fileName=${user.head}"
							class="img-circle"
							style="top: 20px; right: 10px; border-radius: 25px; border: none;"
							width="50px" height="50px" /> </a>${user.uname}</li>
					<li><a href="login.jsp">
							<button type="button" class="btn btn-default btn-danger btn-sm"
								style="position: relative; top: 1%; left: 90%">退出</button>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<div class="hero-wrap js-fullheight"
		style="background-image: url('statics/images/bg_1.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 text-center ftco-animate"
					data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						<span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips
						&amp; Articles</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ftco-animate">
					<h2 class="mb-3">${btitle }</h2>
					<p>${btext }</p>
					

					 <a href="blogServlet?actionName=update&blogId=${blogId}"><button type="button" class="btn btn-warning">修改</button></a>
					

					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="tagcloud">
							<a href="#" class="tag-cloud-link">Life</a> <a href="#"
								class="tag-cloud-link">Sport</a> <a href="#"
								class="tag-cloud-link">Tech</a> <a href="#"
								class="tag-cloud-link">Travel</a>
						</div>
					</div>

					


					<div class="pt-5 mt-5">
						


						<ul id="clist" class="comment-list">



							<c:forEach items="${comment }" var="comment">


								<li class="comment">
									<div class="vcard bio">
										<img src="statics/images/person_1.jpg" alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>${comment.uname }</h3>
										<div class="meta">${comment.date }</div>
										<p>${comment.mcomment }</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>
								</li>
							</c:forEach>


						</ul>
						<!-- END comment-list -->

						<div class="comment-form-wrap pt-5">
							<h3 class="mb-5">留下你的评论</h3>
							<form action="#" class="p-5 bg-light">
								

								<div class="form-group">
									<label for="message">评论：</label>
									<textarea name="" id="message" cols="30" rows="10"
										class="form-control"></textarea>
								</div>
								<input type="hidden" id="uname" value="${user.uname }" />
								<input type="hidden" id="blogId" value="${blogId }" />
								<div class="form-group">
									<button type="button" id="btn_comment" class="btn btn-warning">提交</button>
								</div>

							</form>
						</div>
					</div>

				</div>
				<!-- .col-md-8 -->
				<div class="col-md-4 sidebar ftco-animate">
					<div class="sidebar-box">
						<form action="#" class="search-form">
							<div class="form-group">
								<span class="icon icon-search"></span> <input type="text"
									class="form-control" placeholder="Type a keyword and hit enter">
							</div>
						</form>
					</div>
					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3>Categories</h3>
							<li><a href="#">Tour <span>(12)</span></a></li>
							<li><a href="#">Hotel <span>(22)</span></a></li>
							<li><a href="#">Coffee <span>(37)</span></a></li>
							<li><a href="#">Drinks <span>(42)</span></a></li>
							<li><a href="#">Foods <span>(14)</span></a></li>
							<li><a href="#">Travel <span>(140)</span></a></li>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Recent Blog</h3>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(statics/images/image_1.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> July 12,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(statics/images/image_2.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> July 12,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(statics/images/image_3.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> July 12,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Tag Cloud</h3>
						<div class="tagcloud">
							<a href="#" class="tag-cloud-link">dish</a> <a href="#"
								class="tag-cloud-link">menu</a> <a href="#"
								class="tag-cloud-link">food</a> <a href="#"
								class="tag-cloud-link">sweet</a> <a href="#"
								class="tag-cloud-link">tasty</a> <a href="#"
								class="tag-cloud-link">delicious</a> <a href="#"
								class="tag-cloud-link">desserts</a> <a href="#"
								class="tag-cloud-link">drinks</a>
						</div>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Paragraph</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ducimus itaque, autem necessitatibus voluptate quod mollitia
							delectus aut, sunt placeat nam vero culpa sapiente consectetur
							similique, inventore eos fugit cupiditate numquam!</p>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- .section -->

	<section class="ftco-section-parallax">
		<div class="parallax-img d-flex align-items-center">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div
						class="col-md-7 text-center heading-section heading-section-white ftco-animate">
						<h2>Subcribe to our Newsletter</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in</p>
						<div class="row d-flex justify-content-center mt-5">
							<div class="col-md-8">
								<form action="#" class="subscribe-form">
									<div class="form-group d-flex">
										<input type="text" class="form-control"
											placeholder="Enter email address"> <input
											type="submit" value="Subscribe" class="submit px-3">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Adventure</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
						<h2 class="ftco-heading-2">Information</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">About Us</a></li>
							<li><a href="#" class="py-2 d-block">Online enquiry</a></li>
							<li><a href="#" class="py-2 d-block">Call Us</a></li>
							<li><a href="#" class="py-2 d-block">General enquiries</a></li>
							<li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
							<li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
							<li><a href="#" class="py-2 d-block">Refund policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Experience</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Beach</a></li>
							<li><a href="#" class="py-2 d-block">Adventure</a></li>
							<li><a href="#" class="py-2 d-block">Wildlife</a></li>
							<li><a href="#" class="py-2 d-block">Honeymoon</a></li>
							<li><a href="#" class="py-2 d-block">Nature</a></li>
							<li><a href="#" class="py-2 d-block">Party</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourdomain.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						Colorlib All rights reserved | More Templates <a
							href="http://www.cssmoban.com/" target="_blank"
							title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a
							href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿"
							target="_blank">ç½é¡µæ¨¡æ¿</a>
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
	<script src="statics/js/jquery-1.11.3.js" type=text/javascript></script>
	<script src="statics/js/utils.js" type=text/javascript></script>
	<script src="statics/js/config.js" type=text/javascript></script>
	<script src="statics/js/jquery.min.js"></script>
	<script src="statics/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="statics/js/popper.min.js"></script>
	<script src="statics/js/bootstrap.min.js"></script>
	<script src="statics/js/jquery.easing.1.3.js"></script>
	<script src="statics/js/jquery.waypoints.min.js"></script>
	<script src="statics/js/jquery.stellar.min.js"></script>
	<script src="statics/js/owl.carousel.min.js"></script>
	<script src="statics/js/jquery.magnific-popup.min.js"></script>
	<script src="statics/js/aos.js"></script>
	<script src="statics/js/jquery.animateNumber.min.js"></script>
	<script src="statics/js/bootstrap-datepicker.js"></script>
	<script src="statics/js/jquery.timepicker.min.js"></script>
	<script src="statics/js/scrollax.min.js"></script>

	<script src="statics/js/google-map.js"></script>
	<script src="statics/js/main.js"></script>

</body>
</html>