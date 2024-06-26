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
<style>
/* width */
::-webkit-scrollbar {
	width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
	background: #f1f1f1;
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #888;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #555;
}
</style>
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
					<%-- <div class="most-popular">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>LIST VIDEO</h4>
								</div>
								<div class="row">
									<c:forEach items="${videos}" var="video">
										<div class="col-lg-3 col-sm-6">
											<a
												href="<c:url value='/video?action=watch&id=${video.href}'/>">
												<div class="item">
													<img src="<c:url value='${video.poster}'/>" alt="">
													<h4>${video.title}</h4>
													<div class="d-flex justify-content-between">
														<span class="">${video.views} -
															Views</span> <span>${video.shares} - Shares</span>
													</div>
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
					</div> --%>
					<div class="most-popular" style="padding-top: 0">
						<div class="row" >
							<div class="col-lg-12">
								<div class="clips" style="border: none">
									<div class="row">
										<div class="col-lg-12">
											<div class="heading-section">
												<h4>
													List Video
												</h4>
											</div>
										</div>
										<c:forEach items="${videos}" var="video">
											<div class="col-lg-3 col-sm-6">
												<div class="item" style="height: 350px">
													<div class="thumb">
														<img src="<c:url value='${video.poster}'/>" alt=""
															style="border-radius: 23px;"> <a
															href="<c:url value='/video?action=watch&id=${video.href}'/>"><i
															class="fa fa-play"></i></a>
													</div>
													<div class="down-content">
														<h4>${video.title}</h4>
														<span><i class="fa fa-eye"></i> ${video.views}</span>
													</div>
												</div>
											</div>
										</c:forEach>
										<div class="col-lg-12">
											<div class="main-button">
												<a href="#">Load More Clips</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ***** Most Popular End ***** -->

					</div>
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
