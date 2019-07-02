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
					<li class="nav-item active"><a href="index.jsp"
						class="nav-link">首页</a></li>
					<li class="nav-item"><a href="placeServlet?actionName=place" class="nav-link">景点</a></li>
					<li class="nav-item"><a href="blogServlet?actionName=blogList" class="nav-link">日志</a></li>
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
						<span class="mr-2"><a href="index.jsp">Home</a></span> <span>Hotel</span>
					</p>
					<h1 class="mb-3 bread"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Place</h1>
				</div>
			</div>
		</div>
	</div>

	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">

				<div class="col-lg-9">
					<div class="row">
						<div class="col-md-12 ftco-animate">
							<div class="single-slider owl-carousel">
								<div class="item">
									<div class="hotel-img"
										style="background-image: url(statics/images/hotel-2.jpg);"></div>
								</div>
								<div class="item">
									<div class="hotel-img"
										style="background-image: url(statics/images/hotel-3.jpg);"></div>
								</div>
								<div class="item">
									<div class="hotel-img"
										style="background-image: url(statics/images/hotel-4.jpg);"></div>
								</div>
							</div>
						</div>
						<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
							<span>Our Best hotels &amp; Rooms</span>
							<h2>Luxury Hotel in Paris</h2>
							<p class="rate mb-5">
								<span class="loc"><a href="#"><i class="icon-map"></i>
										${place.pubTime }</a></span> <span>
								</span>
							</p>
							<p>${place.placeTitle }</p>
							<div class="d-md-flex mt-5 mb-5">
								<ul>
									<li>${place.placeCon }</li>
									<li>${place.placeCon }</li>
									<li>${place.placeCon }</li>
									<li>${place.placeCon }</li>
								</ul>
								<ul class="ml-md-5">
									<li>${place.placeCon }</li>
									<li>${place.placeCon }</li>
									<li>${place.placeCon }</li>
									<li>${place.placeCon }</li>
								</ul>
							</div>
							<p>${place.placeCon }</p>
						</div>
						<c:if test="${empty collect }">
							<button id="btn1" class ="btn btn-default" onclick="collectplace(${place.placeId })">收藏</button>&nbsp;&nbsp;
							<span id="msg" style="font-size:12px color:green" >收藏一下吧！</span>
						</c:if>
						<c:if test="${!empty collect }"> 
							<button id="btn2" title="点击取消收藏" class ="btn btn-default" onclick="deletecollectplace(${place.placeId })">已收藏</button>
						</c:if>
						
					</div>
				</div>
				<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
					<h4 class="mb-4">other places</h4>
					<div class="row">
						<div class="col-md-4">
							<div class="destination">
								<a href="hotel-single.jsp" class="img img-2"
									style="background-image: url(statics/images/room-4.jpg);"></a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="hotel-single.jsp">Hotel, Italy</a>
											</h3>
											<p class="rate">
												<i class="icon-star"></i> <i class="icon-star"></i> <i
													class="icon-star"></i> <i class="icon-star"></i> <i
													class="icon-star-o"></i> <span>8 Rating</span>
											</p>
										</div>
										<div class="two">
											<span class="price per-price">$40<br>
											<small>/night</small></span>
										</div>
									</div>
									<p>Far far away, behind the word mountains, far from the
										countries</p>
									<hr>
									<p class="bottom-area d-flex">
										<span><i class="icon-map-o"></i> Miami, Fl</span> <span
											class="ml-auto"><a href="#">Book Now</a></span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="destination">
								<a href="hotel-single.jsp" class="img img-2"
									style="background-image: url(statics/images/room-5.jpg);"></a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="hotel-single.jsp">Hotel, Italy</a>
											</h3>
											<p class="rate">
												<i class="icon-star"></i> <i class="icon-star"></i> <i
													class="icon-star"></i> <i class="icon-star"></i> <i
													class="icon-star-o"></i> <span>8 Rating</span>
											</p>
										</div>
										<div class="two">
											<span class="price per-price">$40<br>
											<small>/night</small></span>
										</div>
									</div>
									<p>Far far away, behind the word mountains, far from the
										countries</p>
									<hr>
									<p class="bottom-area d-flex">
										<span><i class="icon-map-o"></i> Miami, Fl</span> <span
											class="ml-auto"><a href="#">Book Now</a></span>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="destination">
								<a href="hotel-single.jsp" class="img img-2"
									style="background-image: url(statics/images/room-6.jpg);"></a>
								<div class="text p-3">
									<div class="d-flex">
										<div class="one">
											<h3>
												<a href="hotel-single.jsp">Hotel, Italy</a>
											</h3>
											<p class="rate">
												<i class="icon-star"></i> <i class="icon-star"></i> <i
													class="icon-star"></i> <i class="icon-star"></i> <i
													class="icon-star-o"></i> <span>8 Rating</span>
											</p>
										</div>
										<div class="two">
											<span class="price per-price">$40<br>
											<small>/night</small></span>
										</div>
									</div>
									<p>Far far away, behind the word mountains, far from the
										countries</p>
									<hr>
									<p class="bottom-area d-flex">
										<span><i class="icon-map-o"></i> Miami, Fl</span> <span
											class="ml-auto"><a href="#">Book Now</a></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>




			</div>
		</div>
		<!-- .col-md-8 -->
		</div>
		</div>
	</section>
	<!-- .section -->



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
	<script src="statics/js/jquery-1.11.3.js"></script>
	
	<script type="text/javascript">
	
	
		function collectplace(placeId){
			console.log("123");
			$.ajax({
				type:"post",
				url:"placeServlet",
				data:{
					actionName:"collectplace",
					placeId:placeId
				},
				success:function(data){
					$("#btn1").prop("disabled",true);
					$("#msg").html("收藏成功")
				}

			});
		};
		
		
		function deletecollectplace(placeId){
			console.log("123");
			$.ajax({
				type:"post",
				url:"placeServlet",
				data:{
					actionName:"deletecollectplace",
					placeId:placeId
				},
				success:function(data){
					$("#btn2").prop("disabled",true);
					$("#msg").html("收藏成功")
				}

			});
		};
	</script>

</body>
</html>