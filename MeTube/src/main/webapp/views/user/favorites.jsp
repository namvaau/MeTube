<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>MeTube</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<!--

TemplateMo 579 Cyborg Gaming

https://templatemo.com/tm-579-cyborg-gaming

-->
</head>

<body>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<!-- ***** Header Area Start ***** -->
	<%@ include file="/common/header.jsp"%>
	<!-- ***** Header Area End ***** -->

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">

					<!-- ***** Banner Start ***** -->
					<div class="main-banner">
						<div class="row">
							<div class="col-lg-7">
								<div class="header-text">
									<h6>Welcome To MeTube</h6>
									<h4>
										<em>Browse</em> Our Popular Video Here
									</h4>
									<div class="main-button">
										<a href="browse.html">Browse Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Banner End ***** -->

					<!-- ***** Most Popular Start ***** -->
					<div class="most-popular">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>FAVORITE VIDEO</h4>
								</div>
								<div class="row">
									<c:forEach items="${videos}" var="video">
										<div class="col-lg-3 col-sm-6">
											<a
												href="<c:url value='/video?action=watch&id=${video.href}'/>">
												<div class="item">
													<img src="<c:url value='${video.poster}'/>" alt="">
													<h4>${video.title}</h4>
													<ul>
														<li><i class="fa fa-star"></i> ${video.shares} -
															Shares</li>
														<li><i class="fa fa-download"></i> ${video.views} -
															Views</li>
													</ul>
												</div>
											</a>
										</div>
									</c:forEach>
									<div class="col-lg-12">
										<div class="main-button">
											<a href="browse.html">Discover Popular</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Most Popular End ***** -->

					<!-- ***** Gaming Library Start ***** -->
					<div class="gaming-library">
						<div class="col-lg-12">
							<div class="heading-section">
								<h4>
									<em>Your Gaming</em> Library
								</h4>
							</div>
							<div class="item">
								<ul>
									<li><img src="assets/images/game-01.jpg" alt=""
										class="templatemo-item"></li>
									<li><h4>Dota 2</h4> <span>Sandbox</span></li>
									<li><h4>Date Added</h4> <span>24/08/2036</span></li>
									<li><h4>Hours Played</h4> <span>634 H 22 Mins</span></li>
									<li><h4>Currently</h4> <span>Downloaded</span></li>
									<li><div class="main-border-button border-no-active">
											<a href="#">Donwloaded</a>
										</div></li>
								</ul>
							</div>
							<div class="item">
								<ul>
									<li><img src="assets/images/game-02.jpg" alt=""
										class="templatemo-item"></li>
									<li><h4>Fortnite</h4> <span>Sandbox</span></li>
									<li><h4>Date Added</h4> <span>22/06/2036</span></li>
									<li><h4>Hours Played</h4> <span>740 H 52 Mins</span></li>
									<li><h4>Currently</h4> <span>Downloaded</span></li>
									<li><div class="main-border-button">
											<a href="#">Donwload</a>
										</div></li>
								</ul>
							</div>
							<div class="item last-item">
								<ul>
									<li><img src="assets/images/game-03.jpg" alt=""
										class="templatemo-item"></li>
									<li><h4>CS-GO</h4> <span>Sandbox</span></li>
									<li><h4>Date Added</h4> <span>21/04/2036</span></li>
									<li><h4>Hours Played</h4> <span>892 H 14 Mins</span></li>
									<li><h4>Currently</h4> <span>Downloaded</span></li>
									<li><div class="main-border-button border-no-active">
											<a href="#">Donwloaded</a>
										</div></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="main-button">
								<a href="profile.html">View Your Library</a>
							</div>
						</div>
					</div>
					<!-- ***** Gaming Library End ***** -->
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/common/footer.jsp"%>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/popup.js"></script>
	<script src="assets/js/custom.js"></script>


</body>

</html>


