<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="ko">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>REEN</title>

<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />

</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->
	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />
	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->



	<!-- ============================================================= SECTION – CONTACT FORM ============================================================= -->

	<!-- Account - Register Modal : START -->
	<jsp:include page="/WEB-INF/views/include/account/modal-register.jsp" />
	<!-- Account - Register Modal : END   -->

	<!-- Account - Login Modal : START -->
	<jsp:include page="/WEB-INF/views/include/account/modal-login.jsp" />
	<!-- Account - Login Modal : END   -->

	<!-- Account - Logout Modal : START -->
	<jsp:include page="/WEB-INF/views/include/account/modal-logout.jsp" />
	<!-- Account - Logout Modal : END   -->

	<main class="js-reveal">

	<section id="contact-form">
		<div class="container inner">

			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						<h1>제품 등록하기</h1>
					</header>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-sm-12">
					<div class="row">

						<div class="col-sm-6 outer-top-md inner-right-sm">

							<h2>상세내용을 등록하세요</h2>

							<form id="plantRegistform" class="forms" action="plant_regist.action"
								method="post">
							
							<%-- 	<input type="hidden" name="plaNo" class="form-control"
												value="${plant.plaNo}" > --%>

								<div class="row">
									<div class="col-sm-4">
										<input type="text" name="memId" class="form-control"
											value="${loginuser.memId}" readonly>
									</div>
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="col-sm-10">
										<input type="text" name="regPotNo" class="form-control"
											placeholder="제품번호를 등록해주세요" required>
									</div>
								</div>
								<!-- /.row -->

								<button type="submit" class="btn btn-default btn-submit"
								href="/farmstory/plant/plant_regist.action">
								등록하기
								</button>

							</form>

							<div id="response"></div>

						</div>
						<!-- ./col -->

						<div class="col-sm-6 outer-top-md inner-left-sm border-left">

							<h2>Contacts</h2>
							<p>Magnis modipsae voloratati andigen daepeditem quiate re
								aut labor. Laceaque eictemperum quiae sitiorem rest non
								restibusaes.</p>

							<h3>REEN</h3>
							<ul class="contacts">
								<li><i class="icon-location contact"></i> 84 Street, City,
									State 24813</li>
								<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
								<li><a href="mailto:info@reen.com"><i
										class="icon-mail-1 contact"></i> info@reen.com</a></li>
							</ul>
							<!-- /.contacts -->

							<div class="social-network">
								<h3>Social</h3>
								<ul class="social">
									<li><a href="#"><i class="icon-s-facebook"></i></a></li>
									<li><a href="#"><i class="icon-s-gplus"></i></a></li>
									<li><a href="#"><i class="icon-s-twitter"></i></a></li>
									<li><a href="#"><i class="icon-s-pinterest"></i></a></li>
									<li><a href="#"><i class="icon-s-behance"></i></a></li>
									<li><a href="#"><i class="icon-s-dribbble"></i></a></li>
								</ul>
								<!-- /.social -->
							</div>
							<!-- /.social-network -->

						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</section>
	</main>
	<!-- ============================================================= SECTION – CONTACT FORM : END ============================================================= -->



	<!-- ============================================================= MAIN : END ============================================================= -->


	<!-- ============================================================= FOOTER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />

	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->

	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />

	<!-- For demo purposes – can be removed on production : End -->
</body>
</html>