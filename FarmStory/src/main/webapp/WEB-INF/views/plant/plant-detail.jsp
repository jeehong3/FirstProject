<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<!-- Meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>FARM STORY - Plant</title>

<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />

</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />

	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->

	<main> <!-- ============================================================= SECTION â PORTFOLIO POST ============================================================= -->

	<section id="portfolio-post">
		<div class="container inner-top-md">
			<div class="row">
				<div class="col-md-8">
					<div id="owl-work"
						class="owl-carousel owl-inner-pagination owl-inner-nav owl-ui-md">
						<c:forEach var="plantImages" items="${ plantInfosImages }">
							<div class="item">
								<figure>
									<img
										src="/farmstory/resources/upload-image/plant-info/${ plantImages.pliImg }"
										alt="">
								</figure>
							</div>
							<!-- /.item -->
						</c:forEach>
					</div>
					<!-- /.owl-carousel -->
				</div>
				<!-- /.col -->

				<div class="col-md-4 inner-left-sm">
					<header>
						<h2>${ plant.plaName }</h2>
						<p class="text-small">${ plant.plaContent }</p>

						<ul class="item-details inner-top-xs outer-top-xs border-top">
							<li class="date">생육 적정 온도 : 최소 ${ plant.plaMinTem } ~ 최대 ${ plant.plaMaxTem }</li>
							<li class="categories">생육 적정 습도 : 최소 ${ plant.plaMinHum } ~
								최대 ${ plant.plaMaxHum }</li>
							<li class="client">생육 적정 조도 : 최소 ${ plant.plaMinLux } ~ 최대
								${ plant.plaMaxLux }</li>
							<li class="url"><a href="http://demo.fuviz.com/reen">demo.fuviz.com/reen</a></li>
						</ul>
						<!-- /.item-details -->
					</header>
				</div>
				<!-- /.col -->
				<c:if test="${ not empty loginuser and loginuser.memType eq 'ADMIN' }">
					<div align="center">
						<a id="modifyInfoBtn" class="btn">수정하기</a>
						<a class="btn" data-toggle="modal" data-target="#deleteConfirm">삭제하기</a>
					</div>
					<style>
						#modal-dialog-delete{
							width: 350px;
							height: 240px;
						}
					</style>
					<div id="deleteConfirm" class="modal fade" role="dialog">
						<div id="modal-dialog-delete" class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">
										&nbsp;<i class="icon-login-1"></i>&nbsp;확인 메시지
									</h4>
								</div>
								<div class="modal-body" align="center">
									<h4>[ ${plant.plaName} ]<br>정보를 삭제하시겠습니까?</h4>
								</div>
								<div class="modal-footer">
									<a id="deleteInfoBtn" class="btn deleteConfirm" data-dismiss="modal"
										aria-hidden="true">삭제</a>
									<a class="btn deleteConfirm" data-dismiss="modal"
										aria-hidden="true">취소</a>
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->

	</section>

	<!-- ============================================================= SECTION â PORTFOLIO POST : END ============================================================= -->


	<!-- ============================================================= SECTION â MORE WORKS ============================================================= -->

	<section id="more-works">
		<div class="container inner-top-sm inner-bottom">
			<div class="row">
				<div class="col-sm-12">
					<div id="accordion" class="panel-group blank">
						<div class="panel panel-default">

							<div class="panel-heading text-center">
								<h4 class="panel-title">
									<a class="panel-toggle collapsed" data-toggle="collapse"
										data-parent="#accordion" href="#content"> <span>More
											works</span>
									</a>
								</h4>
							</div>
							<!-- /.panel-heading -->

							<div id="content" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="portfolio">

										<ul class="filter text-center">
											<li><a href="#" data-filter="*" class="active">전체</a></li>
											<li><a href="#" data-filter=".꽃">꽃</a></li>
											<li><a href="#" data-filter=".관엽식물">관엽 식물</a></li>
											<li><a href="#" data-filter=".활엽식물">활엽 식물</a></li>
											<li><a href="#" data-filter=".란">란</a></li>
										</ul>
										<!-- /.filter -->

										<ul class="isotope items col-4">
											<c:forEach var="plantInfos" items="${ plantInfos }">
												<li class="item thumb ${ plantInfos.plaType }"><a
													href="portfolio-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>${ plantInfos.plaName }</h4>
																	<p>${ plantInfos.plaType }</p>
																</div>
																<!-- /.info -->
															</figcaption>
															<img
																src="/farmstory/resources/upload-image/plant-info/${ plantInfos.pliImg }"
																alt="">
														</figure>
												</a></li>
												<!-- /.item -->
											</c:forEach>


										</ul>
										<!-- /.items -->

									</div>
									<!-- /.portfolio -->
								</div>
								<!-- /.panel-body -->
							</div>
							<!-- /.content -->

						</div>
						<!-- /.panel -->
					</div>
					<!-- /.accordion -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION â MORE WORKS : END ============================================================= -->


	<!-- ============================================================= SECTION â SHARE ============================================================= -->

	<section id="share" class="light-bg">
		<div class="container">

			<div class="col-sm-4 reset-padding">
				<a href="#" class="btn-share-md">
					<p class="name">Facebook</p> <i class="icon-s-facebook"></i>
					<p class="counter">1080</p>
				</a>
			</div>
			<!-- /.col -->

			<div class="col-sm-4 reset-padding">
				<a href="#" class="btn-share-md">
					<p class="name">Twitter</p> <i class="icon-s-twitter"></i>
					<p class="counter">1263</p>
				</a>
			</div>
			<!-- /.col -->

			<div class="col-sm-4 reset-padding">
				<a href="#" class="btn-share-md">
					<p class="name">Google +</p> <i class="icon-s-gplus"></i>
					<p class="counter">963</p>
				</a>
			</div>
			<!-- /.col -->

		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION â SHARE : END ============================================================= -->

	</main>

	<!-- ============================================================= MAIN : END ============================================================= -->


	<!-- ============================================================= FOOTER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />

	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- ============================================================= JAVASCRIPT ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />

	<jsp:include page="/WEB-INF/views/plant/js/plant-jstl-js.jsp" />

	<!-- ============================================================= JAVASCRIPT : END ============================================================= -->

</body>
</html>