<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>${video.title}</title>

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

					<!-- ***** Featured Games Start ***** -->
					<div class="row">
						<div class="col-lg-8">
							<div class="featured-games header-text"
								style="width: 100%; height: 100%">
								<div class="heading-section">
									<h4>MeTube</h4>
								</div>



								<form id="youtubeForm" action="" method="get">
									<div class="form-group">
										<label for="youtubeLink" class="text-white">YouTube
											Link:</label> <input type="url" id="youtubeLink" name="youtubeLink" value="${linkYoutube}"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label for="title" class="text-white">Title:</label> <input
											type="text" id="title" name="title" class="form-control" value="${title}"
											required>
									</div>
									<div class="form-group">
										<label for="description" class="text-white">Description:</label>
										<textarea id="description" name="description" 
											class="form-control" required>${description}</textarea>
									</div>
									<div class="button-group m-2">
										<button formaction="upload" id="uploadBtn"
											class="btn btn-success">Upload</button>
										<button formaction="update" id="updateBtn"
											class="btn btn-warning">Update</button>
										<button formaction="delete" id="deleteBtn"
											class="btn btn-danger">Delete</button>
										<button formaction="new" id="newBtn" class="btn btn-primary">New</button>
									</div>
								</form>






							</div>
						</div>
						<div class="col-lg-4">
							<div class="top-downloaded">
								<div class="heading-section">
									<h4>List Video</h4>
								</div>
								<ul class="overflow-auto" style="max-height: 400px;">
									<c:forEach items="${videos}" var="video">
										<a
											href="fill?id=${video.id}&title=${video.title}&description=${video.description}&href=${video.href}">
											<li><img src="<c:url value='${video.poster}'/>" alt=""
												class="templatemo-item">
												<h4>${video.title}</h4> <span><i
													class="fa-solid fa-eye" style="color: white;"></i>
													${video.views}</span> <!-- <span><i
													class="fa-solid fa-share" style="color: #ec6090;"></i> 2.2M</span> -->
										</li>
										</a>
									</c:forEach>
								</ul>
								<div class="text-button">
									<a href="profile.html">View All Video</a>
								</div>
							</div>
						</div>

					</div>
					<!-- ***** Featured Games End ***** -->

					<!-- ***** Live Stream Start ***** -->
					<!-- <div class="live-stream">
						<div class="col-lg-12">
							<div class="heading-section">
								<h4>
									<em>Most Popular</em> Live Stream
								</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-01.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-01.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> KenganC</span>
										<h4>Just Talking With Fans</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-02.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-02.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> LunaMa</span>
										<h4>CS-GO 36 Hours Live Stream</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-03.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-03.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> Areluwa</span>
										<h4>Maybe Nathej Allnight Chillin'</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-04.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-04.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> GangTm</span>
										<h4>Live Streaming Till Morning</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="main-button">
									<a href="streams.html">Discover All Streams</a>
								</div>
							</div>
						</div>
					</div> -->
					<!-- ***** Live Stream End ***** -->

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

