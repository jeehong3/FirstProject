<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<html lang="ko">
<head>
	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Cover List</title>
	
	<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />
	
</head>

<body>
	
	<!-- ============================================================= HEADER ============================================================= -->
	
	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />
	
	<!-- ============================================================= HEADER : END ============================================================= -->
	
	
	<!-- ============================================================= MAIN ============================================================= -->
	
	<main>
		
		<!-- ============================================================= SECTION – HERO ============================================================= -->
	
		<section id="hero" class="light-bg img-bg-bottom img-bg-softer" style="background-image: url(/farmstory/resources/assets/images/art/slider03.jpg);">
			<div class="container inner">
				
				<div class="row">
					<div class="col-md-8 col-sm-9">
						<header>
							<h1>팜스토리 소개</h1>
							<p>팜스토리를 소개 합니다.</p>
						</header>
					</div><!-- /.col -->
				</div><!-- ./row -->
				
			</div><!-- /.container -->
		</section>
		
		<!-- ============================================================= SECTION – HERO : END ============================================================= -->
		
		<!-- ============================================================= SECTION – SERVICES ============================================================= -->
		
		<section id="services">
			<div class="container inner">
				<div class="row">
					<div class="col-xs-12">
						<div class="tabs tabs-services tabs-circle-top tab-container">
							
							<ul class="etabs text-center">
							<c:forEach var="cover" items="${ coverList }">
								<li class="tab" id="cover-tab-${ cover.covNo }" data-covno="${ cover.covNo }">
									<a href="#tab-${ cover.covNo }">
										<div><i class="icon-book-open"></i></div>
										${ cover.covTitle }
									</a>
								</li>
							</c:forEach>

							</ul><!-- /.etabs -->
							
							<div class="panel-container">
								
								<c:forEach var="cover" items="${ coverList }">
								<div class="tab-content" id="tab-${ cover.covNo }">
									<div class="row">
										
										<div class="col-md-4 col-md-push-3 col-md-offset-1 col-sm-6 inner-left-xs inner-right-xs aos-init aos-animate" data-aos="fade-up">
											<figure>
												<img
													src="/farmstory/resources/upload-image/cover-info/${cover.covImg}"
													style="width: 270px; height: 350px">
											</figure>
										</div><!-- /.col -->

										<div class="col-md-3 col-md-pull-4 col-sm-6 inner-top-xs aos-init aos-animate" data-aos="fade-up">
											<h3>
												<span data-cover="title"></span>
											</h3>
											<p data-cover="lcontent">Magnis modipsae lib voloratati
												andigen daepedor quiate aut labor. Laceaque quiae sitiorem
												resti est lore tumquam core posae volor uso remped modis
												volor. Doloreiur qui commolu ptatemp dolupta orem retibusam
												emnis et consent it accullignis orum lomnus.</p>

										</div>
										<!-- /.col -->

										<div class="col-md-3 col-sm-6 inner-top-xs aos-init aos-animate" data-aos="fade-up">
											<h3>
												<span data-cover="title"></span>
											</h3>
											<p data-cover="rcontent">Magnis modipsae que lib
												voloratati andigen daepedor quiate ut reporemni aut labor.
												Laceaque quiae sitiorem ut restibusaes es tumquam core posae
												volor remped modis volor. Doloreiur qui commolu ptatemp
												dolupta orem retibusam emnis et consent accullignis lomnus.</p>
										</div>

									</div><!-- /.row -->
								</div><!-- /.tab-content -->
								</c:forEach>
								 
							</div><!-- /.panel-container -->
							 
						</div><!-- /.tabs -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container -->
		</section>
		
		<!-- ============================================================= SECTION – SERVICES : END ============================================================= -->
		
		

		
	</main>
	
	<!-- ============================================================= MAIN : END ============================================================= -->
	
	
	<!-- ============================================================= FOOTER ============================================================= -->
	
	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />
	
	<!-- ============================================================= FOOTER : END ============================================================= -->
	
	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />

	<script src="/farmstory/resources/assets/switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			
			$('li[id^=cover-tab]').on('click', function(event) {
				//load data
				var covNo = $(this).attr('data-covno');
				loadCoverDetail(covNo);

			});
			
			var firstCoverTab = $('li[id^=cover-tab]').first();
			firstCoverTab.addClass('active')				
			var covNo = firstCoverTab.attr('data-covno');
			loadCoverDetail(covNo);
		});
		
		function loadCoverDetail(covNo) {
			$.ajax({
				"url" : 'ajax_cover_detailm.action',
				"method" : 'get',
				"data" : { "covNo" : covNo },
				"success" : function(data, status, xhr) {
					
					var targetTab = $('#tab-' + covNo);
					targetTab.find('span[data-cover=title]').html(data.covTitle);
					targetTab.find('p[data-cover=lcontent]').html(data.covLcontent.replace("<p>", "").replace("</p>", ""));
					targetTab.find('p[data-cover=rcontent]').html(data.covRcontent.replace("<p>", "").replace("</p>", ""));
					
				},
				"error" : function(err, status, xhr) {
					alert(status);
				}
			});

		}
	</script>
	<!-- For demo purposes – can be removed on production : End -->
</body>
</html>