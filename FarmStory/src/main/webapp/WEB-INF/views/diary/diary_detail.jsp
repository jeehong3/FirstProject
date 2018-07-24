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
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>REEN</title>
		
		<!-- Core CSS -->
		<jsp:include page="/WEB-INF/views/include/style/public-style.jsp"/>
		
		<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	
	<body>
		
		<!-- ============================================================= HEADER ============================================================= -->
		<jsp:include page="/WEB-INF/views/include/header/public-header.jsp"/>
		
		<!-- ============================================================= HEADER : END ============================================================= -->
		
		
		<!-- ============================================================= MAIN ============================================================= -->
		
		<main>
			
			<!-- ============================================================= SECTION – POPULAR POSTS ============================================================= -->
			
			<section id="popular-posts" class="light-bg">
				<div class="container inner-top-md">
					<div class="row">
						<div class="col-sm-12">
							<div id="accordion" class="panel-group">
								<div class="panel panel-default">			  
									
									<div class="panel-heading">
										<h4 class="panel-title">
											<a class="panel-toggle" data-toggle="collapse" data-parent="#accordion" href="#content">
												<span>Popular posts</span>
											</a>
										</h4>
									</div><!-- /.panel-heading -->
									
									<div id="content" class="panel-collapse collapse in">
										<div class="panel-body">
											<div id="owl-popular-posts" class="owl-carousel owl-item-gap-sm">
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Vintage Bicycles</h4>
																	<p>Interactive</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work03.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Simpli Nota</h4>
																	<p>Identity</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work04.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Vinyl Records</h4>
																	<p>Identity</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work07.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Astor & Yancy</h4>
																	<p>Identity</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work09.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Signwall</h4>
																	<p>Identity</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work16.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Tri Fold Brochure</h4>
																	<p>Print</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work10.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Embroidered</h4>
																	<p>Identity</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work05a.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>El Corcho</h4>
																	<p>Identity</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="assets/images/art/work12.jpg" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												
											</div><!-- /.owl-carousel -->
										</div><!-- /.panel-body -->
									</div><!-- /.content -->
									
								</div><!-- /.panel -->
							</div><!-- /.accordion -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION – POPULAR POSTS : END ============================================================= -->
			
			
			<!-- ============================================================= SECTION – BLOG ============================================================= -->
			
			<section id="blog" class="light-bg">
				<div class="container inner-top-sm inner-bottom classic-blog no-sidebar">
					
					<div class="row inner-bottom-xs">
						<div class="col-sm-12">	
							<ul class="format-filter text-center">
								<li><a class="active" href="#" data-filter="*" title="All" data-rel="tooltip" data-placement="top"><i class="icon-th"></i></a></li>
								<li><a href="#" data-filter=".format-standard" title="Standard" data-rel="tooltip" data-placement="top"><i class="icon-edit"></i></a></li>
								<li><a href="#" data-filter=".format-image" title="Image" data-rel="tooltip" data-placement="top"><i class="icon-picture-1"></i></a></li>
								<li><a href="#" data-filter=".format-gallery" title="Gallery" data-rel="tooltip" data-placement="top"><i class="icon-picture"></i></a></li>
								<li><a href="#" data-filter=".format-video" title="Video" data-rel="tooltip" data-placement="top"><i class="icon-video-1"></i></a></li>
								<li><a href="#" data-filter=".format-audio" title="Audio" data-rel="tooltip" data-placement="top"><i class="icon-music-1"></i></a></li>
								<li><a href="#" data-filter=".format-quote" title="Quote" data-rel="tooltip" data-placement="top"><i class="icon-quote"></i></a></li>
								<li><a href="#" data-filter=".format-link" title="Link" data-rel="tooltip" data-placement="top"><i class="icon-popup"></i></a></li>
							</ul><!-- /.format-filter -->
						</div><!-- /.col -->
					</div><!-- /.row -->
					
					<div class="row">
						<div class="col-md-9 center-block">
							
							<div class="posts sidemeta">
								
								<div class="post format-gallery">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">23</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-gallery"><i class="icon-picture"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										
										<div id="owl-work" class="owl-carousel owl-inner-pagination owl-inner-nav post-media">
											
											<div class="item">
												<figure>
													<img src="assets/images/art/work06-lg.jpg" alt="">
												</figure>
											</div><!-- /.item -->
											
											<div class="item">
												<figure>
													<img src="assets/images/art/work02-lg.jpg" alt="">
												</figure>
											</div><!-- /.item -->
											
											<div class="item">
												<figure>
													<img src="assets/images/art/work08a-lg.jpg" alt="">
												</figure>
											</div><!-- /.item -->
											
											<div class="item">
												<figure>
													<img src="assets/images/art/work09-lg.jpg" alt="">
												</figure>
											</div><!-- /.item -->
											
											<div class="item">
												<figure>
													<img src="assets/images/art/work16-lg.jpg" alt="">
												</figure>
											</div><!-- /.item -->
											
										</div><!-- /.owl-carousel -->
										
										<h2 class="post-title">
											<a href="blog-post.html">Learn how to successfully design brand identities</a>
										</h2>
										
										<ul class="meta">
											<li class="categories"><a href="#">Identity</a>, <a href="#">Graphic Design</a></li>
											<li class="comments"><a href="#">24</a></li>
											<li class="likes"><a href="#">73</a></li>
										</ul><!-- /.meta -->
										
										<p>Magnis modipsae que lib voloratati andigen daepeditem quiate ut repore autem labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu oreprerum.</p>
										
										<a href="blog-post.html" class="btn">Read more</a>
										
									</div><!-- /.post-content --> 
									
								</div><!-- /.post -->
								
								<div class="post format-quote">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">21</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-quote"><i class="icon-quote"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										<blockquote>
											<p>Been putting off creating my portfolio for several years, then I found REEN and about 30 minutes later ... I have an awesome looking portfolio. Totally love it – keep up the good work!</p>
											<footer><cite>Bill Jobs</cite></footer>
										</blockquote>
									</div><!-- /.post-content --> 
									
								</div><!-- /.post -->
								
								<div class="post format-standard">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">14</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-standard"><i class="icon-edit"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										
										<h2 class="post-title">
											<a href="blog-post.html">The ultimate guide for designers to start freelancing</a>
										</h2>
										
										<ul class="meta">
											<li class="categories"><a href="#">Business</a></li>
											<li class="comments"><a href="#">14</a></li>
											<li class="likes"><a href="#">30</a></li>
										</ul><!-- /.meta -->
										
										<p>Magnis modipsae que lib voloratati andigen daepeditem quiate ut repore autem labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu oreprerum.</p>
										
										<a href="blog-post.html" class="btn">Read more</a>
										
									</div><!-- /.post-content --> 
									
								</div><!-- /.post -->
								
								<div class="post format-image">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">10</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-image"><i class="icon-picture-1"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										
										<figure class="icon-overlay icn-link post-media">
											<a href="blog-post.html"><img src="assets/images/art/photograph04-lg.jpg" alt=""></a>
										</figure><!-- /.post-media -->
										
										<h2 class="post-title">
											<a href="blog-post.html">The girl and the summerlight</a>
										</h2>
										
										<ul class="meta">
											<li class="categories"><a href="#">Photography</a></li>
											<li class="comments"><a href="#">63</a></li>
											<li class="likes"><a href="#">114</a></li>
										</ul><!-- /.meta -->
										
										<p>Magnis modipsae que lib voloratati andigen daepeditem quiate ut repore autem labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu oreprerum.</p>
										
										<a href="blog-post.html" class="btn">Read more</a>
										
									</div><!-- /.post-content --> 
									
								</div><!-- /.post -->
								
								<div class="post format-video">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">07</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-video"><i class="icon-video-1"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										
										<div class="video-container post-media">
											<iframe src="http://player.vimeo.com/video/65468064?title=0&amp;byline=0&amp;color=1abb9c" width="750" height="422" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
										</div><!-- /.post-media -->
										
										<h2 class="post-title">
											<a href="blog-post.html">Pure geometry in motion</a>
										</h2>
										
										<ul class="meta">
											<li class="categories"><a href="#">Motion&nbsp;Graphics</a></li>
											<li class="comments"><a href="#">25</a></li>
											<li class="likes"><a href="#">84</a></li>
										</ul><!-- /.meta -->
										
										<p>Magnis modipsae que lib voloratati andigen daepeditem quiate ut repore autem labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu oreprerum.</p>
										
										<a href="blog-post.html" class="btn">Read more</a>
										
									</div><!-- /.post-content --> 
									
								</div><!-- /.post -->
								
								<div class="post format-audio">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">05</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-audio"><i class="icon-music-1"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										
										<div class="post-media">
											<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/14132147&amp;color=1abb9c&amp;auto_play=false&amp;hide_related=false&amp;show_artwork=true"></iframe>
										</div><!-- /.post-media -->
										
										<h2 class="post-title">
											<a href="blog-post.html">Music and design workflow</a>
										</h2>
										
										<ul class="meta">
											<li class="categories"><a href="#">Audio</a></li>
											<li class="comments"><a href="#">14</a></li>
											<li class="likes"><a href="#">48</a></li>
										</ul><!-- /.meta -->
										
										<p>Magnis modipsae que lib voloratati andigen daepeditem quiate ut repore autem labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor. Doloreiur qui commolu oreprerum.</p>
										
										<a href="blog-post.html" class="btn">Read more</a>
										
									</div><!-- /.post-content --> 
									
								</div><!-- /.post -->
								
								<div class="post format-link">
									
									<div class="date-wrapper">
										<div class="date">
											<span class="day">01</span>
											<span class="month">May</span>
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									
									<div class="format-wrapper">
										<a href="#" data-filter=".format-link"><i class="icon-popup"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
										<h2 class="post-title">
											<a href="http://www.wrapbootstrap.com" target="_blank">Super-Awesome Bootstrap Website Templates</a>
										</h2>
										<a href="http://www.wrapbootstrap.com" target="_blank">www.wrapbootstrap.com</a>
									</div><!-- /.post-content --> 
									
								</div><!-- /.post --> 
								
							</div><!-- /.posts -->
							
							<ul class="pagination">
								<li><a href="#">Prev</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">Next</a></li>
							</ul><!-- /.pagination --> 
							
						</div><!-- /.col -->
					</div><!-- /.row -->
					
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION – BLOG : END ============================================================= -->
			
		</main>
		
		<!-- ============================================================= MAIN : END ============================================================= -->
		
		
		<!-- ============================================================= FOOTER ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp"/>
		
		<!-- ============================================================= FOOTER : END ============================================================= -->
		
		<!-- JavaScripts placed at the end of the document so the pages load faster -->
		<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp"/>
		<!-- For demo purposes – can be removed on production : End -->
	</body>
</html>