<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
								<h1 style="color: #2d2d2d;">
									<strong>사용자가 직접 만든 코스</strong>
								</h1>
								<ul class="blog-info-link mt-3 mb-4">
									<li><a href="">#전체</a></li>
									<li><a href="">#당일여행</a></li>
									<li><a href="">#1박 2일</a></li>
									<li><a href="">#2박 3일 이상</a></li>
									<li><a href="">#아직 이동설정 안함</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
<div class="listing-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <!--? Left content -->
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="row">
                    <div class="col-12">
                            <div class="small-section-tittle2 mb-45">
                            <h4>Advanced Filter</h4>
                        </div>
                    </div>
                </div>
                <!-- Job Category Listing start -->
           <form action = "/list/user_cos" method ="get" id= "searchForm">
                <div class="category-listing mb-50">
                    <!-- single one -->
                    <div class="single-listing">
                        <!-- Select City items start -->
                      <!--   <div class="select-job-items2">
                            <select name="select2">
                                <option value="">분류</option>
                                <option value="">좋아요 순</option>
                                <option value="">조회순</option>
                                <option value="">등록순</option>
                            </select>
                        </div> -->
                       
                        <!--  Select km items End-->
                        <!-- select-Categories start -->
                        
                        <!-- checked="checked active" -->
                        
                       
                        <div class="select-Categories pt-80 pb-30">
                            <div class="small-section-tittle2 mb-20">
                                <h4>테마별</h4>
                            </div>
                           <%--  <label class="container">나홀로 여행
                                <input type="checkbox" name ="cos_op1" value="혼자">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">친구와 여행
                                <input type="checkbox" value="친구" name ="cos_op1">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">가족 여행
                                <input type="checkbox" name ="cos_op1" value="가족">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <!-- select-Categories End -->
                        <!-- select-Categories start -->
                        <div class="select-Categories">
                            <div class="small-section-tittle2 mb-20">
                                <h4>여행 기간</h4>
                            </div>
                            <label class="container">1박 2일 
                                <input type="checkbox" name ="cos_op2" value ="1">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">2박 3일
                                <input type="checkbox" name ="cos_op2" value ="2">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">장기 여행
                                <input type="checkbox"  name ="cos_op2" value ="3">
                                <span class="checkmark"></span>
                            </label>
                <input type ="hidden" name="pageNum" value ="${pageMaker.cp.pageNum}">
                <input type ="hidden" name="amount" value ="${pageMaker.cp.amount}">
                <button>search</button>
                 --%>
             <!--    <input type ="submit"  value ="Search"> -->
                
                
                        </div>
                        <!-- select-Categories End -->
                    </div>
                </div>
                
                
                
                
             </form>
                <!-- Job Category Listing End -->
            </div>
       
       
       
       <!-- 왼쪽 리스트 끝 -->
       
<div class="listing-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <!--? Left content -->
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="row">
                    <div class="col-12">
                            <div class="small-section-tittle2 mb-45">
                            <h4>Advanced Filter</h4>
                        </div>
                    </div>
                </div>

														  <div class="col-xl-8 col-lg-8 col-md-6">
												                <div class="row">
												                    <div class="col-lg-12">
												                        <div class="count mb-35">
												                            <span>5432 Listings are available</span>
												                        </div>
												                    </div>
												                </div>
              
              
              
              
              
              
              
       <div class="popular-directorya-area fix">
                        <div class="row">
                        
											<c:forEach items="${list}" var = "list">
												 <div class="col-lg-6">
      
         <div class="properties properties2 mb-30">
                     <div class="properties__card">
									<div class="properties__img overlay1" >
									</div>
															  <div class="properties__caption">
																<h4>
																<c:out value="${list.title}" />
															</h4>
															<p class="card-text">
																<c:out value="${list.writer}" />
															</p>
															<p class="card-text">
																<c:out value="${list.cno}" />
															</p>

                											</div>
                											  <div class="properties__footer d-flex justify-content-between align-items-center">
															   <div class="restaurant-name">
															  <img src="assets/img/gallery/restaurant-icon.png" alt="">
															  <h3><c:out value ="${list.writer}"/></h3>
															
                                            </div>
                                            <div class="heart">
                                               <a href='<c:out value="${list.cno}"/>' class='btn btn'>더 알아보기</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
											</c:forEach>


									
     				 </div>
                </div>
  
          </div>
		<%-- 			<div class="search row">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
						</div>
						 
						<div class="col-xs-10 col-sm-10">
							<div class="input-group">
								<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control"/>
								<span class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button> 	
								</span>
							</div>
						</div>
						 
					</div>
					<div class="col-md-offset-3">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li><a href="courseUser${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
							</c:if> 
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="courseUser${pageMaker.makeSearch(idx)}">${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="courseUser${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
							</c:if> 
						</ul>
					</div>
			
						</div>
					</div>
				</div>
			</div> --%>
	
		<!-- Blog Area End -->

		<!-- Want To work End -->
		
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
			
		})

	</script>
		<script>
							 $(function(){
								 $('#searchBtn').click(function() {
									 self.location = "courseUser" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
								 });
							 });   
						</script>

</body>
</html>