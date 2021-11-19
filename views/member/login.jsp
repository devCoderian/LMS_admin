<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>DirectoryListing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/assets/img/favicon.ico">

   <!-- CSS here -->
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/resources/assets/css/hamburgers.min.css">
    <link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/resources/assets/css/slick.css">
    <link rel="stylesheet" href="/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="/resources/assets/css/style.css">
</head>
    <!--? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
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
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="/"><img src="/resources/assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="#">홈</a></li>
                                    <li><a href="/recommend/recommendMain">추천</a>
                                    	 <ul class="submenu">
                                            <li><a href="#">메뉴1</a></li>
                                            <li><a href="#">메뉴2</a></li> 
                                        </ul>
                                    </li>
                                    <li><a href="/travelplace/travelplaceMain">여행지</a>
                                        <ul class="submenu">
                                            <li><a href="#">메뉴1</a></li>
                                            <li><a href="#">메뉴2</a></li> 
                                        </ul>
                                    </li>
                                    <li><a href="/course/courseMain">코스</a>
                                        <ul class="submenu">
                                            <li><a href="#">메뉴1</a></li>
                                            <li><a href="#">메뉴2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/festival/festivalMain">축제</a>
                                        <ul class="submenu">
                                            <li><a href="#">메뉴1</a></li>
                                            <li><a href="#">메뉴2</a></li>
                                        </ul>                                    
                                    </li>
                                    <li><a href="/board/list">게시판</a>
                                        <ul class="submenu">
                                            <li><a href="#">메뉴1</a></li>
                                            <li><a href="#">메뉴2</a></li>
                                        </ul>                                    
                                    </li>
                                </ul>
                            </nav>
                        </div>          
                        <!-- Header-btn -->
                        
                        <c:if test="${member == null}">
                        <div class="header-btns d-none d-lg-block f-right">
                        	<a href="/member/login" class="mr-40"><i class="ti-user"></i> Log in</a>
                        	<button id = 'regBtn' type ="button" class ="btn btn-xs pull-right">New Join</button>
                        </div>
                        </c:if>
                        
                        <c:if test="${member != null }">
                        <div class="header-btns d-none d-lg-block f-right">
                        	<a href="#" type ="button" class="mr-40" id="logoutBtn" ><i class="ti-user"></i> Log out</a>
                        	<button id = "mypBtn" type ="button" class ="btn btn-xs pull-right">My Page</button>
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
    <main>
        <!--? Hero Start -->
        <div class="slider-area2">
            <div class="slider-height3  hero-overly d-flex align-items-center" style='height: 100%;'>
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
        <!--?  Contact Area start  -->
        <section class="contact-section" style='padding: 0 0 100px;'>
            <div class="container">
                <div class="d-none d-sm-block mb-5 pb-4">
                </div>
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">로그인</h2>
                    </div>
                    <div class="col-lg-8">
                        <form action="/member/login" class="form-contact contact_form" method="post" id="regForm">
                        	
                        	<c:if test="${member == null}">
	                            <div class="row">
	                                <div class="col-sm-7">
	                                    <div class="form-group">
	                                        <input class="form-control valid" id="userId" name="userId" type="text" placeholder="Enter your ID">
	                                    </div>
	                                </div>
	                                <div class="col-sm-7">
	                                    <div class="form-group">
	                                        <input class="form-control valid" id="userPass" name="userPass" type="password" placeholder="Password">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="row">
		                            <div class="form-group mt-3 col-sm-3">
		                                <button type="submit" class="button button-contactForm boxed-btn">Login</button>
		                            </div>
		                            <div class="form-group mt-3 col-sm-4" >
		                                <button type="button" id="registerBtn" class="button button-contactForm boxed-btn">회원가입</button>
		                            </div>
								</div>
							</c:if>
							
							<c:if test="${member != null }">
								<div>
									<p>${member.userId}님 환영 합니다. 상단메뉴에서 필요하신 정보를 이용하세요.</p>
		                            <div class="row">
			                            <div class="form-group mt-3 col-sm-3">
			                                <button id="memberUpdateBtn" type="button" class="button button-contactForm boxed-btn" style='padding: 7.8px 44px;'>회원정보수정</button>
			                            </div>
			                            <div class="form-group mt-3 col-sm-4" >
			                                <button type="button" id="logoutBtn_2" class="button button-contactForm boxed-btn">로그아웃</button>
			                            </div>
									</div>
								</div>
							</c:if>
		
							<c:if test="${msg == false}">
								<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
							</c:if>
							
                        </form>
					</div>
                </div>
            </div>
        </section>
		
	<!-- Scroll Up -->
    <div id="back-top" >
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
		$(document).ready(function(){
			
			$("#regBtn").on("click", function(){
				location.href ="/member/register";
			});
			
			$("#logoutBtn").on("click", function(){
				location.href="/member/logout";
			});
			
			$("#logoutBtn_2").on("click", function(){
				location.href="/member/logout";
			});
			
			$("#registerBtn").on("click", function(){
				location.href="/member/register";
			});
			
			$("#mypBtn").on("click", function(){
				self.location ="/mypage/mypageMain";
			});
			
			$("#memberUpdateBtn").on("click", function(){
				location.href="/member/memberUpdateView";
			});
			
		})
	</script>
	     
    </body>
</html>