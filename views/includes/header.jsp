<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap core CSS -->
 <!-- <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script> -->
  <link href="/resources/bootStrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
 <!--  <link href="/resources/bootStrap/css/heroic-features.css" rel="stylesheet"> -->

 <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>DirectoryListing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/css/slicknav.css">
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="/resources/css/gijgo.css">
    <link rel="stylesheet" href="/resources/css/animate.min.css">
    <link rel="stylesheet" href="/resources/css/animated-headline.css">
	<link rel="stylesheet" href="/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/resources/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/css/slick.css">
	<link rel="stylesheet" href="/resources/css/nice-select.css">
	<link rel="stylesheet" href="/resources/css/style.css">
	
	<!-- 모달 제이쿼리 -->
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<!-- 모달 끝  -->
	
</head>

 <!--    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
    <!-- <script src="script.js"></script> -->




</head>
<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="/resources/img/logo/loder.png" alt="">
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
								
									<li><a href="/travelplace/travelplaceMain">여행지</a></li>
									<li><a href="/course/courseMain">코스</a>
										<ul class="submenu">
											<li><a href="#">메뉴1</a></li>
											<li><a href="#">메뉴2</a></li>
										</ul>
									</li>
									<li><a href="/festival/festivalMain">축제</a>
									</li>
									<li><a href="/board/list">게시판</a></li>
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

<!-- Navigation -->
 <!--  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">traveling</a>
      서치 한줄임
     <input class="form-control" type="text" placeholder="Search" id="search">
       <button id="call">클릭!</button>
     
      <p id="show"></p>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">search</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Menu</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">임시데이터 코스만들기</a>
          </li>
        </ul>
      </div>
    </div>
  </nav> -->
  </body>
  </html>
