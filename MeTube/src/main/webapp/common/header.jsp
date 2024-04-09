<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<nav class="main-nav">
					<!-- ***** Logo Start ***** -->
					<a href="<c:url value='/index'/>" class="logo"> <img
						src="assets/images/logo1.png" alt="" style="width: 50px"> MeTube
					</a>
					<!-- ***** Logo End ***** -->
					<!-- ***** Search End ***** -->
					<div class="search-input">
						<form id="search" action="#">
							<input type="text" placeholder="Type Something" id='searchText'
								name="searchKeyword" onkeypress="handle" /> <i
								class="fa fa-search"></i>
						</form>
					</div>
					<!-- ***** Search End ***** -->
					<!-- ***** Menu Start ***** -->
					<ul class="nav">
						<c:choose>
							<c:when test="${not empty sessionScope.currentUser}">
								<li class="nav-item"><a class="nav-link nav-link-1"
									href="favorites">My Favourites</a></li>
								<!-- <li class="nav-item"><a class="nav-link nav-link-1"
									href="history">History</a></li> -->
								<c:if test="${sessionScope.currentUser.getIsAdmin() == true}">
									<li class="nav-item"><a class="nav-link nav-link-1"
										href="/MeTube/admin">Statistical</a></li>
								</c:if>
								<li class="nav-item"><a class="nav-link nav-link-1"
									href="logout">Log out</a></li>
								<li><a href="<c:url value='/index'/>">${sessionScope.currentUser.username} <img src="assets/images/profile-header.jpg" alt=""></a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link nav-link-1"
									href="forgotPass">Forgot Password</a></li>
								<li class="nav-item"><a class="nav-link nav-link-1"
									href="register">Register</a></li>
								<li class="nav-item"><a class="nav-link nav-link-1"
									href="login">Login <img src="assets/images/profile-header.jpg" alt=""></a></li>
							</c:otherwise>
						</c:choose>
					</ul>
					<a class='menu-trigger'> <span>Menu</span>
					</a>
					<!-- ***** Menu End ***** -->
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- ***** Header Area End ***** -->