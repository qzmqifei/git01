<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					<li class="nav-item"><a href="index.jsp" class="nav-link">首页</a></li>
					<li class="nav-item active"><a href="placeServlet?actionName=place"
						class="nav-link">景点</a></li>
					<li class="nav-item active"><a
						href="blogServlet?actionName=blogList" class="nav-link">日志</a></li>
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
						<span class="mr-2"><a href="index.jsp">Home</a></span> <span>Places</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Destinations</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 sidebar order-md-last ftco-animate">
					<div class="sidebar-wrap ftco-animate">
						<h3 class="heading mb-4">Find City</h3>
						<form action="#">
							<div class="fields">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Destination, City">
								</div>
								<div class="form-group">
									<div class="select-wrap one-third">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="" id="" class="form-control"
											placeholder="Keyword search">
											<option value="">Select Location</option>
											<option value="">San Francisco USA</option>
											<option value="">Berlin Germany</option>
											<option value="">Lodon United Kingdom</option>
											<option value="">Paris Italy</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<input type="text" id="checkin_date"
										class="form-control checkin_date" placeholder="Date from">
								</div>
								<div class="form-group">
									<input type="text" id="checkout_date"
										class="form-control checkout_date" placeholder="Date to">
								</div>
								<div class="form-group">
									<div class="range-slider">
										<span> <input type="number" value="25000" min="0"
											max="120000" /> - <input type="number" value="50000" min="0"
											max="120000" />
										</span> <input value="1000" min="0" max="120000" step="500"
											type="range" /> <input value="50000" min="0" max="120000"
											step="500" type="range" />
										</svg>
									</div>
								</div>
								<div class="form-group">
									<input type="submit" value="Search"
										class="btn btn-primary py-3 px-5">
								</div>
							</div>
						</form>
					</div>
					<div class="sidebar-wrap ftco-animate">
						<h3 class="heading mb-4">Star Rating</h3>
						<form method="post" class="star-rating">
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">
									<p class="rate">
										<span><i class="icon-star"></i><i class="icon-star"></i><i
											class="icon-star"></i><i class="icon-star"></i><i
											class="icon-star"></i></span>
									</p>
								</label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">
									<p class="rate">
										<span><i class="icon-star"></i><i class="icon-star"></i><i
											class="icon-star"></i><i class="icon-star"></i><i
											class="icon-star-o"></i></span>
									</p>
								</label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">
									<p class="rate">
										<span><i class="icon-star"></i><i class="icon-star"></i><i
											class="icon-star"></i><i class="icon-star-o"></i><i
											class="icon-star-o"></i></span>
									</p>
								</label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">
									<p class="rate">
										<span><i class="icon-star"></i><i class="icon-star"></i><i
											class="icon-star-o"></i><i class="icon-star-o"></i><i
											class="icon-star-o"></i></span>
									</p>
								</label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">
									<p class="rate">
										<span><i class="icon-star"></i><i class="icon-star-o"></i><i
											class="icon-star-o"></i><i class="icon-star-o"></i><i
											class="icon-star-o"></i></span>
									</p>
								</label>
							</div>
						</form>
					</div>
				</div>
				<!-- END-->
				<div class="col-lg-9">
					<div class="row">
					
					<!-- 循环显示景点信息 开始 -->
					<c:forEach items="${list }" var="items">
						<div class="container">
							<div class="row clearfix">
								<div class="col-md-8 column">
									<h2>
										${items.pname }
									</h2>
									<p>
										${items.description }
									</p>
									<p>
										 <a class="btn" href="placeServlet?actionName=vieworcheck&placeId=${items.placeId }">View details »</a>
									</p>
								</div>
								<div class="col-md-4 column">
									<img alt="140x140" src="statics/images/destination-1.jpg" width="250px" height="140px"/>
								</div>	
							</div>
						</div>
					</c:forEach>
					<!-- 循环显示景点信息 结束 -->
					</div>
						
					<div class="row mt-5">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<li><a href="#">&lt;</a></li>
									<li class="active"><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&gt;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- .col-md-8 -->
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

<!-- 景点信息开始 -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
			<h2>
				Heading
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<img alt="140x140" src="v3/default3.jpg" />
		</div>
	</div>
</div>
<!-- 景点信息 结束 -->


	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" /></svg>
	</div>


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