<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>회원 관리</title>
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
                    <h1 style="color:#2E64FE; margin-top:20px;">본사 페이지</h1> 
                </div>
            </div>
        </div>
        <div class="header-advance-area">
        
            <!---------------------- 상단바 start --------------------->
	        <c:import url="/WEB-INF/view/headoffice/include/topBar.jsp"></c:import>
	        <!---------------------- 상단바 end ----------------------->
            
            <!-- 검색창 start -->
             <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcome-heading">
                                            <form role="search" class="sr-input-func">
                                                <input type="text" placeholder="Search..." class="search-int form-control">
                                                <a href="#"><i class="fa fa-search"></i></a>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <ul class="breadcome-menu">
                                            <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">Professor Profile</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 검색창 end -->
           
        <div class="contacts-area mg-b-15">
            <div class="container-fluid">   
            	<h3>회원 목록</h3>
               	<!--------------------- 회원 list start-------------------------->   		  	  				
	   			    <table class="table table-bordered">
	   			    	<thead>
	   			    		<tr>
	   			    			<th>아이디</th>
	   			    			<th>이름</th>
	   			    			<th>성별</th>
	   			    			<th>휴대폰 번호</th>
	   			    			<th>가입 날짜, 시간</th>
	   			    			<th>가입 여부</th>
	   			    		</tr>
	   			    	</thead>
	   			    	<tbody>
	   			    		<c:forEach var="m" items="${customerList}">
	   			    			<tr>
	   			    				<td>${m.customerId}</td>
	   			    				<td>${m.customerName}</td>
	   			    				<td>${m.customerGender}</td>
	   			    				<td>${m.customerPhone}</td>
	   			    				<td>${m.createdate} ${str}</td>
	   			    				<td>${m.active}</td>
	   			    			</tr>
	   			    		</c:forEach>   
	   			    	</tbody>
	   			    </table>
           		        		
                <!--------------------- 회원 list end-------------------------->      
            </div>         
           		<!--------------------- 페이징 start ----------------------------------->     
            <div style="text-align:center;">       	
	             <ul class="pagination">
	             
             	  <c:if test="${currentPage == 1}">
           			<li class="page-item disabled">
            	  		<a class="page-link">처음</a>  	
            	 	</li>	
          		  </c:if>
          		  <c:if test="${currentPage != 1}">
           			<li class="page-item">           	  	
            	  		<a class="page-link" href="${pageContext.request.contextPath}/headoffice/customer?page=1">처음</a>
            	 	</li>
           		  </c:if>  
					  
					  <c:if test="${prev}">
					  	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/headoffice/customer?page=${startPageNum - 1}">이전</a></li>
					  </c:if>
					  <c:forEach begin="${startPageNum}" end="${endPageNum}" var="pageNum">
					  	<c:if test="${pageNum == currentPage}"> <!-- 페이징 버튼 색 변경o --> 
					  		<li class="page-item active">
						  		<a class="page-link" href="${pageContext.request.contextPath}/headoffice/customer?page=${pageNum}">${pageNum}</a>
						  	</li>
					  	</c:if>
					  	<c:if test="${pageNum != currentPage}"> <!-- 페이징 버튼 색 변경x --> 
					  		<li class="page-item">
						  		<a class="page-link" href="${pageContext.request.contextPath}/headoffice/customer?page=${pageNum}">${pageNum}</a>
						  	</li>
					  	</c:if>
					  </c:forEach>
					  <c:if test="${next}">
					  	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/headoffice/customer?page=${endPageNum + 1}">다음</a></li>
					  </c:if>	  
					  <c:if test="${currentPage == lastPage}">
					  	<li class="page-item disabled">
					  		<a class="page-link">끝</a>
					  	</li>
					  </c:if>
					  <c:if test="${currentPage != lastPage}">
					  	<li class="page-item">
					  		<a class="page-link" href="${pageContext.request.contextPath}/headoffice/customer?page=${lastPage}">끝</a>
					  	</li>
					  </c:if>
				</ul>	  
            </div>
               <!----------------------- 페이징 end ---------------------------->       		    
        </div>
    </div>

    <!-- jquery
		============================================ -->
    <script src="/admin/js/vendor/jquery-1.12.4.min.js"></script>
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

</html>