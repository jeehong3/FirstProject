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

<title>팜스토리-소개목록 페이지</title>

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
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function() { //jQuery의 main 함수
		$('#write').on('click', function(event) {
			<c:choose>
				<c:when test="${ADMIN}">
				alert('관리자만 글을 작성할 수 있습니다.');
				location.href = '/farmstroy/home.action';
				</c:when>
				<c:otherwise>
				location.href = '/farmstory/cover_write.action';
				</c:otherwise>
			</c:choose>			
		});
	});
	$(function(){
		$('#list').on('click',function(event){
			location.href ='/farmstory/cover_detail.action'
		});
	});
</script>
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
						<h2>스마트팜 소개 목록</h2>
						<p id="plant-sub-title">스마트팜 소개 목록입니다..</p>
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
						<tr style="background-color: white; height: 25px">
							<th style="width: 80px"><div align="center">
									<strong>소개 번호</strong>
								</div></th>
							<th style="width: 100px"><div align="center">
									<strong>소개 이미지</strong>
								</div></th>
							<th style="width: 300px"><div align="center">
									<strong>소개 제목</strong>
								</div></th>

						</tr>
						<c:forEach var="cover" items="${ coverList }">
							<tr align="center" style="background-color: white; height: 30px">
								<td>${cover.covNo }</td>
								<td><img
									src="/farmstory/resources/upload-image/cover-info/${cover.covImg}"
									style="width: 80px; height: 50px"></td>
								<td><a href="cover_detailm.action?covNo=${ cover.covNo }">
										${ cover.covTitle } </a></td>
							</tr>
						</c:forEach>
					</table>


					<a id="write" href="#">소개 등록</a> <input
						type="hidden" value="test" />
					<a id="list" href="#">소개 목록</a>
					
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