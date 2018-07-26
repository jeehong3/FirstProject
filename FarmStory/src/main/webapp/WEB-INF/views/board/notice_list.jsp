<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<title>운영게시판</title>

<!-- Core CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">

<!-- AddOn/Plugin CSS -->
<link href="assets/css/green.css" rel="stylesheet" title="Color">
<link href="assets/css/owl.carousel.css" rel="stylesheet">
<link href="assets/css/owl.transitions.css" rel="stylesheet">
<link href="assets/css/animate.min.css" rel="stylesheet">
<link href="assets/css/aos.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="assets/css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link href="http://fonts.googleapis.com/css?family=Lato:400,900,300,700"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,400italic,700italic"
	rel="stylesheet">

<!-- Icons/Glyphs -->
<link href="assets/fonts/fontello.css" rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('button[id^=noticeDelete]').on(
				'click',
				function(event) {
					event.preventDefault();
					var noticeNo = $(this).attr('data-noticeNo')
					$('#noticeModal a#processNotice').attr(
							'href',
							'/farmstory/notice_delete.action?noticeNo='
									+ noticeNo);
					$('#noticeModal').modal('show');

				});

	});
</script>
</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />
	<jsp:include page="/WEB-INF/views/include/style/public-style.jsp"/>
	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->

	<main> <!-- ============================================================= SECTION – MAP ============================================================= -->

	<section class="recentActivitySection">
		<div class="container">

			<div class="row">
				<div class="col-xs-12 ">
					<div class="recentActivityContent bg-ash">

						<div class="dashboardPageTitle">

							<h2>공지사항</h2>
						</div>
						<br>
						<div class="table-responsive" data-pattern="priority-columns">
							<table class="table listingsTable">
								<tr class="rowItem">
									<td align="center"><b>게시자</b></td>
									<td align="center"><b>제목</b></td>
									<td align="center"><b>날짜</b></td>
									<c:if
										test="${not empty loginuser and loginuser.memType eq 'ADMIN'}">
										<td align="center"><b>삭제</b></td>
									</c:if>
								</tr>

								<c:forEach var="notice" items="${ notice }">
									<tr class="rowItem">
										<td class="dateTd" align="center">${notice.memberId}</td>

										<td class="packageTd">
											<ul class="list-inline listingsInfo">
												<li>
													<h4>
														<a id="search-content" href="#" data-toggle="collapse"
															data-target="#contentSearch${notice.noticeNo}">${notice.noticeTitle}</a>
													</h4> <%
 	pageContext.setAttribute("newLineChar", "\n");
 %>
													<h4 id="contentSearch${notice.noticeNo}" class="collapse">${fn:replace(notice.noticeContent, newLineChar, "<br/>")}</h4>
												</li>
											</ul>
										</td>

										<td class="bookingTd">
											<ul class="list-inline listingsInfo text-left">
												<li><fmt:formatDate value="${ notice.noticeDate }"
														var="noticeDate" pattern="yyyy-MM-dd" />
													<h4 style="margin-left: 110px; font-size: 17px">${noticeDate}</h4>
												</li>
											</ul>
										</td>
										<c:if
											test="${not empty loginuser and loginuser.memType eq 'ADMIN'}">
											<td class="bookingTd">
												<ul class="list-inline listingsInfo text-left">
													<li>
														<button id="noticeDelete${notice.noticeNo}"
															style="margin-left: 100px;"
															data-noticeNo="${notice.noticeNo}">처리</button>
													</li>
												</ul>
											</td>
										</c:if>
									</tr>
								</c:forEach>
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>

	<c:forEach var="notice" items="${ notice }">
		<div class="modal fade bookingModal modalBook" id="noticeModal"
			tabindex="-1">
			<div class="modal-dialog" align="center">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">처리하시겠습니까?</h4>
					</div>
					<div class="modal-body">
						<a id="processNotice" class="btn buttonCustomPrimary"
							href="/farmstory/notice_delete.action?noticeNo=${ notice.noticeNo }">처리완료</a>
					</div>
				</div>
			</div>
		</div>
	</c:forEach> <!-- ============================================================= SECTION – MAP : END ============================================================= -->


	<!-- ============================================================= SECTION – HERO ============================================================= -->

	<section id="hero" class="dark-bg img-bg img-bg-soft"
		style="background-image: url(assets/images/art/slider02.jpg);">
		<div class="container inner-top-md inner-bottom-sm">
			<div class="row">

				<div class="col-md-8 inner-right inner-bottom-xs">
					<header>
						<h1>Get in touch</h1>
						<p>Do you want to know more? We’d love to hear from you!</p>
					</header>
				</div>
				<!-- /.col -->

				<div class="col-md-4">
					<h3 style="margin-top: 8px;">REEN</h3>
					<ul class="contacts">
						<li><i class="icon-location contact"></i> 84 Street, City,
							State 24813</li>
						<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
						<li><a href="mailto:info@reen.com"><i
								class="icon-mail-1 contact"></i> info@reen.com</a></li>
					</ul>
					<!-- /.contacts -->
				</div>
				<!-- /.col -->

			</div>
			<!-- ./row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION – HERO : END ============================================================= -->

	<div class="container inner">
		<div class="row">

			<div class="col-md-8 inner-right inner-bottom-md">

				<!-- ============================================================= SECTION – CONTACT FORM ============================================================= -->

				<section id="contact-form">

					<h2>Leave a Message</h2>

					<form id="contactform" class="forms" action="contact.php"
						method="post">

						<div class="row">
							<div class="col-sm-6">
								<input type="text" name="name" class="form-control"
									placeholder="Name (Required)">
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<div class="row">
							<div class="col-sm-6">
								<input type="email" name="email" class="form-control"
									placeholder="Email (Required)">
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<div class="row">
							<div class="col-sm-6">
								<input type="text" name="subject" class="form-control"
									placeholder="Subject">
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<div class="row">
							<div class="col-sm-12">
								<textarea name="message" class="form-control"
									placeholder="Enter your message ..."></textarea>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<button type="submit" class="btn btn-default btn-submit">Submit
							message</button>

					</form>

					<div id="response"></div>

				</section>

				<!-- ============================================================= SECTION – CONTACT FORM : END ============================================================= -->

			</div>
			<!-- ./col -->

			<div class="col-md-4">

				<!-- ============================================================= SECTION – CONTACT NAMES ============================================================= -->

				<section id="contact-names"
					class="light-bg inner-xs inner-left-xs inner-right-xs">

					<h3 class="team-headline sidelines text-center">
						<span>Contact names</span>
					</h3>

					<div class="row thumbs gap-md text-center">

						<div class="col-sm-6 thumb">
							<figure class="member">

								<div class="member-image">

									<div class="text-overlay">
										<div class="info">
											<ul class="social">
												<li><a href="#"><i class="icon-s-facebook"></i></a></li>
												<li><a href="#"><i class="icon-s-gplus"></i></a></li>
												<li><a href="#"><i class="icon-s-twitter"></i></a></li>
											</ul>
											<!-- /.social -->
										</div>
										<!-- /.info -->
									</div>
									<!-- /.text-overlay -->

									<img src="assets/images/art/human03.jpg">

								</div>
								<!-- /.member-image -->

								<figcaption class="member-details bordered no-top-border">
									<h3>
										Chris Cavill <span>Creative Director</span>
									</h3>
								</figcaption>

							</figure>
						</div>
						<!-- /.col -->

						<div class="col-sm-6 thumb">
							<figure class="member">

								<div class="member-image">

									<div class="text-overlay">
										<div class="info">
											<ul class="social">
												<li><a href="#"><i class="icon-s-facebook"></i></a></li>
												<li><a href="#"><i class="icon-s-gplus"></i></a></li>
												<li><a href="#"><i class="icon-s-twitter"></i></a></li>
											</ul>
											<!-- /.social -->
										</div>
										<!-- /.info -->
									</div>
									<!-- /.text-overlay -->

									<img src="assets/images/art/human01.jpg">

								</div>
								<!-- /.member-image -->

								<figcaption class="member-details bordered no-top-border">
									<h3>
										Amber Jones <span>Marketing Director</span>
									</h3>
								</figcaption>

							</figure>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->

					<div class="row thumbs gap-md text-center">

						<div class="col-sm-6 thumb last-bottom">
							<figure class="member">

								<div class="member-image">

									<div class="text-overlay">
										<div class="info">
											<ul class="social">
												<li><a href="#"><i class="icon-s-facebook"></i></a></li>
												<li><a href="#"><i class="icon-s-gplus"></i></a></li>
												<li><a href="#"><i class="icon-s-twitter"></i></a></li>
											</ul>
											<!-- /.social -->
										</div>
										<!-- /.info -->
									</div>
									<!-- /.text-overlay -->

									<img src="assets/images/art/human05.jpg">

								</div>
								<!-- /.member-image -->

								<figcaption class="member-details bordered no-top-border">
									<h3>
										Sophie Adams <span>Technical Director</span>
									</h3>
								</figcaption>

							</figure>
						</div>
						<!-- /.col -->

						<div class="col-sm-6 thumb last-bottom">
							<figure class="member">

								<div class="member-image">

									<div class="text-overlay">
										<div class="info">
											<ul class="social">
												<li><a href="#"><i class="icon-s-facebook"></i></a></li>
												<li><a href="#"><i class="icon-s-gplus"></i></a></li>
												<li><a href="#"><i class="icon-s-twitter"></i></a></li>
											</ul>
											<!-- /.social -->
										</div>
										<!-- /.info -->
									</div>
									<!-- /.text-overlay -->

									<img src="assets/images/art/human04.jpg">

								</div>
								<!-- /.member-image -->

								<figcaption class="member-details bordered no-top-border">
									<h3>
										Toby Evans <span>Senior Designer</span>
									</h3>
								</figcaption>

							</figure>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->

				</section>

				<!-- ============================================================= SECTION – CONTACT NAMES : END ============================================================= -->

			</div>
			<!-- /.col -->

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </main>

	<!-- ============================================================= MAIN : END ============================================================= -->


	<!-- ============================================================= FOOTER ============================================================= -->
	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />
<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp"/>
	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->




	<!-- For demo purposes – can be removed on production -->



	<script>
		$(document).ready(function() {
			$(".changecolor").switchstylesheet({
				seperator : "color"
			});
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->
</body>
</html>