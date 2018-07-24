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
		
		<title>REEN</title>
		
		<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
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
			
			<!-- ============================================================= SECTION �� POPULAR POSTS ============================================================= -->
			
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
												<c:forEach var="diaryAllImg" items="${ diaryAllImg }">
												<div class="item">
													<a href="blog-post.html">
														<figure>
															<figcaption class="text-overlay">
																<div class="info">
																	<h4>Vintage Bicycles</h4>
																	<p>Interactive</p>
																</div><!-- /.info -->
															</figcaption>
															<img src="/farmstory/resources/upload-image/diary-info/${diaryAllImg.diiImg}" alt="">
														</figure>
													</a>
												</div><!-- /.item -->
												</c:forEach>
										
												
											</div><!-- /.owl-carousel -->
										</div><!-- /.panel-body -->
									</div><!-- /.content -->
									
								</div><!-- /.panel -->
							</div><!-- /.accordion -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION �� POPULAR POSTS : END ============================================================= -->
			
			
			<!-- ============================================================= SECTION �� BLOG ============================================================= -->
			
			<section id="blog" class="light-bg">
				<div class="container inner-top-sm inner-bottom classic-blog">
					
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
						
						<div class="col-md-9 inner-right-sm">
							<div class="posts sidemeta">
							<c:forEach var="diary" items="${ diaries }">
								<div class="post format-gallery">
									<div class="date-wrapper">
										<div class="date">
											<span class="day">${ diary.diaDate }</span>
											<!-- <span class="month">May</span> -->
										</div><!-- /.date -->
									</div><!-- /.date-wrapper -->
									<div class="format-wrapper">
										<a href="#" data-filter=".format-gallery"><i class="icon-picture"></i></a>
									</div><!-- /.format-wrapper -->
									
									<div class="post-content">
									
										
										<div id="owl-work" class="owl-carousel owl-inner-pagination owl-inner-nav post-media">
											<c:forEach var="diaryImg" items="${ diary.attachment }">
											<div class="item">
												<figure>
													<img src="/farmstory/resources/upload-image/diary-info/${diaryImg.diiImg}" alt="">
												</figure>
											</div><!-- /.item -->
											</c:forEach>
										</div><!-- /.owl-carousel -->
										
										<h2 class="post-title">
											<a href="/farmstory/diary_detail.action">${ diary.diaTitle }</a>
										</h2>
										
										<ul class="meta">
											<li class="categories"><a href="#">Identity</a>, <a href="#">Graphic Design</a></li>
											<li class="comments"><a href="#">24</a></li>
											<li class="likes"><a href="#">73</a></li>
										</ul><!-- /.meta -->
										
										<p>${ diary.diaContent }</p>
										
										<a href="blog-post.html" class="btn">Read more</a>
										
									</div><!-- /.post-content --> 
								</div><!-- /.post -->
								</c:forEach>
							</div><!-- /.posts -->
							
							<ul class="pagination">
								<li><a href="#">Prev</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">Next</a></li>
							</ul><!-- /.pagination --> 
							
						</div><!-- /.col -->
						
						<aside class="col-md-3">
							
							<div class="sidebox widget">
								<h4>Random Posts</h4>
								
								<div class="row thumbs gap-xs">
									<c:forEach var="diaryAllImg" end="4" items="${ diaryAllImg }">
									<div class="col-xs-6 thumb">
										<figure class="icon-overlay icn-link">
											<a href="blog-post.html">
											<img src="/farmstory/resources/upload-image/diary-info/${diaryAllImg.diiImg}" alt="">
											</a>
										</figure>
									</div><!-- /.thumb -->
									</c:forEach>
									
									
								</div><!-- /.row -->
							</div><!-- /.widget -->
							
							<div class="sidebox widget">
								<h4>Search Posts</h4>
								
								<form id="search" class="navbar-form search" role="search">
									<input type="search" class="form-control" placeholder="Type to search">
									<button type="submit" class="btn btn-default btn-submit icon-right-open"></button>
								</form>
							</div><!-- /.widget -->
							
							<div class="sidebox widget">
								<h4>Categories</h4>
								
								<ul class="circled">
									<li><a href="#">Identity (114)</a></li>
									<li><a href="#">Interactive (93)</a></li>
									<li><a href="#">Graphic Design (82)</a></li>
									<li><a href="#">Motion Graphics (77)</a></li>
									<li><a href="#">Photography (63)</a></li>
									<li><a href="#">Technology (55)</a></li>
									<li><a href="#">Business (42)</a></li>
									<li><a href="#">Print (36)</a></li>
									<li><a href="#">Audio (23)</a></li>
								</ul><!-- /.circled -->
							</div><!-- /.widget -->
							
							<div class="sidebox widget">
								<h4>Archives</h4>
								
								<ul class="circled">
									<li><a href="#">March 2015</a></li>
									<li><a href="#">February 2015</a></li>
									<li><a href="#">January 2015</a></li>
									<li><a href="#">December 2013</a></li>
									<li><a href="#">November 2013</a></li>
									<li><a href="#">October 2013</a></li>
								</ul><!-- /.circled -->
								
								<a href="#" class="txt-btn">All archives</a>
							</div><!-- /.widget -->
							
							<div class="sidebox widget">
								<h4>Featured</h4>
								
								<figure>
									
									<div class="icon-overlay icn-link">
										<a href="blog-post.html"><img src="assets/images/art/work01.jpg" alt=""></a>
									</div><!-- /.icon-overlay -->
									
									<figcaption class="bordered no-top-border">
										<div class="info">
											<h4><a href="blog-post.html">Appscreen Dashboard</a></h4>
											<p>Interactive</p>
										</div><!-- /.info -->
									</figcaption>
									
								</figure>
							</div><!-- /.widget -->
							
							<div class="sidebox widget">
								<h4>Custom Text</h4>
								<p>Magnis modipsae que lib voloratati andigen daepeditem reporemni labor. Laceaque quiae sitiorem rest non restibusaes es tumquam core posae volor remped modis volor.</p>
								<p>Conecus iure posae volor remped modiatis aut accabora incim explabo eictemperum quiae sitiorem.</p>
								<a href="#" class="txt-btn">Check out more</a>
							</div><!-- /.widget -->
							
							<div class="sidebox widget">
								<h4>Tags</h4>
								
								<div class="tagcloud">
									<a href="#" style="font-size: 12pt;">Beautiful</a> <a href="#" style="font-size: 20pt;">REEN</a> <a href="#" style="font-size: 10pt;">Quality</a> <a href="#" style="font-size: 14pt;">Website</a> <a href="#" style="font-size: 16pt;">Template</a> <a href="#" style="font-size: 12pt;">Professional</a> <a href="#" style="font-size: 20pt;">Design</a> <a href="#" style="font-size: 10pt;">Multipurpose</a> <a href="#" style="font-size: 16pt;">Portfolio</a> <a href="#" style="font-size: 10pt;">Customization</a> <a href="#" style="font-size: 19pt;">Bootstrap</a> <a href="#" style="font-size: 9pt;">Mobile</a> <a href="#" style="font-size: 14pt;">Features</a> <a href="#" style="font-size: 9pt;">Styles</a> <a href="#" style="font-size: 13pt;">Responsive</a> <a href="#" style="font-size: 9pt;">Font Icons</a> <a href="#" style="font-size: 22pt;">Love</a> <a href="#" style="font-size: 10pt;">Digital</a> <a href="#" style="font-size: 18pt;">Awesome</a> <a href="#" style="font-size: 12pt;">Passion</a> <a href="#" style="font-size: 13pt;">Typography</a> <a href="#" style="font-size: 13pt;">Clean</a> <a href="#" style="font-size: 9pt;">Easy to use</a> <a href="#" style="font-size: 20pt;">Buy it</a> <a href="#" style="font-size: 12pt;">Success</a>
								</div><!-- /.tag-cloud -->
							</div><!-- /.widget -->
							
						</aside>
						
					</div><!-- /.row -->
					
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION �� BLOG : END ============================================================= -->
			
		</main>
		
		<!-- ============================================================= MAIN : END ============================================================= -->
		
		
		<!-- ============================================================= FOOTER ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp"/>
		
		<!-- ============================================================= FOOTER : END ============================================================= -->
		
		<!-- JavaScripts placed at the end of the document so the pages load faster -->
		<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp"/>
		
	</body>
</html>