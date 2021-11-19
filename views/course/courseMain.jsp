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
<link rel="stylesheet" href="/resources/assets/css/compact-gallery.css">
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
								<h1 style="color: #2d2d2d;">
									<strong>코스</strong>
								</h1>

								<ul class="blog-info-link mt-3 mb-4">
									<li><a href="/search/searchList?search=전체">#전체</a></li>
									<li><a href="/search/searchList?search=관광지">#가족코스</a></li>
									<li><a href="/search/searchList?search=레포츠">#나홀로코스</a></li>
									<li><a href="/search/searchList?search=쇼핑">#힐링코스</a></li>
									<li><a href="/search/searchList?search=음식">#도보코스</a></li>
									<li><a href="/search/searchList?search=체험">#캠프코스</a></li>
									<li><a href="/search/searchList?search=역사">#맛코스</a></li>
								</ul>
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
					<div class="col-lg-12 mb-5 mb-lg-0">
						<div class="blog_left_sidebar">
							<article class="blog_item">
								<div>
									<h3>지역</h3>

									<table border=1 style="width: 100%">
										<tr>
											<td><a href="/course/courseArea?areaCode=1&pageNo=1"
												class="page-link">서울</a></td>
											<td><a href="/course/courseArea?areaCode=2&pageNo=1"
												class="page-link">인천</a></td>
											<td><a href="/course/courseArea?areaCode=3&pageNo=1"
												class="page-link">대전</a></td>
											<td><a href="/course/courseArea?areaCode=4&pageNo=1"
												class="page-link">대구</a></td>
											<td><a href="/course/courseArea?areaCode=5&pageNo=1"
												class="page-link">광주</a></td>
											<td><a href="/course/courseArea?areaCode=6&pageNo=1"
												class="page-link">부산</a></td>
											<td><a href="/course/courseArea?areaCode=7&pageNo=1"
												class="page-link">울산</a></td>
											<td><a href="/course/courseArea?areaCode=8&pageNo=1"
												class="page-link">세종</a></td>
											<td><a href="/course/courseArea?areaCode=31&pageNo=1"
												class="page-link">경기</a></td>
										</tr>
										<tr>
											<td><a href="/course/courseArea?areaCode=32&pageNo=1"
												class="page-link">강원</a></td>
											<td><a href="/course/courseArea?areaCode=33&pageNo=1"
												class="page-link">충북</a></td>
											<td><a href="/course/courseArea?areaCode=34&pageNo=1"
												class="page-link">충남</a></td>
											<td><a href="/course/courseArea?areaCode=35&pageNo=1"
												class="page-link">경북</a></td>
											<td><a href="/course/courseArea?areaCode=36&pageNo=1"
												class="page-link">경남</a></td>
											<td><a href="/course/courseArea?areaCode=37&pageNo=1"
												class="page-link">전북</a></td>
											<td><a href="/course/courseArea?areaCode=38&pageNo=1"
												class="page-link">전남</a></td>
											<td><a href="/course/courseArea?areaCode=39&pageNo=1"
												class="page-link">제주</a></td>
											<td><a href="/course/courseArea?areaCode=&pageNo=1"
												class="page-link">전체</a></td>
										</tr>
									</table>
								</div>
							</article>

							<article class="blog_item">
								<div class="blog_item_img">
									<p>여러분이 직접 만든 코스를 소개합니다!</p>
									<a href="/course/courseUser">
										<img src="/resources/img/usercourse.gif">
									</a>
								</div>							
							
							
							
								<section class="gallery-block compact-gallery">
									<div class="container">

										<h1>추천코스 API (조회순)</h1>

										<div class="row no-gutters" id="month01"></div>
									</div>

								</section>
								
								<section class="gallery-block compact-gallery">
									<div class="container">

										<h1>캠핑코스 API (조회순)</h1>

										<div class="row no-gutters" id="month02"></div>
									</div>

								</section>
							</article>


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

	<script type="text/javascript">
		$(document).ready(function() {
			$("#regBtn").on("click", function() {
				location.href = "/member/register";
			});

			$("#logoutBtn").on("click", function() {
				location.href = "/member/logout";
			});

			$("#mypBtn").on("click", function(){
				self.location ="/mypage/mypageMain";
			});	
			
			// ajax
			
			// 추천코스 
				$.ajax({
					url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&contentTypeId=25&numOfRows=12&arrange=P&MobileOS=ETC&MobileApp=AppTest",
							success:function(data){
								$(data).find('item').each(function(i){
									var contentid = $(this).find('contentid').text();
									var contenttypeid = $(this).find('contenttypeid').text();
									var firstimage= $(this).find('firstimage').text();
									var title = $(this).find('title').text();
									var addr1 = $(this).find('addr1').text();
									var areacode = $(this).find('areacode').text();
									var mapx = $(this).find('mapx').text();
									var mapy = $(this).find('mapy').text();
									var sigungucode = $(this).find('sigungucode').text();
									
									var tooltip = $('<div class="col-md-5 col-lg-2 item zoom-on-hover">'
											+'<a class="lightbox" id="b'+i+'">'
											+'<img class="img-fluid image" src="http://placehold.it/700x467" style="width:200px; height:160px" id="two'+i+'">'
											+'<span class="description">'
											+'<span class="description-heading" id="title02'+i+'"></span>'
											+'</span>'
						                    +'</a>'
							                +'</div>');
									tooltip.appendTo('#month01');
									
									
									$("#two"+i).attr("src",firstimage);
									$("#title02"+i).text(title);
									$("#b"+i).attr("href", "/csDetail?writer=${member.userId}&contentid="+contentid+"&contenttypeid="+contenttypeid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
									
								});
							}
				});
		
				$.ajax({
					url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?keyword=%EC%BA%A0%ED%95%91&ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&contentTypeId=25&numOfRows=12&MobileOS=ETC&MobileApp=AppTest",
							success:function(data){
								$(data).find('item').each(function(i){
									var contentid = $(this).find('contentid').text();
									var contenttypeid = $(this).find('contenttypeid').text();
									var firstimage= $(this).find('firstimage').text();
									var title = $(this).find('title').text();
									var addr1 = $(this).find('addr1').text();
									var areacode = $(this).find('areacode').text();
									var mapx = $(this).find('mapx').text();
									var mapy = $(this).find('mapy').text();
									var sigungucode = $(this).find('sigungucode').text();

									var tooltip = $('<div class="col-md-5 col-lg-2 item zoom-on-hover">'
											+'<a class="lightbox" id="b'+i+'">'
											+'<img class="img-fluid image" src="http://placehold.it/700x467" style="width:200px; height:160px" id="two'+i+'">'
											+'<span class="description">'
											+'<span class="description-heading" id="title02'+i+'"></span>'
											+'</span>'
						                    +'</a>'
							                +'</div>');
									tooltip.appendTo('#month02');
									$("#two"+i).attr("src",firstimage);
									$("#title02"+i).text(title);
									$("#b"+i).attr("href", "/csDetail?writer=${member.userId}&contentid="+contentid+"&contenttypeid="+contenttypeid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
																		
									
								});
							}
				});
		});
	</script>

</body>
</html>