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
					<div class="row">
						<div class="col-lg-12">
							<div class="main-profile ">
								<div class="row">
									<div class="col-lg-4">
										<img src="assets/images/profile.jpg" alt=""
											style="border-radius: 23px;">
									</div>
									<div class="col-lg-4 align-self-center">
										<div class="main-info header-text">
											<span>MeTube</span>
											<h4>WELCOME!</h4>
											<p>Let's goooo</p>
										</div>
									</div>
									<div class="col-lg-4 align-self-center">
										<ul>
											<form id="contact-form" action="register" method="POST"
												class="tm-contact-form mx-auto">
												<div class="form-group mb-3">
													<input type="text" name="username"
														class="form-control rounded-0" placeholder="User name?"
														required />
												</div>
												<div class="form-group mb-3">
													<input type="password" name="password"
														class="form-control rounded-0" placeholder="Password?"
														required />
												</div>
												<div class="form-group mb-3">
													<input type="password" name="cfmPass"
														class="form-control rounded-0"
														placeholder="Confirm Password?" required />
												</div>
												<div class="form-group mb-3">
													<input type="email" name="email"
														class="form-control rounded-0" placeholder="Email?"
														required />
												</div>
												<div class="form-group mb-3">
													<center>
														<button type="submit" class="btn btn-primary">Register</button>
													</center>
												</div>
											</form>
										</ul>
									</div>
								</div>
							</div>
						</div>
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
