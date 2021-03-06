<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>대표 관리</title>
 
<jsp:include page="/WEB-INF/view/common/common_include.jsp"></jsp:include>
<!--추가 스크립트  -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${CTX_PATH}/js/popFindZipCode.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${CTX_PATH}/js/register.js"></script>
<%-- <link rel="stylesheet" type="text/css" href="${CTX_PATH}/css/admin/login.css" />
 --%>

<script type="text/javascript">
	//대표 목록 페이징 설정
	var pageSize = 10;
	var pageBlockSize = 5;

	/** OnLoad event */
	$(document).ready(function() {

		//대표목록 조회
		flist_ceo();

		// 버튼 이벤트 등록
		fRegisterButtonClickEvent();

		$("#to_date").change(function() {
			if ($("#to_date").val() < $("#from_date").val()) {
				alert("최소기간 보다 작을수 없습니다.")
				$("#to_date").val('');
			}
		});
	});

	/** 버튼 이벤트 등록 */
	function fRegisterButtonClickEvent() {
		$('a[name=btn]').click(function(e) {
			e.preventDefault();

			var btnId = $(this).attr('id');

			switch (btnId) {
			case 'btnSave':
				fsave_adv();
				break;
			case 'btnUpdate':
				fceo_up();
				break;
			case 'RegisterCom':
				IDCheck('DRegisterForm');
				break;
			case 'btnClose':
				gfCloseModal();
				break;
			}
		});
	}

	/** 대표 목록 조회 */
	function flist_ceo(currentPage) {

		currentPage = currentPage || 1;
		searchWord = $("#searchWord").val();
		searchKey = $("#searchKey").val();
		from_date = $("#from_date").val();
		to_date = $("#to_date").val();

		var param = {
			searchKey : searchKey,
			searchWord : searchWord,
			currentPage : currentPage,
			pageSize : pageSize,
			from_date : from_date,
			to_date : to_date,
			user_type : 'E'
		}

		var resultCallback = function(data) {
			flist_ceo_result(data, currentPage);
		};

		callAjax("/adm/list_ceo.do", "post", "text", true, param,
				resultCallback);
	}

	/** 대표목록 조회 콜백 함수 */
	function flist_ceo_result(data, currentPage) {

		// 기존 목록 삭제
		$('#ceo_list').empty();

		// 신규 목록 생성
		$('#ceo_list').append(data);

		// 총 개수 추출
		var totalCnt = $("#totalCnt").val();

		// 페이지 네비게이션 생성
		var user_type = $("#tmp_type").val();
		var paginationHtml = getPaginationHtml(currentPage, totalCnt, pageSize,
				pageBlockSize, 'flist_ceo');
		$("#Pagination").empty().append(paginationHtml);

		// 현재 페이지 설정
		$("#currentPage").val(currentPage);

	}

	/** 유저 단건 조회 */
	function fceo_info(loginID) {
		$("#tmp_user").val(loginID);

		var param = {
			loginID : loginID
		};

		var resultCallback = function(data) {
			fceo_info_result(data);
		};

		callAjax("/adm/user_info.do", "post", "json", true, param,
				resultCallback);
	}

	/** 유저 단건 조회 콜백 함수*/
	function fceo_info_result(data) {

		if (data.result == "SUCCESS") {

			// 모달 팝업
			gfModalPop("#layer1");

			// 그룹코드 폼 데이터 설정
			fInit_ceo(data.user_model);

		} else {
			alert(data.resultMsg);
		}
	}

	/** 대표 정보출력  */
	function fInit_ceo(object) {
		$("#ceo_id").text(object.loginID);
		$("#ceo_num").text(object.ceo_num);
		$("#ceo_name").text(object.name);
		$("#ceo_birth").text(object.birth);
		$("#ceo_tel").text(object.tel);
		$("#ceo_sex").text(object.sex);
		$("#ceo_addr").text(object.addr);
		$("#ceo_mail").text(object.mail);

		$("#comp_name").val(object.comp_name);
		if(object.comp_addr != null){
		$("#comp_addr").val(object.comp_addr.replace(/,/gi, " "));
		}
		$("#comp_mail").val(object.comp_mail);
		$("#comp_tel").val(object.comp_tel);

	}

	/** 회원 생성 모달 실행 */
	function fPopModal_user(loginID) {
		// 상담 모달 폼 초기화
		fInit_ceo();
		fslist_lecture();

		gfModalPop("#layer1");

	}

	/** 유저 밴 */
	function ban_user(loginID) {

		var result = confirm('정말 탈퇴시키시겠습니까?');

		if (result) {
			var param = {
				loginID : loginID
			}
			var resultCallback = function(data) {
				ban_user_result(data);
			};

			callAjax("/adm/ban_user.do", "post", "json", true, param,
					resultCallback);
			flist_ceo();
		} else {
		}

	}

	/** 유저 밴 콜백 함수 */
	function ban_user_result(data) {

		var currentPage = $("#currentPage").val();
		var lec_id = $("#tmp_lec").val();

		if (data.result == "SUCCESS") {

			// 응답 메시지 출력
			alert(data.resultMsg);

			// 모달 닫기
			gfCloseModal();

			// 대표 목록 조회
			flist_ceo(currentPage, lec_id);

		} else {
			alert(data.resultMsg);
		}
	}

	/** 대표자 정보변경 */
	function fceo_up() {

		// vaildation 체크
		if (!fValidate_up()) {
			return;
		}

		var resultCallback = function(data) {
			fceo_up_result(data);
		};

		callAjax("/adm/ceo_up.do", "post", "json", true, $("#myForm")
				.serialize(), resultCallback);
	}

	/** 상담 저장 콜백 함수 */
	function fceo_up_result(data) {

		// 목록 조회 페이지 번호
		var currentPage = "1";

		if (data.result == "SUCCESS") {

			// 응답 메시지 출력
			alert(data.resultMsg);

			// 모달 닫기
			gfCloseModal();

			// 목록 조회
			flist_ceo(currentPage);

		} else {
			// 오류 응답 메시지 출력
			alert(data.resultMsg);
		}
	}

	/** 상담 저장 validation */
	function fValidate_up() {

		var chk = checkNotEmpty([ [ "comp_name", "회사명을 입력해 주세요." ],
				[ "comp_tel", "회사번호을 입력해 주세요." ],
				[ "comp_mail", "회사 메일을 입력해 주세요." ],
				[ "comp_addr", "회사 주소를 입력해 주세요." ]

		]);

		if (!chk) {
			return;
		}

		return true;
	}

	/* 관리자 회원가입 */
	function fRegisterD() {
		gfModalPop("#layerD");
	}

	// 우편번호 api
	function execDaumPostcode(loginaddr, loginaddr1, detailaddr) {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
				}
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById(detailaddr).value = data.zonecode;
				document.getElementById(loginaddr).value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById(loginaddr1).focus();
			}
		}).open({});
	}

	function dateSelect(docForm, selectIndex) {
		console.log("1");
		watch = new Date(docForm.year.options[docForm.year.selectedIndex].text,
				docForm.month.options[docForm.month.selectedIndex].value, 1);
		console.log("2");
		hourDiffer = watch - 86400000;
		console.log("3");
		calendar = new Date(hourDiffer);
		console.log("4");
		var daysInMonth = calendar.getDate();
		console.log("5");

		for (var i = 0; i < docForm.day.length; i++) {
			docForm.day.options[0] = null;
		}
		for (var i = 0; i < daysInMonth; i++) {
			docForm.day.options[i] = new Option(i + 1);
		}
		document.form1.day.options[0].selected = true;
	}
