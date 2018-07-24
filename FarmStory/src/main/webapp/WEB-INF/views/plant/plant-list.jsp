<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="ko">
	<head>
		<!-- Meta -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<title>팜스토리-식물 정보</title>
		
		<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
		<jsp:include page="/WEB-INF/views/include/style/public-style.jsp"/>
		
		<style type="text/css">
			#plant-sub-title {
				font-size: 17px;
			}
		</style>
	</head>
	
	<body>
		
		<!-- ============================================================= HEADER ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/header/public-header.jsp"/>
		
		<!-- ============================================================= HEADER : END ============================================================= -->
		
		
		<!-- ============================================================= MAIN ============================================================= -->
		
		<main class="notoSansKR">
			
			<!-- ============================================================= SECTION â PORTFOLIO ============================================================= -->
		
			<section id="portfolio">
				
				<div class="container inner">
					<div class="row">
						<div class="col-md-8 col-sm-9 center-block text-center">
							<header class="notoSansKR medium">
								<h2>어떻게 키워야할까?</h2>
								<p id="plant-sub-title">여기서 식물에 대한 정보를 보고가세요~</p>
							</header>
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
				
				<div class="container inner-bottom notoSansKR">
					<div class="row">
						<div class="col-sm-12 portfolio">
							
							<ul class="filter text-center">
								<li><a href="#" data-filter="*" class="active">전체</a></li>
								<li><a href="#" data-filter=".꽃">꽃</a></li>
								<li><a href="#" data-filter=".관엽식물">관엽 식물</a></li>
								<li><a href="#" data-filter=".활엽식물">활엽 식물</a></li>
								<li><a href="#" data-filter=".란">란</a></li>
							</ul><!-- /.filter -->
							
							<ul class="isotope items col-3 gap">
							
							<c:forEach var="plant" items="${ plantInfos }">
								<li class="item thumb ${ plant.plaType }">
									<figure>
										
										<div class="icon-overlay icn-link">
											<a href="/farmstory/plant_detail.action"><img src="/farmstory/resources/upload-image/plant-info/${ plant.pliImg }" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="/farmstory/plant_detail.action"></a>[${ plant.plaType }] ${ plant.plaName }</h4>
												<p>${ plant.plaSimple }</p>
											</div><!-- /.info -->
										</figcaption>
										
									</figure>
								</li><!-- /.item -->
							</c:forEach>
								
								
							</ul><!-- /.items -->
							
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container -->
			</section>
			
			<!-- ============================================================= SECTION â PORTFOLIO : END ============================================================= -->
			
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