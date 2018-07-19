<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style type="text/css">
#welcome {
	font-size: 14px;
	padding-top: 10px;
}

</style>

<header>
	<div class="navbar">
		<div id="navbar-header" class="navbar-header">
			<div class="container">

				<!-- ============================================================= LOGO MOBILE ============================================================= -->

				<a class="navbar-brand" href="/farmstory/home.action"><img
					src="/farmstory/resources/assets/images/logo.svg" class="logo"
					alt=""></a>

				<!-- ============================================================= LOGO MOBILE : END ============================================================= -->

				<a class="navbar-toggle btn responsive-menu pull-right"
					data-toggle="collapse" data-target=".navbar-collapse"><i
					class='icon-menu-1'></i></a>
				
				<c:if test="${not empty loginuser }">
					<ul class="pull-right">
						<li><a id="welcome" class="responsive-menu pull-right">
						<i class="icon-user-1"></i>&nbsp;${loginuser.memName}&nbsp;님 환영합니다&nbsp;
						</a></li>
					</ul>
				</c:if>
			</div>
			<!-- /.container -->
		</div>
		<!-- /.navbar-header -->

		<div class="yamm">
			<div class="navbar-collapse collapse">
				<div class="container">

					<!-- ============================================================= LOGO ============================================================= -->

					<a class="navbar-brand" href="/farmstory/home.action"><img
						src="/farmstory/resources/assets/images/logo.svg" class="logo"
						alt=""></a>

					<!-- ============================================================= LOGO : END ============================================================= -->


					<!-- ============================================================= MAIN NAVIGATION ============================================================= -->

					<ul class="nav navbar-nav">

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">팜스토리 소개</a>
							
							<c:if test="${not empty loginuser and loginuser.memType eq 'ADMIN'}">
								<ul class="dropdown-menu">
									<li><a href="#">소개 쓰기</a></li>
									<li><a href="#">소개 수정하기</a></li>
								</ul> <!-- /.dropdown-menu -->
							</c:if>
							
							</li>	
						<!-- /.dropdown -->

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">다이어리</a>

							<ul class="dropdown-menu">
								<li><a href="#">다이어리 쓰기</a></li>
								<li><a href="#">나의 화분 통계 보기</a></li>
							</ul> <!-- /.dropdown-menu --></li>
						<!-- /.dropdown -->

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">식물 정보</a>
							
								<ul class="dropdown-menu">
								
								<c:if test="${not empty loginuser and loginuser.memType eq 'ADMIN'}">
								<li><a href="#">식물 정보 등록 [관리자]</a></li>
								</c:if>
								
								<li><a href="#">내가 키우는 화분</a></li>
							</ul> <!-- /.dropdown-menu --></li>
						<!-- /.dropdown -->

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">고객센터</a>

							<ul class="dropdown-menu">
								<li><a href="#">공지사항</a></li>
								<li><a href="#">문의함</a></li>
							</ul> <!-- /.dropdown-menu --></li>
						<!-- /.dropdown -->

						<c:if test="${not empty loginuser }">
						<li class="dropdown pull-right searchbox"><a href="#"
							data-toggle="modal"
							data-target="#logout">Logout&nbsp;<i class="icon-logout-1"></i></a></li>
						</c:if>
						
						<c:if test="${ empty loginuser }">	
							<li class="dropdown pull-right searchbox"><a href="#"
							data-toggle="modal"
							data-target="#register">Sign Up&nbsp;<i class="icon-user-1"></i></a></li>
							
							<li class="dropdown pull-right searchbox"><a href="#"
							data-toggle="modal"
							data-target="#login">Login&nbsp;<i class="icon-login-1"></i></a></li>
						</c:if>	
					</ul>
					<!-- /.nav -->

					<!-- ============================================================= MAIN NAVIGATION : END ============================================================= -->

				</div>
				<!-- /.container -->
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.yamm -->
	</div>
	<!-- /.navbar -->
</header>
