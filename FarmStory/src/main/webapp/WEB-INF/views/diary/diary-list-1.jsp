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
		
		<title>Farm Story - My Diary</title>
		
		<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
		<jsp:include page="/WEB-INF/views/include/style/public-style.jsp"/>
		
		<style type="text/css">
		#diaryBook{ 
			padding-top: 70px;
		}
		</style>
	</head>
	
	<body>
		
		<!-- ============================================================= HEADER ============================================================= -->
		
		<jsp:include page="/WEB-INF/views/include/header/public-header.jsp"/>
		
		<!-- ============================================================= HEADER : END ============================================================= -->
		
		
		<!-- ============================================================= MAIN ============================================================= -->
		
		<main>
		
		<!-- ============================================================= SECTION – HERO ============================================================= -->

		<section class="light-bg img-bg img-bg-softer"
			style="background-image: url(/farmstory/resources/assets/images/art/image-background04.jpg);">
			<div class="container inner">
				<div class="row">
					<div class="col-md-8 center-block text-center">
						<header>
							<h1>나의 다이어리 북</h1>
							<p>화분마다 다이어리 북을 만들 수 있어요.</p>
						</header>
					</div>
					<!-- /.col -->
				</div>
				<!-- ./row -->
			</div>
		</section>

		<!-- ============================================================= SECTION – HERO : END ============================================================= -->
		
		
			
			<!-- ============================================================= SECTION â PORTFOLIO ============================================================= -->
		
			<section id="diaryBook">
				
				<div class="container inner-bottom">
					<div class="row">
						<div class="col-sm-12 portfolio">
							
							<ul class="filter text-center">
								<li><a href="#" data-filter="*" class="active">전체</a></li>
								<li><a href="#" data-filter=".꽃">꽃</a></li>
								<li><a href="#" data-filter=".관엽식물">관엽 식물</a></li>
								<li><a href="#" data-filter=".활엽식물">활엽 식물</a></li>
								<li><a href="#" data-filter=".란">란</a></li>
							</ul><!-- /.filter -->
							
							<ul class="isotope items col-4 gap">
							
							<c:forEach var="plantInfos" items="${ plantInfos }">
								<li class="item thumb ${ plantInfos.plaType }">
									<figure>
										
										<div class="icon-overlay icn-link">
											<a href="/farmstory/plant_detail.action?plaNo=${ plantInfos.plaNo }"><img src="/farmstory/resources/upload-image/plant-info/${ plantInfos.pliImg }" alt=""></a>
										</div><!-- /.icon-overlay -->
										
										<figcaption class="bordered no-top-border">
											<div class="info">
												<h4><a href="/farmstory/plant_detail.action?plaNo=${ plantInfos.plaNo }"> ${ plantInfos.plaName }</a></h4>
												<p>${ plantInfos.plaName }</p>
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