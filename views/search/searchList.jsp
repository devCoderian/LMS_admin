<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>DirectoryListing</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/assets/css/slicknav.css">
<link rel="stylesheet" href="/resources/assets/css/animate.min.css">
<link rel="stylesheet" href="/resources/assets/css/hamburgers.min.css">
<link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="/resources/assets/css/slick.css">
<link rel="stylesheet" href="/resources/assets/css/nice-select.css">
<link rel="stylesheet" href="/resources/assets/css/style.css">
</head>
<body>
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="/resources/assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area header-transparent">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div
						class="menu-wrapper d-flex align-items-center justify-content-between">
						<!-- Logo -->
						<div class="logo">
							<a href="/"><img src="/resources/assets/img/logo/logo.png"
								alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu f-right d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="/">홈</a></li>
									<li><a href="/recommend/recommendMain">추천</a>
										<ul class="submenu">
											<li><a href="#">메뉴1</a></li>
											<li><a href="#">메뉴2</a></li>
										</ul></li>
									<li><a href="/travelplace/travelplaceMain">여행지</a>
										<ul class="submenu">
											<li><a href="#">메뉴1</a></li>
											<li><a href="#">메뉴2</a></li>
										</ul></li>
									<li><a href="/course/courseMain">코스</a>
										<ul class="submenu">
											<li><a href="#">메뉴1</a></li>
											<li><a href="#">메뉴2</a></li>
										</ul></li>
									<li><a href="/festival/festivalMain">축제</a>
										<ul class="submenu">
											<li><a href="#">메뉴1</a></li>
											<li><a href="#">메뉴2</a></li>
										</ul></li>
									<li><a href="/board/list">게시판</a>
										<ul class="submenu">
											<li><a href="#">메뉴1</a></li>
											<li><a href="#">메뉴2</a></li>
										</ul></li>
								</ul>
							</nav>
						</div>
						<!-- Header-btn -->
						<c:if test="${member == null}">
							<div class="header-btns d-none d-lg-block f-right">
								<a href="/member/login" class="mr-40"><i class="ti-user"></i>
									Log in</a>
								<button id='regBtn' type="button" class="btn btn-xs pull-right">New
									Join</button>
							</div>
						</c:if>

						<c:if test="${member != null }">
							<div class="header-btns d-none d-lg-block f-right">
								<a href="#" type="button" class="mr-40" id="logoutBtn"><i
									class="ti-user"></i> Log out</a>
								<button id="mypBtn" type="button" class="btn btn-xs pull-right">My
									Page</button>
							</div>
						</c:if>

						<!-- Mobile Menu -->
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<!--? Hero Start -->
	<main>
		<!--? Hero Start -->
		<div class="slider-area2">
			<div class="slider-height3  hero-overly d-flex align-items-center"
				style='height: 100%;'>
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="hero-cap2 pt-20 text-center">
								<h2></h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Hero End -->
		<!--? Blog Area Start-->
		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row">
					<div class="col-lg-8 posts-list">
						<div class="single-post">
							<div class="feature-img">
								<img class="img-fluid" src="assets/img/blog/single_blog_1.png"
									alt="">
							</div>
							<div class="blog_details">
								<h2 style="color: #2d2d2d;">
									<strong>"<%=request.getParameter("search") %>" 검색 결과</strong>
								</h2>
								
								<!-- tab menu -->
								<ul class="nav nav-pills" id="tabs">
									<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#all">전체</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#recommend">추천</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#travelplace">여행지</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#course">코스</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#festival">축제</a></li>
								</ul>
								<!-- tab menu end -->
								
							</div>
						</div>
					</div>

					<div class="col-lg-4">
						<div class="blog_right_sidebar">
							<aside class="single_sidebar_widget search_widget">
								<form action="/search/searchList" method="post">
									<div class="form-group">
										<div class="input-group mb-3">
											<input type="text" name="search" class="form-control"
												placeholder='Search Keyword'>
											<div class="input-group-append">
												<button class="btns" type="submit">
													<i class="ti-search"></i>
												</button>
											</div>
										</div>
									</div>
								</form>
							</aside>
						</div>
					</div>

				</div>
			</div>
		</section>

		<section class="blog_area section-padding" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 mb-5 mb-lg-0" >
					
					<!-- tab content -->
						<div class="tab-content">
							<div class="tab-pane fade show active" id="all">
								<div class="blog_left_sidebar_all">
								
								
								</div>
								
								<div class="pagination-area text-center">
				                    <div class="container">
				                        <div class="row">
				                            <div class="col-xl-24">
				                                <div class="single-wrap d-flex justify-content-center">
				                                    <nav aria-label="Page navigation example">
				                                        <ul class="pagination justify-content-start" id="myDIV">
				                                        	<div class="page_list_all">
										
															</div>
				                                        </ul>
				                                    </nav>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>
							</div>
							
							<div class="tab-pane fade" id="recommend">
								<div class="blog_left_sidebar">
								추천을 보일 곳!
								
								</div>
								
							</div>
							
							<div class="tab-pane fade" id="travelplace">
								<div class="blog_left_sidebar_travelplace">
								</div>
								<div class="pagination-area text-center">
				                    <div class="container">
				                        <div class="row">
				                            <div class="col-xl-24">
				                                <div class="single-wrap d-flex justify-content-center">
				                                    <nav aria-label="Page navigation example">
				                                        <ul class="pagination justify-content-start" id="myDIV">
				                                        	<div class="page_list_travelplace">
										
															</div>
				                                        </ul>
				                                    </nav>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>								
							</div>							
							
							<div class="tab-pane fade" id="course">
								<div class="blog_left_sidebar_course">
								
								</div>
								<div class="pagination-area text-center">
				                    <div class="container">
				                        <div class="row">
				                            <div class="col-xl-24">
				                                <div class="single-wrap d-flex justify-content-center">
				                                    <nav aria-label="Page navigation example">
				                                        <ul class="pagination justify-content-start" id="myDIV">
				                                        	<div class="page_list_course">
										
															</div>
				                                        </ul>
				                                    </nav>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>								
							</div>

							<div class="tab-pane fade" id="festival">
								<div class="blog_left_sidebar_festival">
								
								</div>
								<div class="pagination-area text-center">
				                    <div class="container">
				                        <div class="row">
				                            <div class="col-xl-24">
				                                <div class="single-wrap d-flex justify-content-center">
				                                    <nav aria-label="Page navigation example">
				                                        <ul class="pagination justify-content-start" id="myDIV">
				                                        	<div class="page_list_festival">
										
															</div>
				                                        </ul>
				                                    </nav>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>
							</div>
						</div>
							
					</div>
					
					<div class="col-lg-4">
						<div class="blog_right_sidebar">
							인기 검색어?
							<aside class="single_sidebar_widget post_category_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">Category</h4>
								<ul class="list cat-list">
									<li><a href="#" class="d-flex">
											<p>Resaurant food</p>
											<p>(37)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Travel news</p>
											<p>(10)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Modern technology</p>
											<p>(03)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Product</p>
											<p>(11)</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Inspiration</p>
											<p>21</p>
									</a></li>
									<li><a href="#" class="d-flex">
											<p>Health Care (21)</p>
											<p>09</p>
									</a></li>
								</ul>
							</aside>
							<aside class="single_sidebar_widget popular_post_widget">
								<h3 class="widget_title" style="color: #2d2d2d;">Recent
									Post</h3>
								<div class="media post_item">
									<img src="/resources/assets/img/post/post_1.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">From life was you fish...</h3>
										</a>
										<p>January 12, 2019</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="/resources/assets/img/post/post_2.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">The Amazing Hubble</h3>
										</a>
										<p>02 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="/resources/assets/img/post/post_3.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">Astronomy Or Astrology</h3>
										</a>
										<p>03 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="/resources/assets/img/post/post_4.png" alt="post">
									<div class="media-body">
										<a href="blog_details.html">
											<h3 style="color: #2d2d2d;">Asteroids telescope</h3>
										</a>
										<p>01 Hours ago</p>
									</div>
								</div>
							</aside>
							<aside class="single_sidebar_widget tag_cloud_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">Tag Clouds</h4>
								<ul class="list">
									<li><a href="#">project</a></li>
									<li><a href="#">love</a></li>
									<li><a href="#">technology</a></li>
									<li><a href="#">travel</a></li>
									<li><a href="#">restaurant</a></li>
									<li><a href="#">life style</a></li>
									<li><a href="#">design</a></li>
									<li><a href="#">illustration</a></li>
								</ul>
							</aside>

							<aside class="single_sidebar_widget instagram_feeds">
								<h4 class="widget_title" style="color: #2d2d2d;">Instagram
									Feeds</h4>
								<ul class="instagram_row flex-wrap">
									<li><a href="#"> <img class="img-fluid"
											src="/resources/assets/img/post/post_5.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="/resources/assets/img/post/post_6.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="/resources/assets/img/post/post_7.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="/resources/assets/img/post/post_8.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="/resources/assets/img/post/post_9.png" alt="">
									</a></li>
									<li><a href="#"> <img class="img-fluid"
											src="/resources/assets/img/post/post_10.png" alt="">
									</a></li>
								</ul>
							</aside>
							<aside class="single_sidebar_widget newsletter_widget">
								<h4 class="widget_title" style="color: #2d2d2d;">Newsletter</h4>
								<form action="#">
									<div class="form-group">
										<input type="email" class="form-control"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter email'"
											placeholder='Enter email' required>
									</div>
									<button
										class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
										type="submit">Subscribe</button>
								</form>
							</aside>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Blog Area End -->
		<!-- Want To work 02-->
		<section class="wantToWork-area">
			<div class="container">
				<div class="wants-wrapper w-padding2">
					<div class="row justify-content-between">
						<div class="col-xl-8 col-lg-8 col-md-7">
							<div class="wantToWork-caption wantToWork-caption2">
								<img src="/resources/assets/img/logo/logo2_footer.png" alt=""
									class="mb-20">
								<p>Users and submit their own items. You can create
									different packages and by connecting with your PayPal or Stripe
									account charge users for registration to your directory portal.</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-5">
							<div class="footer-social f-right sm-left">
								<a href="#"><i class="fab fa-twitter"></i></a> <a
									href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
								<a href="#"><i class="fab fa-pinterest-p"></i></a> <a href="#"><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Want To work End -->
		<!-- Want To work 01-->
		<section class="wantToWork-area">
			<div class="container">
				<div class="wants-wrapper">
					<div class="row align-items-center justify-content-between">
						<div class="col-xl-7 col-lg-9 col-md-8">
							<div class="wantToWork-caption wantToWork-caption2">
								<div class="main-menu2">
									<nav>
										<ul>
											<li><a href="index.html">Home</a></li>
											<li><a href="explore.html">Explore</a></li>
											<li><a href="pages.html">Pages</a></li>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4">
							<a href="#" class="btn f-right sm-left">Add Listing</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Want To work End -->
	</main>
	<footer>
		<div class="footer-wrapper pt-30">
			<!-- footer-bottom -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row d-flex justify-content-between align-items-center">
							<div class="col-xl-10 col-lg-9 ">
								<div class="footer-copy-right">
									<p>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
										Copyright &copy;
										<script>
											document.write(new Date()
													.getFullYear());
										</script>
										All rights reserved | This template is made with <i
											class="fa fa-heart" aria-hidden="true"></i> by <a
											href="https://colorlib.com" target="_blank">Colorlib</a>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
	<!-- JS here -->

	<script src="/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="/resources/assets/js/popper.min.js"></script>
	<script src="/resources/assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="/resources/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="/resources/assets/js/owl.carousel.min.js"></script>
	<script src="/resources/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="/resources/assets/js/wow.min.js"></script>
	<script src="/resources/assets/js/animated.headline.js"></script>
	<script src="/resources/assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="/resources/assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="/resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="/resources/assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="/resources/assets/js/jquery.counterup.min.js"></script>
	<script src="/resources/assets/js/waypoints.min.js"></script>
	<script src="/resources/assets/js/jquery.countdown.min.js"></script>
	<script src="/resources/assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="/resources/assets/js/contact.js"></script>
	<script src="/resources/assets/js/jquery.form.js"></script>
	<script src="/resources/assets/js/jquery.validate.min.js"></script>
	<script src="/resources/assets/js/mail-script.js"></script>
	<script src="/resources/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="/resources/assets/js/plugins.js"></script>
	<script src="/resources/assets/js/main.js"></script>

	<script>
	$(document).ready(function() {
		$("#regBtn").on("click", function() {
			location.href = "/member/register";
		});

		$("#logoutBtn").on("click", function() {
			location.href = "/member/logout";
		});

		$("#logoutBtn_2").on("click", function() {
			location.href = "/member/logout";
		});

		$("#registerBtn").on("click", function() {
			location.href = "/member/register";
		});
		
		$("#mypBtn").on("click", function(){
			self.location ="/mypage/mypageMain";
		});
		
		$("#memberUpdateBtn").on("click", function() {
			location.href = "/member/memberUpdateView";
		});
		
		var ServiceKey = "hXmWwbs9dyi6bWvj1%2FRc8dpc8rYvTSP8W5fOu%2FNd5NnGXj6wT85pgRQPYvRum7SqbUuSEpeY7cuvl9FBmaYi8Q%3D%3D";
		
		// 검색 했을 때 전체 탭에 보여지는 결과
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey="+ServiceKey
				+"&keyword="+'<%=request.getParameter("search") %>'
				+"&pageNo="+'<%=request.getParameter("pageNo") %>'
				+"&arrange=Q&MobileOS=ETC&MobileApp=AppTest",
				success:function(data){
				
				// 페이징
				var totalCount = $(data).find('totalCount').text();
				var lastpage = Math.ceil(totalCount/10);
				var pageNo = $(data).find('pageNo').text();
				var page ='';
				
				// 페이지가 10개 이상일 때
				if(lastpage > 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					if (pageNo < 6) {
						for(i=1; i<=10; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else if (pageNo > lastpage - 5) {
						for(i=lastpage-9; i<=lastpage; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else {
						for(i=pageNo-5; i<=parseInt(pageNo)+parseInt(4) ; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
						
				}
				
				// 페이지가 10개 미만일 때
				if(lastpage < 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					for(i=1; i<=lastpage; i++) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
				}
				

				$('.page_list_all').after(page);
				
				// API 정보 출력
				$(data).find('item').each(function() {
					var firstimage = $(this).find('firstimage').text();
					var firstimage2 = $(this).find('firstimage').text();
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var contentid = $(this).find('contentid').text();
					var contenttypeid = $(this).find('contenttypeid').text();
					
					
					var html = '';
					html += '<div class="popular-directorya-area  border-bottom section">';
					html += '<div class="row">';
					html += '<div class="col-lg-3">';
					html += '<a href="/detail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'">';
					html += '<img class="card-img-top" src="'+firstimage+'" alt="" width="200" height="160"></a></div>';
					html += '<div class="col-lg-9">';
					html += '<a href="/detail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'" style="color:black;"><strong>'+title +'</strong></a><br>';
					html += '<br>'+ addr1+'<br>' ;
					html += '</div></div></div>';
					
					$('.blog_left_sidebar_all').append(html);
					
					
					
				});
			}
					
		});	
		
		// 검색 했을 때 추천 탭에 보여지는 결과
		
		// 검색 했을 때 코스 탭에 보여지는 결과
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey="+ServiceKey
			+"&keyword="+'<%=request.getParameter("search") %>'
			+"&pageNo="+'<%=request.getParameter("pageNo") %>'
			+"&contentTypeId=25&arrange=P&MobileOS=ETC&MobileApp=AppTest",
				success:function(data){
				
				// 페이징
				var totalCount = $(data).find('totalCount').text();
				var lastpage = Math.ceil(totalCount/10);
				var pageNo = $(data).find('pageNo').text();
				var page ='';
				
				// 페이지가 10개 이상일 때
				if(lastpage > 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					if (pageNo < 6) {
						for(i=1; i<=10; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else if (pageNo > lastpage - 5) {
						for(i=lastpage-9; i<=lastpage; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else {
						for(i=pageNo-5; i<=parseInt(pageNo)+parseInt(4) ; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
						
				}
				
				// 페이지가 10개 미만일 때
				if(lastpage < 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					for(i=1; i<=lastpage; i++) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
				}
				

				$('.page_list_course').after(page);
				
				// API 정보 출력
				$(data).find('item').each(function() {
					var firstimage = $(this).find('firstimage').text();
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var contentid = $(this).find('contentid').text();
					var contenttypeid = $(this).find('contenttypeid').text();
					var areacode = $(this).find('areacode').text();
					
					
					var html = '';
					html += '<div class="popular-directorya-area  border-bottom section">';
					html += '<div class="row">';
					html += '<div class="col-lg-3">';
					html += '<a href="/csDetail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'">';
					html += '<img class="card-img-top" src="'+firstimage+'" alt="" width="200" height="160"></a></div>';
					html += '<div class="col-lg-9">';
					html += '<a href="/csDetail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'" style="color:black;">'+title +' </a><br>';
					html += '</div></div></div>';
					
					$('.blog_left_sidebar_course').append(html);
					
					
					
				});
			}
					
		});			

		// 검색 했을 때 여행지 탭에 보여지는 결과
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey="+ServiceKey
			+"&keyword="+'<%=request.getParameter("search") %>'
			+"&pageNo="+'<%=request.getParameter("pageNo") %>'
			+"&contentTypeId=12&arrange=P&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){
				
				// 페이징
				var totalCount = $(data).find('totalCount').text();
				var lastpage = Math.ceil(totalCount/10);
				var pageNo = $(data).find('pageNo').text();
				var page ='';
				
				// 페이지가 10개 이상일 때
				if(lastpage > 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					if (pageNo < 6) {
						for(i=1; i<=10; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else if (pageNo > lastpage - 5) {
						for(i=lastpage-9; i<=lastpage; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else {
						for(i=pageNo-5; i<=parseInt(pageNo)+parseInt(4) ; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
						
				}
				
				// 페이지가 10개 미만일 때
				if(lastpage < 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					for(i=1; i<=lastpage; i++) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
				}
				

				$('.page_list_travelplace').after(page);
				
				// API 정보 출력
				$(data).find('item').each(function() {
					var firstimage = $(this).find('firstimage').text();
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var contentid = $(this).find('contentid').text();
					var contenttypeid = $(this).find('contenttypeid').text();
					
					
					var html = '';
					html += '<div class="popular-directorya-area  border-bottom section">';
					html += '<div class="row">';
					html += '<div class="col-lg-3">';
					html += '<a href="/detail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'">';
					html += '<img class="card-img-top" src="'+firstimage+'" alt="" width="200" height="160"></a></div>';
					html += '<div class="col-lg-9">';
					html += '<a href="/detail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'" style="color:black;"><strong>'+title +'</strong></a><br>';
					html += '<br>'+ addr1+'<br>' ;
					html += '</div></div></div>';
					
					$('.blog_left_sidebar_travelplace').append(html);
					
					
					
				});
			}
					
		});			
		
		// 검색 했을 때 축제 탭에 보여지는 결과	
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey="+ServiceKey
			+"&keyword="+'<%=request.getParameter("search") %>'
			+"&pageNo="+'<%=request.getParameter("pageNo") %>'
			+"&contentTypeId=15&arrange=P&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){
				
				// 페이징
				var totalCount = $(data).find('totalCount').text();
				var lastpage = Math.ceil(totalCount/10);
				var pageNo = $(data).find('pageNo').text();
				var page ='';
				
				// 페이지가 10개 이상일 때
				if(lastpage >= 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					if (pageNo < 6) {
						for(i=1; i<=10; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else if (pageNo > lastpage - 5) {
						for(i=lastpage-9; i<=lastpage; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					} else {
						for(i=pageNo-5; i<=parseInt(pageNo)+parseInt(4) ; i++) {
							page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
						}
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
						
				}
				
				// 페이지가 10개 미만일 때
				if(lastpage < 10) {
					// 처음 페이지로 가는 << 버튼
					if(pageNo != 1) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo=1><span class=\"ti-angle-left\"></span></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-left\"></span></a></li>';
					}
					
					// 페이지는 10개씩만 보여주고 현재 페이지를 중심으로 5개 4개씩만 보여줌
					for(i=1; i<=lastpage; i++) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+i+' style="padding:15px;">'+i+'</a></li>';
					}
						
					// 마지막 페이지로 가는 >> 버튼
					if(pageNo != lastpage) {
						page += '<li class=\"page-item\"><a class=\"page-link\" href=?search='+"<%=request.getParameter("search") %>"+'&pageNo='+lastpage+'><span class=\"ti-angle-right\"></a></li>';
					} else {
						page += '<li class=\"page-item\"><a class=\"page-link\"><span class=\"ti-angle-right\"></span></a></li>';
					}
				}
				

				$('.page_list_festival').after(page);
				
				// API 정보 출력
				$(data).find('item').each(function() {
					var firstimage = $(this).find('firstimage').text();
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var contentid = $(this).find('contentid').text();
					var contenttypeid = $(this).find('contenttypeid').text();
					
					
					var html = '';
					html += '<div class="popular-directorya-area  border-bottom section">';
					html += '<div class="row">';
					html += '<div class="col-lg-3">';
					html += '<a href="/detail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'">';
					html += '<img class="card-img-top" src="'+firstimage+'" alt="" width="200" height="160"></a></div>';
					html += '<div class="col-lg-9">';
					html += '<a href="/detail?writer=${member.userId}&contentid='+ contentid + '&contenttypeid='+ contenttypeid +'" style="color:black;"><strong>'+title +'</strong></a><br>';
					html += '<br>'+ addr1+'<br>' ;
					html += '</div></div></div>';
					
					$('.blog_left_sidebar_festival').append(html);
					
					
					
				});
			}
					
		});	
		
	});
	
	</script>

</body>
</html>