</script>


</head>
<body>
	<form id="myForm" action="" method="">
		<input type="hidden" id="currentPage" value="1"> <input
			type="hidden" id="tmp_type" name="user_type" value="E"> <input
			type="hidden" id="tmp_user" name="loginID" value=""> <input
			type="hidden" name="action" id="action" value="">

		<!-- 모달 배경 -->
		<div id="mask"></div>

		<div id="wrap_area">

			<h2 class="hidden">header 영역</h2>
			<jsp:include page="/WEB-INF/view/common/header.jsp"></jsp:include>

			<h2 class="hidden">컨텐츠 영역</h2>
			<div id="container">
				<ul>
					<li class="lnb">
						<!-- lnb 영역 --> <jsp:include
							page="/WEB-INF/view/common/lnbMenu.jsp"></jsp:include> <!--// lnb 영역 -->
					</li>
					<li class="contents">
						<!-- contents -->
						<h3 class="hidden">contents 영역</h3> <!-- content -->
						<div class="content">

							<p class="Location">
								<a href="/notice/aNotice.do" class="btn_set home">메인으로</a> <a
									href="" class="btn_nav">인원 관리</a> <span class="btn_nav bold">대표
									관리</span> <a href="/adm/ceoControl.do" class="btn_set refresh">새로고침</a>
							</p>


							<!--대표 목록  -->

							<p class="conTitle mt50">
								<span>대표 목록</span> <span class="fr"> <select
									id="searchKey" name="searchKey" style="width: 80px;">
										<option value="all" id="option1" selected="selected">전체</option>
										<option value="name" id="option1">대표명</option>
										<option value="id" id="option1">ID</option>
										<option value="tel" id="option2">전화번호</option>
								</select><input type="text" id="searchWord" name="searchWord"
									onKeyDown="if(event.keyCode == 13) flist_ceo()"
									style="height: 28px;"> <a class="btnType blue"
									href="javascript:flist_ceo()" name="search"><span
										id="searchEnter">검색</span></a> <a class="btnType blue"
									href="javascript:fRegisterD();" name="modal"><span>신규
											등록</span></a>
								</span>
							</p>
							<span class="fr">
								<p class="Location">
									<Strong>가입일 조회 </Strong> <input type="date" id="from_date">~<input
										type="date" id="to_date"> <a class="btnType blue"
										href="javascript:flist_ceo()" name="search"><span
										id="searchEnter">조회</span></a>
								</p>
							</span>

							<!--대표 리스트  -->
							<div class="div_list_advice" id="div_list_advice">
								<table class="col">
									<caption>caption</caption>
									<colgroup>

										<col width="15%">
										<col width="15%">
										<col width="10%">
										<col width="10%">
										<col width="10%">
										<col width="5%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">회사명</th>
											<th scope="col">대표명 (ID)</th>
											<th scope="col">휴대전화</th>
											<th scope="col">이메일</th>
											<th scope="col">가입일자</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody id="ceo_list"></tbody>
								</table>
							</div>

							<div class="paging_area" id="Pagination"></div>
						</div> <!--// content -->

						<h3 class="hidden">풋터 영역</h3> <jsp:include
							page="/WEB-INF/view/common/footer.jsp"></jsp:include>
					</li>
				</ul>
			</div>
		</div>


		<!-- 모달팝업 -->
		<div id="layer1" class="layerPop layerType2" style="width: 600px;">
			<dl>
				<dt>
					<strong>대표 정보</strong>
				</dt>
				<dd class="content">
					<!-- s : 여기에 내용입력 -->
					<table class="row">
						<caption>caption</caption>
						<colgroup>
							<col width="120px">
							<col width="*">
							<col width="120px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">ID</th>
								<td id="ceo_id"></td>
								<th scope="row">이름</th>
								<td id="ceo_name"></td>
							</tr>
							<tr>
								<th scope="row">휴대폰 번호</th>
								<td id="ceo_tel"></td>
								<th scope="row">이메일</th>
								<td id="ceo_mail"></td>
							</tr>
						</tbody>
					</table>
				</dd>
			</dl>
			<dl>
				<dt>
					<strong>회사 정보</strong>
				</dt>
				<dd class="content">
					<table class="row">
						<caption>caption</caption>
						<colgroup>
							<col width="120px">
							<col width="*">
							<col width="120px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">회사명</th>
								<td><input type="text" class="inputTxt p100" id="comp_name"
									name="comp_name" /></td>
								<th scope="row">회사 연락처</th>
								<td><input type="text" class="inputTxt p100" id="comp_tel"
									name="comp_tel" />
							</tr>
							<tr>
								<th scope="row">회사 주소</th>
								<td colspan="6"><input type="text" class="inputTxt p100" id="comp_addr"
									name="comp_addr" /></td>
							</tr>
							<tr>
								<th scope="row">회사 이메일</th>
								<td colspan="6"><input type="text" class="inputTxt p100" id="comp_mail"
									name="comp_mail" /></td>
							</tr>
						</tbody>
					</table>

					<!-- e : 여기에 내용입력 -->

					<div class="btn_areaC mt30">
						<a href="" class="btnType blue" id="btnUpdate" name="btn"><span>수정</span></a>
						<a href="" class="btnType gray" id="btnClose" name="btn"><span>닫기</span></a>
					</div>
				</dd>
			</dl>
			<a href="" class="closePop"><span class="hidden">닫기</span></a>
		</div>
	</form>

	<!-- 대표 회원가입  -->
	<form id="DRegisterForm" action="" method="post">
		<div id="layerD" class="layerPop layerType2" style="width: 600px;">
			<dl>
				<dt>
					<strong>대표 회원 가입</strong>
				</dt>
				<dd class="content">
					<!-- s : 여기에 내용입력 -->
					<table class="row">
						<caption>caption</caption>
						<colgroup>
							<col width="120px">
							<col width="*">
							<col width="120px">
							<col width="*">
						</colgroup>

						<tbody>
							<tr>
								<th scope="row">대표자명<span class="font_red">*</span></th>
								<td><input type="text" class="inputTxt p100" name="name"
									id="DregisterName" /></td>
								<th scope="row">기업명 <span class="font_red">*</span></th>
								<td><input type="text" class="inputTxt p100"
									name="comp_name" id="DregisterComp_name" /></td>

							</tr>
							<tr>
								<th scope="row">아이디 <span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="inputTxt p100"
									name="loginID" id="DregisterId" /></td>
							</tr>
							<tr>
								<th scope="row">비밀번호 <span class="font_red">*</span></th>
								<td colspan="3"><input type="password"
									class="inputTxt p100" name="password" id="DregisterPwd" /></td>
							</tr>
							<tr>
								<th scope="row">비밀번호 확인<span class="font_red">*</span></th>
								<td colspan="3"><input type="password"
									class="inputTxt p100" name="password1" id="DregisterPwdOk" /></td>
							</tr>
							<tr>
								<th scope="row">우편번호<span class="font_red">*</span></th>
								<td colspan="2"><input type="text" class="inputTxt p100"
									name="comp_addr2" id="DregisterComp_addr2" /></td>
								<td><input type="button" value="우편번호 찾기"
									onclick="execDaumPostcode('DregisterComp_addr','DregisterComp_addr1','DregisterComp_addr2')"
									class="address_search" /></td>
							</tr>
							<tr>
								<th scope="row">기업 주소<span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="inputTxt p100"
									name="comp_addr" id="DregisterComp_addr" /></td>
							</tr>
							<tr>
								<th scope="row">기업 상세주소<span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="inputTxt p100"
									name="comp_addr1" id="DregisterComp_addr1" /></td>
							</tr>
							<tr>
								<th scope="row">성별 <span class="font_red">*</span></th>
								<td colspan="3"><input type="radio" name="sex" value="M"
									id="DregisterSex"> &nbsp;&nbsp;&nbsp; 남
									&nbsp;&nbsp;&nbsp; <input type="radio" name="sex" value="F"
									id="DregisterSex"> &nbsp;&nbsp;&nbsp; 여
									&nbsp;&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<th scope="row">연락처 <span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="phone"
									name="tel1" id="DregisterTel1" /> <b>&nbsp;&nbsp;-&nbsp;&nbsp;</b>
									<input type="text" class="phone" name="tel2" id="DregisterTel2" />
									<b>&nbsp;&nbsp;-&nbsp;&nbsp;</b> <input type="text"
									class="phone" name="tel3" id="DregisterTel3" /></td>
							</tr>

							<tr>
								<th scope="row">기업 연락처 <span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="phone"
									name="comp_tel1" id="Dregistercomp_tel1" /> <b>&nbsp;&nbsp;-&nbsp;&nbsp;</b>
									<input type="text" class="phone" name="comp_tel2"
									id="Dregistercomp_tel2" /> <b>&nbsp;&nbsp;-&nbsp;&nbsp;</b> <input
									type="text" class="phone" name="comp_tel3"
									id="Dregistercomp_tel3" /></td>
							</tr>
							<tr>
								<th scope="row">생년 월일 <span class="font_red">*</span></th>
								<td colspan="3"><script language="javascript">
									Today('null', 'null', 'null');
								</script>
								</td>
							</tr>
							<tr>
								<th scope="row">주민 번호 <span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="pid" name="pid1"
									id="DregisterPid1" /> <b>&nbsp;&nbsp;-&nbsp;&nbsp;</b> <input
									type="password" class="pid" name="pid2" id="DregisterPid2" />
								</td>
							</tr>
							<tr>
								<th scope="row">기업 이메일<span class="font_red">*</span></th>
								<td colspan="3"><input type="text" class="mail"
									name="mail1" id="DregisterEmail1" /> &nbsp;&nbsp; @
									&nbsp;&nbsp; <input type="text" class="mail" name="mail2"
									id="DregisterEmail2" /></td>
							</tr>


							<input type="hidden" name="user_type" value="E" />
						</tbody>
					</table>

					<div class="btn_areaC mt30">
						<a href="javascript:IDCheck('DRegisterForm');"
							class="rSubmit btnType blue" id="RegisterCom" name="btn"><span>가입</span></a>
						<a href="" class="btnType gray" id="btnClose" name="btn"><span>취소</span></a>
					</div>
				</dd>
			</dl>
		</div>
	</form>
</body>
</html>