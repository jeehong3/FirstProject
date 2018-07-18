<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
#callModalLogin, #callModalLogout, #callModalRegister {
	font-size: 14px;
	padding-top: 25px;
}
/* #navbar-header{
	height: 30px;
} */
</style>

<header>
	<div class="navbar">

		<div id="navbar-header" class="navbar-header">
			<div class="container">
<!-- 
			<ul class="info pull-left">
				<li><a href="#"><i class="icon-mail-1 contact"></i>
						info@reen.com</a></li>
				<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
			</ul>
-->
				<!-- /.info -->
<!-- 
			<ul class="social pull-right">
				<li><a href="#"><i class="icon-s-facebook"></i></a></li>
				<li><a href="#"><i class="icon-s-gplus"></i></a></li>
				<li><a href="#"><i class="icon-s-twitter"></i></a></li>
				<li><a href="#"><i class="icon-s-pinterest"></i></a></li>
				<li><a href="#"><i class="icon-s-behance"></i></a></li>
				<li><a href="#"><i class="icon-s-dribbble"></i></a></li>
			</ul>
-->
				<!-- /.social -->

				<!-- ============================================================= LOGO MOBILE ============================================================= -->

				<a class="navbar-brand" href="/farmstory/home.action"><img
					src="/farmstory/resources/assets/images/logo.svg" class="logo"
					alt=""></a>

				<!-- ============================================================= LOGO MOBILE : END ============================================================= -->



				<a class="navbar-toggle btn responsive-menu pull-right"
					data-toggle="collapse" data-target=".navbar-collapse"><i
					class='icon-menu-1'></i></a>

				<ul class="pull-right">
					<li><a id="callModalLogin" class="responsive-menu pull-right"
						data-toggle="modal" data-target="#login">로그인&nbsp;<i
							class="icon-login-1"></i>&nbsp;
					</a></li>
					<li><a id="callModalLogout" class="responsive-menu pull-right"
						data-toggle="modal" data-target="#logout">로그아웃&nbsp;<i
							class="icon-logout-1"></i>&nbsp;
					</a></li>
					<li><a id="callModalRegister"
						class="responsive-menu pull-right" data-toggle="modal"
						data-target="#register">회원가입&nbsp;<i class="icon-user-1"></i></a>
					</li>
				</ul>
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

							<ul class="dropdown-menu">
								<li><a href="#">소개 쓰기</a></li>
								<li><a href="#">소개 수정하기</a></li>
							</ul> <!-- /.dropdown-menu --></li>
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


						<li class="dropdown pull-right searchbox"><a href="#"
							data-toggle="modal"
							data-target="#logout"><i class="icon-logout-1"></i></a></li>
							
							<li class="dropdown pull-right searchbox"><a href="#"
							data-toggle="modal"
							data-target="#register"><i class="icon-user-1"></i></a></li>

						
						<!-- /.dropdown -->

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
