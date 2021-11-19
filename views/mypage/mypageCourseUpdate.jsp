<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
									<strong>My Course 수정하기</strong>
								</h1>

							</div>
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
								<section id="container">

	<form action="/mypage/myCourseUpdate" method="post">
		<input type="text" id="cno" name="cno" value="${read.cno}">
		
		<label for="title" class="col-sm-2 control-label">제목</label>
		<input type="text" id="title" name="title" class="form-control" value="${read.title}" />
		<hr>
		
		
		코스 테마 :
			<select name='tema' id="tema">
				<option value='0'>테마선택</option>
				<option value='1'>가족코스</option>
				<option value='2'>혼자여행</option>
				<option value='3'>도보코스</option>
				<option value='4'>힐링코스</option>
				<option value='5'>맛 코스</option>
				<option value='6'>캠핑코스</option>
				<option value='7'>반려동물과 함께</option>
			</select>
		
		<hr>
		
		코스 일정 :
			<select name='schedule'>
				<option value='0'>일정선택</option>
				<option value='1'>당일여행</option>
				<option value='2'>1박 2일</option>
				<option value='3'>2박 3일</option>
				<option value='4'>3박 4일</option>
				<option value='5'>4박 5일</option>
				<option value='6'>5박 6일</option>
				<option value='7'>일주일 이상</option>
				<option value='8'>한달 이상</option>
			</select>	
	
		<hr>
		
			여행지
			<div class="section-top-border">
				<table id="table1" class="table1" cellspacing="3" align="center">
					<tr id="firstRow">
					</tr>
				</table>

				<div id="dt">
						<!-- 	테이블 인풋 값 들어오는 곳~~~~~ -->
				</div>
						
			</div>
			 		
		<hr>
			내용
			<textarea rows="20" cols="50" name="content"><c:out value="${read.content}"/></textarea>
	
		<hr>
	
			지도
	
		<hr>
	
			소개여부
			<input type="radio" name="listsee" value="1">허용
			<input type="radio" name="listsee" value="0" checked="checked">불가
			
		<hr>
		
			노출여부
			<input type="radio" name="mainsee" value="1">허용
			<input type="radio" name="mainsee" value="0" checked="checked">불가
			<input type="text" name="writer" value=${member.userId }>
			
			<button id="btn2" type="submit" data-oper='update'
				class="submit-btn2">수정</button>
			<button id="btn2" type="submit" data-oper='remove'
				class="submit-btn2">remove</button>
			<button id="btn2" type="submit" data-oper='list'
				class="submit-btn2">list</button>
	</form>	
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

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d8ff20975ed69aa401f9d41894c959b2"></script>


	<script>
	$("#regBtn").on("click", function(){
		self.location ="/member/register";
	});
	
	$("#mypBtn").on("click", function(){
		self.location ="/mypage/mypageMain";
	});
	
	$("#logoutBtn").on("click", function(){
		location.href="member/logout";
	})
	
	var tema = '${read.tema}';


	
	
	$(document).on("click",".up, .down",function() {
		var row = $(this).parents("tr:first");
		var parentIndex = $(this).parents().prev().children("td:first").text();
		var tabIndex = $(this).parents().prev().prev().prev("td:first").text();// 첫반째 행..??
		var childrenIndex = $(this).parents().next().children("td:first").text();

		if ($(this).is(".up")) {
			if (row.prev().is("tr:first")) {
				alert("더이상 위로 올릴 수 없습니다.");
			} else {
				row.insertBefore(row.prev());
				
				$(this).parents().children("td:first").text(parentIndex);
				$(this).parents().next().children("td:first").text(tabIndex);
			}
		} else if ($(this).is(".down")) {
			
			if (row.is("tr:last")) {
				alert("더이상 아래로 내릴 수 없습니다.");
			} else {
				row.insertAfter(row.next());
				
				$(this).parents().children("td:first").text(childrenIndex);
				$(this).parents().prev().children("td:first").text(tabIndex);
			}
		}
	});
	
	
	var num = 0;
	$(document).ready(function() {
		
		var ServiceKey = "hXmWwbs9dyi6bWvj1%2FRc8dpc8rYvTSP8W5fOu%2FNd5NnGXj6wT85pgRQPYvRum7SqbUuSEpeY7cuvl9FBmaYi8Q%3D%3D";
		var cno =  '${read.cno}';
		
		'<c:forEach items="${placeList}" var="placeList">';
		
		var cnt = '${placeList.contentId}';
		var orders = '${placeList.orders}';
		
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="+ServiceKey
					+"&contentId="+cnt
					+"&MobileOS=ETC&MobileApp=AppTest&defaultYN=Y&addrinfoYN=Y&firstImageYN=Y&mapinfoYN=Y",
			async:false,
			success:function(data){
				$(data).find('item').each(function(){
					var contentid = $(this).find('contentid').text();
					var title = $(this).find('title').text();
					var addr = $(this).find('addr1').text();
					var firstimg = $(this).find('firstimage').text();
					
					var html = '';
					html += '<tr id="tr'+num+'">';							
					html += '<td>'+(num+1)+'</td>';					
					html += '<td id ="img">';				
					html += '<div class="col-md-3">';		
					html += '<p id="ct'+num+'" style = "display:none;" class ="cnt">'+ cnt+ '</p>';		
					html += '<img src="'+firstimg+'" width ="200">'					
					html += '</div></td><td>'			
					html +='<h3 class="mb-30" >'+title+'</h3></td>'
												
					html += '<td>';
					html += '<input type="hidden" name="placeList['+num+'].cno" value ="'+cno+'"/>';
					html += '<input type="button" value="up" class="up btn" ><input type="button" value="down" class="down btn" >';				
					html += '</td></tr>';
					
					$('.table1').append(html);
					
				});
				
			}
					
					
		
		});

		num++;
		'</c:forEach> ';

		$('button').on("click",function(e) {
			function check() {
				var trArr = ($('tr').length) - 1;
				var n = $('.cnt');
				for (i = 0; i < trArr; i++) {
					console.log(n.eq(1).text());
					console.log("배열에 담긴 값 : "+ n.eq(i + 1).text());
					var hp = $('<input type="text" name="placeList['+i+'].contentId" value='+ n.eq(i).text()+ '>'
							+ '<input type="text" name="placeList['+i+'].orders" value ='+ (i + 1) + '>');
					hp.appendTo('#dt');

				}
			}
				e.preventDefault();
				
				var operation = $(this).data("oper");	
				console.log(operation);
				
				if(operation === 'remove'){
					$("form").attr("action", "/list/remove");
					
				}else if(operation === 'list'){
					console.log(p.eq(0).text());
					$("form").attr("action", "/list/user_cos").attr("method", "get");
					return;
	
				}else if(operation === 'update'){
					check();
					$("form").submit();	
				}
		});
		
	});//스크립트 끝내기
	</script>

</body>
</html>