<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>프로그램 추가</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!------------------- favicon start ------------------>
<link type="image/png" sizes="32x32" rel="icon" href="/admin/workoutFavicon.png">
<!------------------- favicon end -------------------->

<!-- Google Fonts
		============================================ -->
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/bootstrap.min.css">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/font-awesome.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/owl.carousel.css">
<link rel="stylesheet" href="/admin/css/owl.theme.css">
<link rel="stylesheet" href="/admin/css/owl.transitions.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/normalize.css">
<!-- meanmenu icon CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/meanmenu.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/main.css">
<!-- educate icon CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/educate-custon-icon.css">
<!-- morrisjs CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/morrisjs/morris.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- metisMenu CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet" href="/admin/css/metisMenu/metisMenu-vertical.css">
<!-- calendar CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/calendar/fullcalendar.min.css">
<link rel="stylesheet" href="/admin/css/calendar/fullcalendar.print.min.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="/admin/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="/admin/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="/admin/js/vendor/modernizr-2.8.3.min.js"></script>

<!-- 달력 API -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<body>

	<!---------------------- 사이드바 start --------------------->
	<c:import url="/WEB-INF/view/headoffice/include/sideBar.jsp"></c:import>
	<!---------------------- 사이드바 end ----------------------->

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h1 style="color: #2E64FE; margin-top: 20px;">본사 페이지</h1>
				</div>
			</div>
		</div>
		<div class="header-advance-area">
			<!---------------------- 상단바 start --------------------->
			<c:import url="/WEB-INF/view/headoffice/include/topBar.jsp"></c:import>
			<!---------------------- 상단바 end ----------------------->
		</div>

		<!-- 프로그램 추가 화면 start-->
		<form id="insertForm" method="post" action="${pageContext.request.contextPath}/headoffice/equipment/add" enctype="multipart/form-data">

			<div class="row" id="font" style="padding: 15px;">

				<div class="col-lg-3 col-md-2 col-sm-1 col-xs-12"></div>
				<div class="col-lg-6 col-md-8 col-sm-10 col-xs-12">
					<h3 style="margin-bottom: 20px;">물품 추가하기</h3>
					<div style="margin-bottom: 10px;">
						<label for="itemName" class="form-label">물품 이름</label> <input type="text" class="form-control" id="itemName" name="itemName" placeholder="입력하기" maxlength="15">
					</div>
					<div>
						<label for="note" class="form-label">비고</label>
						<textarea name="note" id="note" class="form-control" rows="1" maxlength="40" style="resize: none; margin-bottom: 10px;" placeholder="입력하기"></textarea>
					</div>

					<div class="row" style="margin-bottom: 10px;">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<label for="itemPrice" class="form-label">가격</label> <input type="number" min="1" max="100000000" maxlength="9" oninput="maxLengthCheck(this)" class="form-control" id="itemPrice" name="itemPrice" placeholder="단위 : 원">
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<label for="equipmentFile" class="form-label">물품 이미지</label> <input type="file" class="form-control" id="equipmentFile" name="equipmentFile" accept="image/*">
						</div>
					</div>

					<div style="text-align: center;">
						<button type="button" class="btn btn-primary" id="insertBtn" style="margin-top: 15px;">추가하기</button>
					</div>
				</div>

				<div class="col-lg-3 col-md-2 col-sm-1 col-xs-12"></div>
			</div>
		</form>
		<!-- 프로그램 추가 화면 end-->

	</div>

	<!-- bootstrap JS
		============================================ -->
	<script src="/admin/js/bootstrap.min.js"></script>
	<!-- wow JS
		============================================ -->
	<script src="/admin/js/wow.min.js"></script>
	<!-- price-slider JS
		============================================ -->
	<script src="/admin/js/jquery-price-slider.js"></script>
	<!-- meanmenu JS
		============================================ -->
	<script src="/admin/js/jquery.meanmenu.js"></script>
	<!-- owl.carousel JS
		============================================ -->
	<script src="/admin/js/owl.carousel.min.js"></script>
	<!-- sticky JS
		============================================ -->
	<script src="/admin/js/jquery.sticky.js"></script>
	<!-- scrollUp JS
		============================================ -->
	<script src="/admin/js/jquery.scrollUp.min.js"></script>
	<!-- mCustomScrollbar JS
		============================================ -->
	<script src="/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/admin/js/scrollbar/mCustomScrollbar-active.js"></script>
	<!-- metisMenu JS
		============================================ -->
	<script src="/admin/js/metisMenu/metisMenu.min.js"></script>
	<script src="/admin/js/metisMenu/metisMenu-active.js"></script>
	<!-- morrisjs JS
		============================================ -->
	<script src="/admin/js/sparkline/jquery.sparkline.min.js"></script>
	<script src="/admin/js/sparkline/jquery.charts-sparkline.js"></script>
	<!-- calendar JS
		============================================ -->
	<script src="/admin/js/calendar/moment.min.js"></script>
	<script src="/admin/js/calendar/fullcalendar.min.js"></script>
	<script src="/admin/js/calendar/fullcalendar-active.js"></script>
	<!-- maskedinput JS
		============================================ -->
	<script src="/admin/js/jquery.maskedinput.min.js"></script>
	<script src="/admin/js/masking-active.js"></script>
	<!-- datepicker JS
		============================================ -->
	<script src="/admin/js/datepicker/jquery-ui.min.js"></script>
	<script src="/admin/js/datepicker/datepicker-active.js"></script>
	<!-- form validate JS
		============================================ -->
	<script src="/admin/js/form-validation/jquery.form.min.js"></script>
	<script src="/admin/js/form-validation/jquery.validate.min.js"></script>
	<script src="/admin/js/form-validation/form-active.js"></script>
	<!-- tab JS
		============================================ -->
	<script src="/admin/js/tab.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="/admin/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="/admin/js/main.js"></script>

