<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>REEN</title>

<!-- Core CSS -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />

<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->
	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />

	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->

	<main> <!-- ============================================================= SECTION – POPULAR POSTS ============================================================= -->

	<section id="popular-posts" class="light-bg">
		<div class="container inner-top-md">
			<div class="row">
				<div class="col-sm-12">
					<div id="accordion" class="panel-group">
						<div class="panel panel-default">

							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="panel-toggle" data-toggle="collapse"
										data-parent="#accordion" href="#content"> <span>Popular
											posts</span>
									</a>
								</h4>
							</div>
							<!-- /.panel-heading -->

							<div id="content" class="panel-collapse collapse in">
								<div class="panel-body">
									<div id="owl-popular-posts"
										class="owl-carousel owl-item-gap-sm">
										<c:forEach var="diaryAllImg" items="${ diaryAllImg }">
											<div class="item">
												<a href="/farmstory/diary_detail.action?diaNo=${ diaryAllImg.diaNo }">
													<figure>
														<figcaption class="text-overlay">
															<div class="info">
																<h4>Vintage Bicycles</h4>
																<p>Interactive</p>
															</div>
															<!-- /.info -->
														</figcaption>
														<img
															src="/farmstory/resources/upload-image/diary-info/${diaryAllImg.diiImg}"
															alt="">
													</figure>
												</a>
											</div>
											<!-- /.item -->
										</c:forEach>
									</div>
									<!-- /.owl-carousel -->
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

	<!-- ============================================================= SECTION – POPULAR POSTS : END ============================================================= -->


	<!-- ============================================================= SECTION – BLOG ============================================================= -->

	<section id="blog" class="light-bg">
		<div
			class="container inner-top-sm inner-bottom classic-blog no-sidebar">

			<div class="row inner-bottom-xs">
				<div class="col-sm-12">
					<ul class="format-filter text-center">
						<li><a class="active" href="#" data-filter="*" title="All"
							data-rel="tooltip" data-placement="top"><i class="icon-th"></i></a></li>
						<li><a href="#" data-filter=".format-standard"
							title="Standard" data-rel="tooltip" data-placement="top"><i
								class="icon-edit"></i></a></li>
						<li><a href="#" data-filter=".format-image" title="Image"
							data-rel="tooltip" data-placement="top"><i
								class="icon-picture-1"></i></a></li>
						<li><a href="#" data-filter=".format-gallery" title="Gallery"
							data-rel="tooltip" data-placement="top"><i
								class="icon-picture"></i></a></li>
						<li><a href="#" data-filter=".format-video" title="Video"
							data-rel="tooltip" data-placement="top"><i
								class="icon-video-1"></i></a></li>
						<li><a href="#" data-filter=".format-audio" title="Audio"
							data-rel="tooltip" data-placement="top"><i
								class="icon-music-1"></i></a></li>
						<li><a href="#" data-filter=".format-quote" title="Quote"
							data-rel="tooltip" data-placement="top"><i class="icon-quote"></i></a></li>
						<li><a href="#" data-filter=".format-link" title="Link"
							data-rel="tooltip" data-placement="top"><i class="icon-popup"></i></a></li>
					</ul>
					<!-- /.format-filter -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-md-9 center-block">

					<div class="posts sidemeta">

						<div class="post format-gallery">

							<div class="date-wrapper">
								<div class="date">
									<span class="day">${ diary.diaDate }</span>
									<!-- <span class="month">May</span> -->
								</div>
								<!-- /.date -->
							</div>
							<!-- /.date-wrapper -->

							<div class="format-wrapper">
								<a href="#" data-filter=".format-gallery"><i
									class="icon-picture"></i></a>
							</div>
							<!-- /.format-wrapper -->

							<div class="post-content">

								<div id="owl-work"
									class="owl-carousel owl-inner-pagination owl-inner-nav post-media">
									<c:forEach var="diaryImg" items="${ diaryImg }">
										<div class="item">
											<figure>
												<img
													src="/farmstory/resources/upload-image/diary-info/${diaryImg.diiImg}"
													alt="">
											</figure>
										</div>
										<!-- /.item -->
									</c:forEach>
								</div>
								<!-- /.owl-carousel -->

								<h2 class="post-title">
									<a href="blog-post.html">${ diary.diaTitle }</a>
								</h2>

								<ul class="meta">
									<li class="categories"><a href="#">Identity</a>, <a
										href="#">Graphic Design</a></li>
									<li class="comments"><a href="#">24</a></li>
									<li class="likes"><a href="#">73</a></li>
								</ul>
								<!-- /.meta -->

								<p>${ diary.diaContent }</p>

							</div>
							<!-- /.post-content -->
						</div>
						<!-- /.post -->

					</div>
					<!-- /.posts -->
					<br>
					<br>
					<div align="center">
						<button id="updateButton" class="btn btn-submit">수정하기</button>
						&nbsp;&nbsp;&nbsp; <a id="deleteButton" class="btn btn-submit">삭제하기</a>
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->


		<div id="deleteModal" class="modal fade" role="dialog">
			<div id="modal-dialog-logout" class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" align="center">
						<h4>${loginuser.memName}&nbsp;님&nbsp;<br>삭제 하시겠습니까?
						</h4>
					</div>
					<div class="modal-footer">
						<a href="/farmstory/diary_delete.action?diaNo=${ diary.diaNo }" class="btn">확인</a>&nbsp;&nbsp;&nbsp;
						<a class="btn" data-dismiss="modal" aria-hidden="true">취소</a>
					</div>
				</div>
			</div>
		</div>
		
		<div id="updateModal" class="modal fade" role="dialog">
			<div id="modal-dialog-logout" class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" align="center">
						<h4>${loginuser.memName}&nbsp;님&nbsp;<br>수정 하시겠습니까?
						</h4>
					</div>
					<div class="modal-footer">
						<a href="/farmstory/diary_update.action?diaNo=${ diary.diaNo }" class="btn">확인</a>&nbsp;&nbsp;&nbsp;
						<a class="btn" data-dismiss="modal" aria-hidden="true">취소</a>
					</div>
				</div>
			</div>
		</div>


	</section>

	<!-- ============================================================= SECTION – BLOG : END ============================================================= -->

	</main>

	<!-- ============================================================= MAIN : END ============================================================= -->


	<!-- ============================================================= FOOTER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />

	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />
	<script type="text/javascript">
	$(function() {
		$('#deleteButton').on(
				'click',
				function(event) {
					event.preventDefault();
					$('#deleteModal').modal('show');
					
				});
		
		$('#updateButton').on(
				'click',
				function(event) {
					event.preventDefault();
					$('#updateModal').modal('show');
					
				});
	});
</script>
	<!-- For demo purposes – can be removed on production : End -->
</body>
</html>