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
		
		<main>
			
			<!-- ============================================================= SECTION â PORTFOLIO ============================================================= -->
		
			<section id="portfolio">
				
				<div class="container inner">
					<div class="row">
						<div class="col-md-8 col-sm-9 center-block text-center">
							<header>
								<h1>3 Columns details grid portfolio</h1>
								<p>Magnis modipsae voloratati andigen daepeditem quiate re porem que aut labor. Laceaque eictemperum quiae sitiorem rest non restibusaes.</p>
							</header>
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
				
				<div class="container inner-bottom">
					<div class="row">
						<div class="col-sm-12 portfolio">
							
							<ul class="filter text-center">
								<li><a href="#" data-filter="*" class="active">All</a></li>
								<li><a href="#" data-filter=".identity">Identity</a></li>
								<li><a href="#" data-filter=".interactive">Interactive</a></li>
								<li><a href="#" data-filter=".print">Print</a></li>
								<li><a href="#" data-filter=".photography">Photography</a></li>
							</ul><!-- /.filter -->
							
							<ul class="isotope items col-3 gap">
							
								<li class="item thumb interactive">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work01.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Appscreen Dashboard</a></h4>
												<p>Interactive</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work02.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Grand Motel</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work16.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Signwall</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb print">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work18.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Modern CD Case</a></h4>
												<p>Print</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work09.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Astor & Yancy</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb photography">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/photograph02.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Daydreaming</a></h4>
												<p>Photography</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work08a.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Brand Stationery</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb print">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work10.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Tri Fold Brochure</a></h4>
												<p>Print</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb interactive">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work03.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Vintage Bicycles</a></h4>
												<p>Interactive</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb print">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work20.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Electric Dance Book Cover</a></h4>
												<p>Print</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work05.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Embroidered</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity print">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work21.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Brand Stationery</a></h4>
												<p>Identity/Print</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work17.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Handmade Wood Gifts</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb identity">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work19.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Designer Brand</a></h4>
												<p>Identity</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							
								<li class="item thumb print">
									<figure>
									
										<div class="icon-overlay icn-link">
											<a href="portfolio-post.html"><img src="assets/images/art/work07.jpg" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="portfolio-post.html">Vinyl Records</a></h4>
												<p>Print</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
								
							</ul><!-- /.items -->
							
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION â PORTFOLIO : END ============================================================= -->
			
			
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