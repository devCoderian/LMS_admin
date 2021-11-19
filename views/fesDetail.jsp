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

		</section>

		<section class="blog_area section-padding" style='padding: 0 0 0px;'>
<br><br><br><br><br><br><br><br><br>
<br><br><br><br><br>

			<div class="container">
				<div class="f1"></div>
				
						<div class="main-menu f-right d-none d-lg-block">
							<!-- 모달창에 넣고 싶은 부분 -->
							<button>코스에 담기 (모달창이 뜸)</button>
							<p>
							<div>
								<hr>
								-- 모달창에 넣고 싶은 부분 --
								<table class="table table-hover">
									<thead>
										<tr>
											<th>제목</th>
											<th>등록</th>
										</tr>
									</thead>

									<c:forEach items="${myList}" var="myList">
										<tr>
											<form action="/course/insertCourse" method="post">
												<td><c:out value="${myList.title}" /></td>
												<td><input type="text" name="cno"
													value="${myList.cno }"> <input type='text'
													id="contentId" name="contentId"
													value='<%=request.getParameter("contentid")%>'> <input
													type="submit" value="선택"></td>
											</form>
										</tr>
									</c:forEach>
								</table>


								<div class="search row">
									<div class="col-xs-2 col-sm-2">
										<select name="searchType" class="form-control">
											<option value="n"
												<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
											<option value="t"
												<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
											<option value="c"
												<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
											<option value="w"
												<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
											<option value="tc"
												<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
										</select>
									</div>

									<div class="col-xs-10 col-sm-10">
										<div class="input-group">
											<input type="text" name="keyword" id="keywordInput"
												value="${scri.keyword}" class="form-control" /> <span
												class="input-group-btn">
												<button id="searchBtn" type="button" class="btn btn-default">검색</button>
											</span>
										</div>
									</div>

									<script>
										$(function() {
											$('#searchBtn')
													.click(
															function() {
																self.location = "mypageCourse"
																		+ '${pageMaker.makeQuery(1)}'
																		+ "&searchType="
																		+ $(
																				"select option:selected")
																				.val()
																		+ "&keyword="
																		+ encodeURIComponent($(
																				'#keywordInput')
																				.val());
															});
										});
									</script>
								</div>

								<div class="col-md-offset-3">
									<ul class="pagination">
										<c:if test="${pageMaker.prev}">
											<li><a
												href="mypageCourse${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
										</c:if>

										<c:forEach begin="${pageMaker.startPage}"
											end="${pageMaker.endPage}" var="idx">
											<li
												<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
												<a href="mypageCourse${pageMaker.makeSearch(idx)}">${idx}</a>
											</li>
										</c:forEach>

										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li><a
												href="mypageCourse${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
										</c:if>
									</ul>
								</div>
								<hr>
							</div>
						</div>				
				<div class="f2"></div>
				<hr>

				<div class="z_box" id="f3" style="text-align: center;"></div>

				<hr>


				<div class="f4"></div>
				<hr>

				<hr>


				<div class="detailinfo">
					<div style="float: left; width: 50%;">
						<div class="f9"></div>
						<div class="f5"></div>
						<div class="f6"></div>

						<div class="f8"></div>

						<div class="f7"></div>


					</div>
					<div style="float: left; width: 50%;">



						<div class="f10"></div>
						<div class="f11"></div>
						<div class="f12"></div>

						<div class="f13"></div>
					</div>

				</div>


				<a href="https://map.kakao.com/link/to/${title},${mapy},${mapx}"
					target="_blank">네비게이션 이동123</a>

				<div id="map" style="width: 1170px; height: 400px;"></div>

				<hr>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="openchat" style="float: left; width: 50%;">
					<a href="https://open.kakao.com/o/g0rUM9rc" target="_blank">축제
						오픈채팅</a>
					<!-- 나중에 오픈채팅 이미지로 대체. -->
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<h2>인근관광지</h2>
				<section class="gallery-block compact-gallery">

					<div class="row no-gutters" id="recommend01"></div>

				</section>
				<hr>
				<h2>인근축제</h2>
				<section class="gallery-block compact-gallery">

					<div class="row no-gutters" id="recommend02"></div>

				</section>
				<hr>
				<h2>인근 코스</h2>



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

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d8ff20975ed69aa401f9d41894c959b2"></script>

	<script type="text/javascript">
	
	var ServiceKey = "hXmWwbs9dyi6bWvj1%2FRc8dpc8rYvTSP8W5fOu%2FNd5NnGXj6wT85pgRQPYvRum7SqbUuSEpeY7cuvl9FBmaYi8Q%3D%3D";
	
	$(document).ready(function(){
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&defaultYN=Y&addrinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTest&mapinfoYN=Y&areacodeYN=Y",
			success:function(data){				
				$(data).find('item').each(function(){					
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var overview = $(this).find('overview').text();			
					var homepage = $(this).find('homepage').text();
					var addr001 = addr1.split(' ');
					
					if(homepage ===''){
						homepage = "홈페이지 없음";
					}
					
					var mapy = $(this).find('mapy').text();
					var mapx = $(this).find('mapx').text();
					$('.f1').append('<h1>'+title+'</h1>');
					$('.f2').append('<h1>'+addr001[0]+' '+addr001[1]+'</h1>');
					$('.f9').append('<p>상세 주소 : '+addr1+'</p>');
					$('.f8').append('<p>홈페이지 : '+homepage+'</p>');
					$('.f4').append('<p>'+overview+'</p>');
						
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = { 
						    center: new kakao.maps.LatLng(mapy, mapx), // 지도의 중심좌표
						    level: 3 // 지도의 확대 레벨
						};
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
						//마커가 표시될 위치입니다 
						var markerPosition  = new kakao.maps.LatLng(mapy, mapx); 
						//마커를 생성합니다
						var marker = new kakao.maps.Marker({
						position: markerPosition
						});
						//마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);				
					});
				}
			});

		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&imageYN=Y&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){				
				$(data).find('item').each(function(){					
					var originimgurl = $(this).find('originimgurl').text();	
						$('#f3').append('<img src="'+originimgurl+'" style="width:200px; height:150px;"/>');
					});
				}
			});

		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&contentTypeId=15&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){				
				$(data).find('item').each(function(){					
					var eventstartdate = $(this).find('eventstartdate').text();
					var eventenddate = $(this).find('eventenddate').text();
					var sponsor1tel = $(this).find('sponsor1tel').text();
					var eventplace = $(this).find('eventplace').text();
					var sponsor1 = $(this).find('sponsor1').text();
					var sponsor2 = $(this).find('sponsor2').text();
					var usetimefestival = $(this).find('usetimefestival').text();

					var start = eventstartdate.slice(0,4) + '.' + eventstartdate.slice(4,6) + '.' + eventstartdate.slice(6,8);
					var end = eventenddate.slice(0,4) + '.' + eventenddate.slice(4,6) + '.' + eventenddate.slice(6,8);
					
					let today = new Date();
				    var abc = today.toLocaleDateString();
					
					var arr1 = start.split('.');
					var arr2 = end.split('.');
					var arr3 = abc.split('.')
					
					var dt1 = new Date(arr1[0], arr1[1], arr1[2]);
					var dt2 = new Date(arr2[0], arr2[1], arr2[2]);
				    var dt3 = new Date(arr3[0], arr3[1], arr3[2]);
				   
					if(dt3 >dt1 && dt3 < dt2){
						$('.f2').append('축제 진행중!');
					} else if(dt3 < dt1){
						$('.f2').append('축제 시작전!');
					} else if(dt3 > dt2){
						$('.f2').append('축제 끝났음!');
					}
					
					$('.f5').append('<p>시작 날짜 : '+start+'</p>');
					$('.f6').append('<p>종료 날짜 : '+end+'</p>');
					$('.f7').append('<p>문의 및 안내 : '+sponsor1tel+'</p>');
					$('.f10').append('<p>행사 장소 : '+eventplace+'</p>');
					$('.f11').append('<p>주최 : '+sponsor1+'</p>');
					$('.f12').append('<p>주관 : '+sponsor2+'</p>');
					$('.f13').append('<p>이용요금 : '+usetimefestival+'</p>');
					$('.f14').append('<p>'+start+'</p>');
					$('.f15').append('<p>'+end+'</p>');
					$('.f16').append('<p>'+abc+'</p>');
					$('.f2').append(start+' ~ '+end);
					});		
				}
			});

		function check01(){
			$.ajax({
				url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey="+ServiceKey
					+"&contentTypeId=12&areaCode="+'<%=request.getParameter("areacode") %>'+"&sigunguCode="+'<%=request.getParameter("sigungucode") %>'+"&MobileOS=ETC&MobileApp=AppTest&numOfRows=6&arrange=P",
				success:function(data){
					$(data).find('item').each(function(i){
						var title = $(this).find('title').text();
						var addr1 = $(this).find('addr1').text();
						var firstimage = $(this).find('firstimage').text();
						var contentid = $(this).find('contentid').text();
						var mapx = $(this).find('mapx').text();
						var mapy = $(this).find('mapy').text();
						var areacode = $(this).find('areacode').text();
						var sigungucode = $(this).find('sigungucode').text();
						
						var html = '';
						html += '<div class="col-md-5 col-lg-2 item zoom-on-hover">';
						html += '<a href="/detail?contentid='+contentid+'&mapx='+mapx+'&mapy='+mapy+'&areacode='+areacode+'&sigungucode='+sigungucode+'&title='+encodeURIComponent(title)+' class="lightbox">';
						html += '<img class="img-fluid image" src="'+firstimage+'" style="width:200px; height:160px" >';
						html += '<span class="description">';
						html += '<span class="description-heading">'+title+'</span>';
						html += '</sapn></a></div>'
						
						$('#recommend01').append(html);
						
					});
				}
			})
			return true;
			}
			check01();


		function check02(){
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey="+ServiceKey
				+"&contentTypeId=15&areaCode="+'<%=request.getParameter("areacode") %>'+"&sigunguCode="+'<%=request.getParameter("sigungucode") %>'+"&MobileOS=ETC&MobileApp=AppTest&numOfRows=6&arrange=P",
			success:function(data){
				for(i=0; i<6; i++){
					var tooltip = $('<div class="col-md-5 col-lg-2 item zoom-on-hover">'
							+'<a class="lightbox" id="b'+i+'">'
							+'<img class="img-fluid image" src="http://placehold.it/500x325" style="width:200px; height:160px" id="two'+i+'">'
							+'<span class="description">'
							+'<span class="description-heading" id="title02'+i+'"></span>'
							+'</span>'
		                    +'</a>'
			                +'</div>');
					tooltip.appendTo('#recommend02');
				}
				$(data).find('item').each(function(i){
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var firstimage = $(this).find('firstimage').text();
					var contentid = $(this).find('contentid').text();
					var mapx = $(this).find('mapx').text();
					var mapy = $(this).find('mapy').text();
					var areacode = $(this).find('areacode').text();
					var sigungucode = $(this).find('sigungucode').text();
					
					$("#two"+i).attr("src",firstimage);
					$("#title02"+i).text(title);
					$("#b"+i).attr("href", "/detail?contentid="+contentid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
					
				})
			}
		})
		return true;
		}
		check02();

	});
	</script>

</body>
</html>