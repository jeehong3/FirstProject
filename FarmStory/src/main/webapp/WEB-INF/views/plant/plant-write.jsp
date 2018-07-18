<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="ko">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>REEN</title>
		
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
		<link href="http://fonts.googleapis.com/css?family=Lato:400,900,300,700" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,400italic,700italic" rel="stylesheet">
		
		<!-- Icons/Glyphs -->
		<link href="assets/fonts/fontello.css" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">
		
		<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	
	<body>
		
		<!-- ============================================================= HEADER ============================================================= -->
		
		<header>
			<div class="navbar">
				
				<div class="navbar-header">
					<div class="container">
						
						<ul class="info pull-left">
							<li><a href="#"><i class="icon-mail-1 contact"></i> info@reen.com</a></li>
							<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
						</ul><!-- /.info -->
						
						<ul class="social pull-right">
							<li><a href="#"><i class="icon-s-facebook"></i></a></li>
							<li><a href="#"><i class="icon-s-gplus"></i></a></li>
							<li><a href="#"><i class="icon-s-twitter"></i></a></li>
							<li><a href="#"><i class="icon-s-pinterest"></i></a></li>
							<li><a href="#"><i class="icon-s-behance"></i></a></li>
							<li><a href="#"><i class="icon-s-dribbble"></i></a></li>
						</ul><!-- /.social -->
						
						<!-- ============================================================= LOGO MOBILE ============================================================= -->
						
						<a class="navbar-brand" href="index.html"><img src="assets/images/logo.svg" class="logo" alt=""></a>
						
						<!-- ============================================================= LOGO MOBILE : END ============================================================= -->
						
						<a class="navbar-toggle btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse"><i class='icon-menu-1'></i></a>
						
					</div><!-- /.container -->
				</div><!-- /.navbar-header -->
				
				<div class="yamm">
					<div class="navbar-collapse collapse">
						<div class="container">
							
							<!-- ============================================================= LOGO ============================================================= -->
							
							<a class="navbar-brand" href="index.html"><img src="assets/images/logo.svg" class="logo" alt=""></a>
							
							<!-- ============================================================= LOGO : END ============================================================= -->
							
							
							<!-- ============================================================= MAIN NAVIGATION ============================================================= -->
							
							<ul class="nav navbar-nav">
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Home</a>
									
									<ul class="dropdown-menu">
										<li><a href="index.html">Product Style</a></li>
										<li><a href="index2.html">Service Style</a></li>
										<li><a href="index3.html">Agency Style</a></li>
										<li><a href="index4.html">Portfolio Style</a></li>
										<li><a href="index5.html">Showcase Style</a></li>
									</ul><!-- /.dropdown-menu -->
								</li><!-- /.dropdown -->
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio</a>
									
									<ul class="dropdown-menu">
										<li><a href="portfolio.html">3 Columns Grid</a></li>
										<li><a href="portfolio2.html">3 Columns Details Grid</a></li>
										<li><a href="portfolio3.html">4 Columns Grid</a></li>
										<li><a href="portfolio4.html">4 Columns Details Grid</a></li>
										<li><a href="portfolio5.html">Fullscreen Grid</a></li>
										<li><a href="portfolio-post.html">Post with Slider I</a></li>
										<li><a href="portfolio-post2.html">Post with Slider II</a></li>
										<li><a href="portfolio-post3.html">Post with Images I</a></li>
										<li><a href="portfolio-post4.html">Post with Images II</a></li>
										<li><a href="portfolio-post5.html">Post with Video</a></li>
										<li><a href="portfolio-post6.html">Post with Audio</a></li>
									</ul><!-- /.dropdown-menu -->
								</li><!-- /.dropdown -->
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog</a>
									
									<ul class="dropdown-menu">
										<li><a href="blog.html">Sidebar right</a></li>
										<li><a href="blog2.html">Sidebar left</a></li>
										<li><a href="blog3.html">Without Sidebar</a></li>
										<li><a href="blog4.html">2 Columns Grid Sidebar right</a></li>
										<li><a href="blog5.html">2 Columns Grid Sidebar left</a></li>
										<li><a href="blog6.html">2 Columns Grid without Sidebar</a></li>
										<li><a href="blog7.html">3 Columns Grid without Sidebar</a></li>
										<li><a href="blog-post.html">Post Sidebar right</a></li>
										<li><a href="blog-post2.html">Post Sidebar left</a></li>
										<li><a href="blog-post3.html">Post without Sidebar</a></li>
									</ul><!-- /.dropdown-menu -->
								</li><!-- /.dropdown -->
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages</a>
									
									<ul class="dropdown-menu">
										
										<li class="dropdown-submenu">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">One Page</a>
											
											<ul class="dropdown-menu">
												<li><a href="one-page1.html">Product Style</a></li>
												<li><a href="one-page2.html">Service Style</a></li>
												<li><a href="one-page3.html">Agency Style</a></li>
												<li><a href="one-page4.html">Portfolio Style</a></li>
												<li><a href="one-page5.html">Showcase Style</a></li>
											</ul><!-- /.dropdown-menu -->
										</li><!-- /.dropdown-submenu -->
										
										<li><a href="about.html">About I</a></li>
										<li><a href="about2.html">About II</a></li>
										<li><a href="services.html">Services I</a></li>
										<li><a href="services2.html">Services II</a></li>
										<li><a href="services3.html">Services III</a></li>
										<li><a href="pricing.html">Pricing I</a></li>
										<li><a href="pricing2.html">Pricing II</a></li>
										<li><a href="sidenav.html">Side Navigation</a></li>
									</ul><!-- /.dropdown-menu -->
								</li><!-- /.dropdown -->
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Features</a>
									
									<ul class="dropdown-menu">
										
										<li><a href="slider-carousel.html">Slider/Carousel</a></li>
										<li><a href="modal.html">Modal</a></li>
										<li><a href="tab.html">Tab</a></li>
										<li><a href="accordion.html">Accordion</a></li>
										<li><a href="isotope.html">Isotope</a></li>
										<li><a href="styles.html">Styles</a></li>
										<li><a href="font-icons.html">Font Icons</a></li>
										<li><a href="backgrounds.html">Backgrounds</a></li>
										
										<li class="dropdown-submenu">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">Colors</a>
											
											<ul class="dropdown-menu">
												<li><a class="changecolor green" title="Green color">Green</a></li>
												<li><a class="changecolor blue" title="Blue color">Blue</a></li>
												<li><a class="changecolor red" title="Red color">Red</a></li>
												<li><a class="changecolor pink" title="Pink color">Pink</a></li>
												<li><a class="changecolor purple" title="Purple color">Purple</a></li>
												<li><a class="changecolor orange" title="Orange color">Orange</a></li>
												<li><a class="changecolor navy" title="Navy color">Navy</a></li>
												<li><a class="changecolor gray" title="Gray color">Gray</a></li>
											</ul><!-- /.dropdown-menu -->
										</li><!-- /.dropdown-submenu -->
										
										<li class="dropdown-submenu">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">Submenu Levels</a>
											
											<ul class="dropdown-menu">
												<li><a href="#">Second Level</a></li>
												<li><a href="#">Second Level</a></li>
												
												<li class="dropdown-submenu">
													<a href="#" class="dropdown-toggle" data-toggle="dropdown">More</a>
													
													<ul class="dropdown-menu">
														<li><a href="#">Third Level</a></li>
														<li><a href="#">Third Level</a></li>
													</ul><!-- /.dropdown-menu -->
												</li><!-- /.dropdown-submenu -->
											</ul><!-- /.dropdown-menu -->
										</li><!-- /.dropdown-submenu -->
										
									</ul><!-- /.dropdown-menu -->
								</li><!-- /.dropdown -->
								
								<!-- ============================================================= MEGA MENU ============================================================= -->
								
								<li class="dropdown yamm-fullwidth">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Mega Menu</a>
									
									<ul class="dropdown-menu yamm-dropdown-menu">
										<li>
											<div class="yamm-content row">
											
												<div class="col-sm-3 inner">
													<h4>Focus on</h4>
													<figure>
														<div class="icon-overlay icn-link">
															<a href="portfolio-post.html"><img src="assets/images/art/work01.jpg" alt=""></a>
														</div>
														<figcaption>
															<p>Consed quodips ameniat empernam que apid cust quas molor eatis numa estio.</p>
															<a href="portfolio-post.html" class="btn">View Project</a>
														</figcaption>
													</figure>
												</div><!-- /.col -->
												
												<div class="col-sm-3 inner">
													<h4>Special Pages</h4>
													
													<ul class="circled">
														<li><a href="portfolio2.html">3 Columns Details Grid Portfolio</a></li>
														<li><a href="portfolio5.html">Fullscreen Grid Portfolio</a></li>
														<li><a href="portfolio-post5.html">Portfolio Post with Video</a></li>
														<li><a href="blog5.html">2 Columns Grid Blog with Left Sidebar</a></li>
														<li><a href="blog7.html">3 Columns Grid Blog without Sidebar</a></li>
														<li><a href="blog-post.html">Blog Post with Right Sidebar</a></li>
														<li><a href="sidenav.html">Side Navigation Page</a></li>
														<li><a href="about2.html">About Page II</a></li>
														<li><a href="services.html">Service Page I</a></li>
														<li><a href="pricing.html">Pricing Page I</a></li>
														<li><a href="contact.html">Contact Page I</a></li>
													</ul><!-- /.circled -->
												</div><!-- /.col -->
												
												<div class="col-sm-3 inner">
													<h4>Latest Works</h4>
													
													<div class="row thumbs gap-xs">
														
														<div class="col-xs-6 thumb">
															<figure class="icon-overlay icn-link">
																<a href="portfolio-post.html"><img src="assets/images/art/work02.jpg" alt=""></a>
															</figure>
														</div><!-- /.thumb -->
														
														<div class="col-xs-6 thumb">
															<figure class="icon-overlay icn-link">
																<a href="portfolio-post.html"><img src="assets/images/art/work03.jpg" alt=""></a>
															</figure>
														</div><!-- /.thumb -->
														
														<div class="col-xs-6 thumb">
															<figure class="icon-overlay icn-link">
																<a href="portfolio-post.html"><img src="assets/images/art/work04.jpg" alt=""></a>
															</figure>
														</div><!-- /.thumb -->
														
														<div class="col-xs-6 thumb">
															<figure class="icon-overlay icn-link">
																<a href="portfolio-post.html"><img src="assets/images/art/work05.jpg" alt=""></a>
															</figure>
														</div><!-- /.thumb -->
														
														<div class="col-xs-6 thumb">
															<figure class="icon-overlay icn-link">
																<a href="portfolio-post.html"><img src="assets/images/art/work06.jpg" alt=""></a>
															</figure>
														</div><!-- /.thumb -->
														
														<div class="col-xs-6 thumb">
															<figure class="icon-overlay icn-link">
																<a href="portfolio-post.html"><img src="assets/images/art/work07.jpg" alt=""></a>
															</figure>
														</div><!-- /.thumb -->
														
													</div><!-- /.row -->
												</div><!-- /.col -->
												
												<div class="col-sm-3 inner">
													<h4>About Us</h4>
													<p>Voluptat ibusaped molorporro consequ idustibus. Reressi morum ut dolessiti tem nihicid ernatum, coria volore non pro officat ut autem accaborem conet. Omnis peribus qui dolent praeperrum coria.</p>
													<p>Equam conesti occum dolorest, quae venderes quistius, comnitatur sae dinam nonseculpa cum fugit is verciam.</p>
													<a href="about.html" class="btn">Read More</a>
												</div><!-- /.col -->
												
											</div><!-- /.yamm-content -->
										</li>
									</ul><!-- /.yamm-dropdown-menu -->
								</li><!-- /.yamm-fullwidth -->
								
								<!-- ============================================================= MEGA MENU : END ============================================================= -->
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact</a>
									
									<ul class="dropdown-menu">
										<li><a href="contact.html">Contact I</a></li>
										<li><a href="contact2.html">Contact II</a></li>
										<li><a href="contact3.html">Contact III</a></li>
									</ul><!-- /.dropdown-menu -->
								</li><!-- /.dropdown -->
								
								<li class="dropdown pull-right searchbox">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-search"></i></a>
											  
									<div class="dropdown-menu">
										<form id="search" class="navbar-form search" role="search">
											<input type="search" class="form-control" placeholder="Type to search">
											<button type="submit" class="btn btn-default btn-submit icon-right-open"></button>
										</form>
									</div><!-- /.dropdown-menu -->
								</li><!-- /.searchbox -->
								
							</ul><!-- /.nav -->
							
							<!-- ============================================================= MAIN NAVIGATION : END ============================================================= -->
							
						</div><!-- /.container -->
					</div><!-- /.navbar-collapse -->
				</div><!-- /.yamm -->
			</div><!-- /.navbar -->
		</header>
		
		<!-- ============================================================= HEADER : END ============================================================= -->
		
		
		<!-- ============================================================= MAIN ============================================================= -->
		
		<main>
			
			<!-- ============================================================= SECTION – CONTACT FORM ============================================================= -->
			
			<section id="contact-form">
				<div class="container inner">
					
					<div class="row">
						<div class="col-md-8 col-sm-9 center-block text-center">
							<header>
								<h1>Get in touch</h1>
								<p>Do you want to know more? We’d love to hear from you!</p>
							</header>
						</div><!-- /.col -->
					</div><!-- /.row -->
					
					<div class="row">
						<div class="col-sm-12">
							<div class="row">
								
								<div class="col-sm-6 outer-top-md inner-right-sm">
									
									<h2>Leave a Message</h2>
									
									<form id="contactform" class="forms" action="contact.php" method="post">
										
										<div class="row">
											<div class="col-sm-6">
												<input type="text" name="name" class="form-control" placeholder="Name (Required)">
											</div><!-- /.col -->
										</div><!-- /.row -->
										
										<div class="row">
											<div class="col-sm-6">
												<input type="email" name="email" class="form-control" placeholder="Email (Required)">
											</div><!-- /.col -->
										</div><!-- /.row -->
										
										<div class="row">
											<div class="col-sm-6">
												<input type="text" name="subject" class="form-control" placeholder="Subject">
											</div><!-- /.col -->
										</div><!-- /.row -->
										
										<div class="row">
											<div class="col-sm-12">
												<textarea name="message" class="form-control" placeholder="Enter your message ..."></textarea>
											</div><!-- /.col -->
										</div><!-- /.row -->
										
										<button type="submit" class="btn btn-default btn-submit">Submit message</button>
										
									</form>
									
									<div id="response"></div>
									
								</div><!-- ./col -->
								
								<div class="col-sm-6 outer-top-md inner-left-sm border-left">
									
									<h2>Contacts</h2>
									<p>Magnis modipsae voloratati andigen daepeditem quiate re aut labor. Laceaque eictemperum quiae sitiorem rest non restibusaes.</p>
									
									<h3>REEN</h3>
									<ul class="contacts">
										<li><i class="icon-location contact"></i> 84 Street, City, State 24813</li>
										<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
										<li><a href="mailto:info@reen.com"><i class="icon-mail-1 contact"></i> info@reen.com</a></li>
									</ul><!-- /.contacts -->
									
									<div class="social-network">
										<h3>Social</h3>
										<ul class="social">
											<li><a href="#"><i class="icon-s-facebook"></i></a></li>
											<li><a href="#"><i class="icon-s-gplus"></i></a></li>
											<li><a href="#"><i class="icon-s-twitter"></i></a></li>
											<li><a href="#"><i class="icon-s-pinterest"></i></a></li>
											<li><a href="#"><i class="icon-s-behance"></i></a></li>
											<li><a href="#"><i class="icon-s-dribbble"></i></a></li>
										</ul><!-- /.social -->
									</div><!-- /.social-network -->
									
								</div><!-- /.col -->
								
							</div><!-- /.row -->
						</div><!-- /.col -->
					</div><!-- /.row -->
					
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION – CONTACT FORM : END ============================================================= -->
			
			
			<!-- ============================================================= SECTION – MAP ============================================================= -->
			
			<section id="map" class="height-sm"></section>
			
			<!-- ============================================================= SECTION – MAP : END ============================================================= -->
			
		</main>
		
		<!-- ============================================================= MAIN : END ============================================================= -->
		
		
		<!-- ============================================================= FOOTER ============================================================= -->
		
		<footer class="dark-bg">
			<div class="container inner">
				<div class="row">
					
					<div class="col-md-3 col-sm-6 inner">
						<h4>Who we are</h4>
						<a href="index.html"><img class="logo img-intext" src="assets/images/logo-white.svg" alt=""></a>
						<p>Magnis modipsae voloratati andigen daepeditem quiate re porem que aut labor. Laceaque eictemperum quiae sitiorem rest non restibusaes maio es dem tumquam.</p>
						<a href="about.html" class="txt-btn">More about us</a>
					</div><!-- /.col -->
					
					<div class="col-md-3 col-sm-6 inner">
						<h4>Latest works</h4>
						
						<div class="row thumbs gap-xs">
														
							<div class="col-xs-6 thumb">
								<figure class="icon-overlay icn-link">
									<a href="portfolio-post.html"><img src="assets/images/art/work02.jpg" alt=""></a>
								</figure>
							</div><!-- /.thumb -->
							
							<div class="col-xs-6 thumb">
								<figure class="icon-overlay icn-link">
									<a href="portfolio-post.html"><img src="assets/images/art/work03.jpg" alt=""></a>
								</figure>
							</div><!-- /.thumb -->
							
							<div class="col-xs-6 thumb">
								<figure class="icon-overlay icn-link">
									<a href="portfolio-post.html"><img src="assets/images/art/work07.jpg" alt=""></a>
								</figure>
							</div><!-- /.thumb -->
							
							<div class="col-xs-6 thumb">
								<figure class="icon-overlay icn-link">
									<a href="portfolio-post.html"><img src="assets/images/art/work01.jpg" alt=""></a>
								</figure>
							</div><!-- /.thumb -->
							
						</div><!-- /.row -->
					</div><!-- /.col -->
					
					
					<div class="col-md-3 col-sm-6 inner">
						<h4>Get In Touch</h4>
						<p>Doloreiur quia commolu ptatemp dolupta oreprerum tibusam eumenis et consent accullignis dentibea autem inisita.</p>
						<ul class="contacts">
							<li><i class="icon-location contact"></i> 84 Street, City, State 24813</li>
							<li><i class="icon-mobile contact"></i> +00 (123) 456 78 90</li>
							<li><a href="#"><i class="icon-mail-1 contact"></i> info@reen.com</a></li>
						</ul><!-- /.contacts -->
					</div><!-- /.col -->
					
					<div class="col-md-3 col-sm-6 inner">
						<h4>Free updates</h4>
						<p>Conecus iure posae volor remped modis aut lor volor accabora incim resto explabo.</p>
						<form id="newsletter" class="form-inline newsletter" role="form">
							<label class="sr-only" for="exampleInputEmail">Email address</label>
							<input type="email" class="form-control" id="exampleInputEmail" placeholder="Enter your email address">
							<button type="submit" class="btn btn-default btn-submit">Subscribe</button>
						</form>
					</div><!-- /.col -->
					
				</div><!-- /.row --> 
			</div><!-- .container -->
		  
			<div class="footer-bottom">
				<div class="container inner">
					<p class="pull-left">© 2017 REEN. All rights reserved.</p>
					<ul class="footer-menu pull-right">
						<li><a href="index.html">Home</a></li>
						<li><a href="portfolio.html">Portfolio</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="services.html">Services</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul><!-- .footer-menu -->
				</div><!-- .container -->
			</div><!-- .footer-bottom -->
		</footer>
		
		<!-- ============================================================= FOOTER : END ============================================================= -->
		
		<!-- JavaScripts placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.easing.1.3.min.js"></script>
		<script src="assets/js/jquery.form.js"></script>
		<script src="assets/js/jquery.validate.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/aos.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/jquery.isotope.min.js"></script>
		<script src="assets/js/imagesloaded.pkgd.min.js"></script>
		<script src="assets/js/jquery.easytabs.min.js"></script>
		<script src="assets/js/viewport-units-buggyfill.js"></script>
		<script src="assets/js/selected-scroll.js"></script>
		<script src="assets/js/scripts.js"></script>
		<script src="assets/js/custom.js"></script>
		
		<script>
			/*===================================================================================*/
			/*	GOOGLE MAPS (JAVASCRIPT API)
			/*===================================================================================*/
			
			function initMap() {
				var mapOptions = {
						center				: new google.maps.LatLng(40.7902778, -73.9597222),
						zoom				: 13,
						disableDefaultUI	: true,
						scrollwheel			: false
					},
					map = new google.maps.Map(document.getElementById('map'), mapOptions);
			}
		</script>
		<script async defer src="https://maps.googleapis.com/maps/api/js?callback=initMap"></script>
		
		<!-- For demo purposes – can be removed on production -->
		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/pink.css" rel="alternate stylesheet" title="Pink color">
		<link href="assets/css/purple.css" rel="alternate stylesheet" title="Purple color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/navy.css" rel="alternate stylesheet" title="Navy color">
		<link href="assets/css/gray.css" rel="alternate stylesheet" title="Gray color">
		
		<script src="switchstylesheet/switchstylesheet.js"></script>
		
		<script>
			$(document).ready(function(){ 
				$(".changecolor").switchstylesheet( { seperator:"color"} );
			});
		</script>
		<!-- For demo purposes – can be removed on production : End -->
	</body>
</html>