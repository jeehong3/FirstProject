<%@page import="com.farmstory.vo.Plant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<!-- Meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Farm Story - My Flowerpot</title>

<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />

</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />

	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->

	<main> <!-- ============================================================= SECTION â LATEST WORKS ============================================================= -->

	<section id="latest-works" class="light-bg">
		<div class="container inner">

			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						<h1>나의 화분 목록</h1>
						<p>
							등록한 화분 목록입니다.<br> 화분에 대한 다이어리를 작성해보세요.
						</p>
					</header>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row inner-top-sm">
				<div id="owl-latest-works" class="owl-carousel owl-item-gap">

					<c:forEach var="myFlowerpots" items="${ myFlowerpots }">
						<div class="item">
								<figure>
									<figcaption class="text-overlay">
										<div class="info">
											<h4>${ myFlowerpots.plaName }</h4>
											<p>제품 번호 : ${ myFlowerpots.regPotNo }</p>
											<a id="modifyPotBtn" href="#" class="btn">수정</a>
											<a id="deletePotBtn" href="#" class="btn">삭제</a>
										</div>
										<!-- /.info -->
									</figcaption>
									<img src="/farmstory/resources/upload-image/plant-info/${ myFlowerpots.pliImg }" alt="">
								</figure>
							<a id="myDiaryBtn" href="/farmstory/diary_write.action" class="btn">다이어리 쓰기</a>
							<a id="flowerPotInfoBtn" href="/farmstory/value/findTime.action" class="btn">화분정보 보기</a>
						</div>
					</c:forEach>
					<!-- /.item -->
				</div>
				<!-- /.owl-carousel -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION â LATEST WORKS : END ============================================================= -->


	</main>

	<!-- ============================================================= MAIN : END ============================================================= -->


	<!-- ============================================================= FOOTER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />

	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- ============================================================= JAVASCRIPT ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />

	<!-- ============================================================= JAVASCRIPT : END ============================================================= -->

</body>
</html>