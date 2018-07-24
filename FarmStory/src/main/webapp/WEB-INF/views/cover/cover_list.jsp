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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>팜스토리-식물 정보</title>

<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />

<style type="text/css">
#plant-sub-title {
	font-size: 17px;
}

#notosans {
	font: 24px/30px 'Noto Sans KR', sans-serif;
}
</style>
</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />

	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->

	<main> <!-- ============================================================= SECTION â PORTFOLIO ============================================================= -->

	<section id="portfolio">

		<div class="container inner">
			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header class="notoSansKR medium">
						<h2>스마트팜 소개</h2>
						<p id="plant-sub-title">스마트팜에 대해서 소개를 합니다.</p>
					</header>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->

		<div class="container inner-bottom notoSansKR">
			<div class="row">
				<div class="col-sm-12 portfolio">

					<table class="table listingsTable" style="border-radius: 30px">
						<c:forEach var="cover" items="${ coverList }">
							<tr style="background-color: white; height: 30px">
								<td colspan="2"><a
									href="cover_detail.action?trnNo=${ cover.trnNo }"> ${ cover.trnTitle }
								</a></td>
							</tr>
							<tr style="background-color: white; height: 30px">
								<td colspan="2"><img
									src="/janditour/resources/upload-image/cover-info/${cover.trnPic}"
									style="width: 80px; height: 50px"></a></td>
							</tr>
							<tr style="background-color: white; height: 30px">
								<td>${cover.covLcontent}</td>
								<td>${cover.covRocntent}</td>
							</tr>
						</c:forEach>
					</table>
					<a id="link_register" href="javascript:">소개 등록</a> <input
						type="hidden" value="test" />

				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION â PORTFOLIO : END ============================================================= -->



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