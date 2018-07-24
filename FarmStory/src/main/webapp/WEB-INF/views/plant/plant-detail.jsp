<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="ko">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>팜스토리-식물 정보</title>
		
		<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
		<jsp:include page="/WEB-INF/views/include/style/public-style.jsp"/>
		
	</head>
	
	<body>
		
		<!-- ============================================================= HEADER ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/header/public-header.jsp"/>
		
		<!-- ============================================================= HEADER : END ============================================================= -->
		
		
		<!-- ============================================================= MAIN ============================================================= -->
		
		<main class="notoSansKR">
			
			<!-- ============================================================= SECTION â PORTFOLIO POST ============================================================= -->
			
			<section id="portfolio-post">
				<div class="container inner-top-md">
					<div class="row">
						
						<div class="col-md-8">
							<div id="owl-work" class="owl-carousel owl-inner-pagination owl-inner-nav owl-ui-md">
								
								<div class="item">
									<figure>
										<img src="/farmstory/resources/assets/images/art/work08-lg.jpg" alt="">
									</figure>
								</div><!-- /.item -->
								
								<div class="item">
									<figure>
										<img src="/farmstory/resources/assets/images/art/work08a-lg.jpg" alt="">
									</figure>
								</div><!-- /.item -->
								
								<div class="item">
									<figure>
										<img src="/farmstory/resources/assets/images/art/work08b-lg.jpg" alt="">
									</figure>
								</div><!-- /.item -->
								
								<div class="item">
									<figure>
										<img src="/farmstory/resources/assets/images/art/work08c-lg.jpg" alt="">
									</figure>
								</div><!-- /.item -->
								
								<div class="item">
									<figure>
										<img src="/farmstory/resources/assets/images/art/work08d-lg.jpg" alt="">
									</figure>
								</div><!-- /.item -->
								
							</div><!-- /.owl-carousel -->
						</div><!-- /.col -->
						
						<div class="col-md-4 inner-left-sm">
							<header>
								<h2>Fresh branding for a creative startup</h2>
								<p class="text-small">Magnis modipsae que lib voloratati andigen daepeditem quiate ut reporemni labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu ptatemp dolupta oreprerum.</p>
								<p class="text-small">Conecus iure posae volor remped modis aut accabora incim resto explabo eictemperum quiae sitiorem. Laceaque eictemperum quiae sitiorem rest non restibusaes dem tumquam.</p>
							
								<ul class="item-details inner-top-xs outer-top-xs border-top">
									<li class="date">May 23, 2015</li>
									<li class="categories">Identity, Interactive, Print</li>
									<li class="client">Creative Startup</li>
									<li class="url"><a href="http://demo.fuviz.com/reen">demo.fuviz.com/reen</a></li>
								</ul><!-- /.item-details -->
							</header>
						</div><!-- /.col -->
						
					</div><!-- /.row -->
				</div><!-- /.container -->
				
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
											<a class="panel-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#content">
												<span>More works</span>
											</a>
										</h4>
									</div><!-- /.panel-heading -->
									
									<div id="content" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="portfolio">
												
												<ul class="filter text-center">
													<li><a href="#" data-filter="*" class="active">All</a></li>
													<li><a href="#" data-filter=".identity">Identity</a></li>
													<li><a href="#" data-filter=".interactive">Interactive</a></li>
													<li><a href="#" data-filter=".print">Print</a></li>
													<li><a href="#" data-filter=".photography">Photography</a></li>
												</ul><!-- /.filter -->
												
												<ul class="isotope items col-4">
													
													<li class="item thumb interactive">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Appscreen Dashboard</h4>
																		<p>Interactive</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work01.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Grand Motel</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work02.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Signwall</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work16.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb print">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Modern CD Case</h4>
																		<p>Print</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work18.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Astor & Yancy</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work09.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb photography">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Daydreaming</h4>
																		<p>Photography</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/photograph02.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Brand Stationery</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work08a.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb print">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Tri Fold Brochure</h4>
																		<p>Print</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work10.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb interactive">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Vintage Bicycles</h4>
																		<p>Interactive</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work03.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb print">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Electric Dance Book Cover</h4>
																		<p>Print</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work20.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Embroidered</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work05.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity print">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Brand Stationery</h4>
																		<p>Identity/Print</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work21.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Handmade Wood Gifts</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work17.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb identity">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Designer Brand</h4>
																		<p>Identity</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work19.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb print">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Vinyl Records</h4>
																		<p>Print</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work07.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
													<li class="item thumb interactive">
														<a href="portfolio-post.html">
															<figure>
																<figcaption class="text-overlay">
																	<div class="info">
																		<h4>Elena Website</h4>
																		<p>Interactive</p>
																	</div><!-- /.info -->
																</figcaption>
																<img src="/farmstory/resources/assets/images/art/work22.jpg" alt="">
															</figure>
														</a>
													</li><!-- /.item -->
													
												</ul><!-- /.items -->
												
											</div><!-- /.portfolio -->
										</div><!-- /.panel-body -->
									</div><!-- /.content -->
									
								</div><!-- /.panel -->
							</div><!-- /.accordion -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION â MORE WORKS : END ============================================================= -->
			
			
			<!-- ============================================================= SECTION â SHARE ============================================================= -->
			
			<section id="share" class="light-bg">
				<div class="container">
					
					<div class="col-sm-4 reset-padding">
						<a href="#" class="btn-share-md">
							<p class="name">Facebook</p>
							<i class="icon-s-facebook"></i>
							<p class="counter">1080</p>
						</a>
					</div><!-- /.col -->
					
					<div class="col-sm-4 reset-padding">
						<a href="#" class="btn-share-md">
							<p class="name">Twitter</p>
							<i class="icon-s-twitter"></i>
							<p class="counter">1263</p>
						</a>
					</div><!-- /.col -->
					
					<div class="col-sm-4 reset-padding">
						<a href="#" class="btn-share-md">
							<p class="name">Google +</p>
							<i class="icon-s-gplus"></i>
							<p class="counter">963</p>
						</a>
					</div><!-- /.col -->
					
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION â SHARE : END ============================================================= -->
			
		</main>
		
		<!-- ============================================================= MAIN : END ============================================================= -->
		
		
		<!-- ============================================================= FOOTER ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp"/>
		
		<!-- ============================================================= FOOTER : END ============================================================= -->
		
		<!-- ============================================================= JAVASCRIPT ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp"/>
		
		<!-- ============================================================= JAVASCRIPT : END ============================================================= -->
		
	</body>
</html>