</body>

<script>
	$('#itemName').focus();

	// 숫자 입력시 글자 수 제한
	function maxLengthCheck(object) {
		if (object.value.length > object.maxLength) {
			object.value = object.value.slice(0, object.maxLength);
		}
	}

	// 이미지 파일의 형식을 검사하는 함수
	function isImageFile(file) {

		var validImageTypes = [ 'image/jpg', 'image/jpeg', 'image/png',
				'image/gif', 'image/webp' ];
		return validImageTypes.includes(file.type);
	}

	$(document).on(
			'click',
			'#insertBtn',
			function() {

				if ($('#itemName').val().trim() == '') {
					alert('물품 이름을 입력하세요.');
					$('#itemName').val('');
					$('#itemName').focus();
					return;
				}

				if ($('#itemName').val().length < 2) {
					alert('물품 이름은 최소 2자 이상 입력하여야 합니다.');
					$('#itemName').focus();
					return;
				}

				if ($('#itemPrice').val() == '') {
					alert('물품의 가격을 입력하세요.');
					$('#itemPrice').val('');
					$('#itemPrice').focus();
					return;
				}

				if (Number($('#itemPrice').val()) > 100000000
						|| Number($('#itemPrice').val()) < 0) {
					alert('물품 가격의 범위는 0~1억원입니다.');
					$('#itemPrice').val('');
					$('#itemPrice').focus();
					return;
				}

				if ($('#equipmentFile').val().length == 0) {
					alert('물품 사진을 첨부하세요.');
					$('#equipmentFile').focus();
					return;
				}

				var fileInput = $('#equipmentFile')[0];
				console.log(fileInput);
				var file = fileInput.files[0];

				if (!isImageFile(file)) {
					alert('사진은 이미지 파일만 첨부 가능합니다.');
					$('#equipmentFile').focus();
					return;
				}

				$('#insertForm').submit();
			});
</script>

</html>