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

<title>FARM STORY - TimeVal</title>

<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />

<style type="text/css">
.valName{
	font-size: 50px;
	color: white;
}
</style>
</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />

	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->

	<main> <!-- ============================================================= SECTION â PRICING TABLES ============================================================= -->

	<section id="pricing-tables">
		<div class="container inner">

			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						<h1>나의 화분 정보 보기</h1>
						<p>화분 번호 : ${ regPotNo }</p>
					</header>
						<form id="frm" action="findTime.action" method="post">
						<input type="hidden" name="regPotNo" value=${ regPotNo }>
						검색 날짜 선택
						<br><br><input type="date" id="date" name="date" value=${ date }>
							<input class="btn" type="submit" value="전송">
					</form>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row pricing">

				<div class="col-md-4 col-sm-6 inner-top-sm">
					<div class="plan">

						<header>
							<h2>Temperature</h2>

							<div class="price">
								<span class="valName" ><b>온도</b></span> 
							</div>
							<!-- /.price -->

							<a href="#" class="btn">Change to this plan</a>
						</header>

						<ul class="features">
						
							<span>날짜</span>
							<span class="pull-right">온도&nbsp;</span>
							
							<c:forEach var="val" items="${ vals }" end="20">
								<c:if test="${ val.plvType eq '온도' }">
									<li><span>${ val.plvDateTime }</span> <span
										class="pull-right">${ val.plvVal } 도</span></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- /.features -->

					</div>
					<!-- /.plan -->
				</div>
				<!-- /.col -->

				<div class="col-md-4 col-sm-6 inner-top-sm">
					<div class="plan">

						<header>
							<h2>Humidity</h2>

							<div class="price">
								<span class="valName"><b>습도</b></span>
							</div>
							<!-- /.price -->

							<a href="#" class="btn">Change to this plan</a>
						</header>

						<ul class="features">
						
							<span>날짜</span>
							<span class="pull-right">습도&nbsp;</span>
							
							<c:forEach var="val" items="${ vals }" end="20">
								<c:if test="${ val.plvType eq '습도' }">
									<li><span>${ val.plvDateTime }</span> <span
										class="pull-right">${ val.plvVal } %</span></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- /.features -->

					</div>
					<!-- /.plan -->
				</div>
				<!-- /.col -->

				<div class="col-md-4 col-sm-6 inner-top-sm">
					<div class="plan">

						<header>
							<h2>Illuminance</h2>

							<div class="price">
								<span class="valName"><b>조도</b></span>
							</div>
							<!-- /.price -->

							<a href="#" class="btn">Change to this plan</a>
						</header>

						<ul class="features">
						
							<span>날짜</span>
							<span class="pull-right">조도&nbsp;</span>
							
							<c:forEach var="val" items="${ vals }" end="20">
								<c:if test="${ val.plvType eq '조도' }">
									<li><span>${ val.plvDateTime }</span> <span
										class="pull-right">${ val.plvVal } lux</span></li>
								</c:if>
							</c:forEach>
						</ul>
						<!-- /.features -->

					</div>
					<!-- /.plan -->
				</div>
				<!-- /.col -->

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION – PRICING TABLES : END ============================================================= -->


	<!-- ============================================================= SECTION â FAQ ============================================================= -->

	<section id="faq" class="light-bg">
		<div class="container inner">

			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						<h1>Questions?</h1>
						<p>Magnis modipsae que voloratati andigen daepeditem quiate re
							porem aut labor. Laceaque quiae sitiorem rest non restibusaes
							maio es dem tumquam.</p>
					</header>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row">

				<div class="col-sm-6 inner-right-sm inner-top-sm">

					<h3>How long are the contracts?</h3>
					<p>Conecus iure posae volor remped modis aut accabora incim
						resto explabo eictemperum quiae sitiorem volor remped modis volor.</p>

					<h3>Can i switch plans later?</h3>
					<p>Conecus iure posae volor remped modis aut accabora incim
						resto explabo eictemperum quiae sitiorem volor remped modis volor.</p>

					<h3>What support options do i have?</h3>
					<p>Conecus iure posae volor remped modis aut accabora incim
						resto explabo eictemperum quiae sitiorem volor remped modis volor.</p>

				</div>
				<!-- /.col -->

				<div class="col-sm-6 inner-left-sm inner-top-sm">

					<h3>Is there a setup fee?</h3>
					<p>Conecus iure posae volor remped modis aut accabora incim
						resto explabo eictemperum quiae sitiorem volor remped modis volor.</p>

					<h3>What types of payment methods are accepted?</h3>
					<p>Conecus iure posae volor remped modis aut accabora incim
						resto explabo eictemperum quiae sitiorem volor remped modis volor.</p>

					<h3>Can i cancel my account at any time?</h3>
					<p>Conecus iure posae volor remped modis aut accabora incim
						resto explabo eictemperum quiae sitiorem volor remped modis volor.</p>

				</div>
				<!-- /.col -->

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION â FAQ : END ============================================================= -->


	<!-- ============================================================= SECTION â CONTACT US ============================================================= -->

	<section id="contact-us" class="tint-bg">
		<div class="container inner-sm">
			<div class="row">
				<div class="col-sm-10 center-block text-center">
					<h1 class="single-block">
						Need more help? <a href="#" class="btn btn-large">Contact us</a>
					</h1>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- ============================================================= SECTION â CONTACT US : END ============================================================= -->

	</main>

	<!-- ============================================================= MAIN : END ============================================================= -->


	<!-- ============================================================= FOOTER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />

	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- ============================================================= JAVASCRIPT ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />

	<!-- ============================================================= JAVASCRIPT : END ============================================================= -->
	<!-- JQ-PLOT의 기본 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jquery.jqplot.js"></script>
	<!-- Highlighter(마우스 접근시 데이터정보 표시) 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.highlighter.js"></script>
	<!-- 좌표에 관한 정보나 Zoom 기능 사용시 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.cursor.js"></script>
	<!-- 축의 데이터를 날짜형태로 입력하기 위해서 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.dateAxisRenderer.js"></script>
	<!-- 축의 데이터의 Label Option을 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.canvasAxisLabelRenderer.js"></script>
	<!-- Legend(Line에대한 간단한 범례)의 Option을 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.enhancedLegendRenderer.js"></script>
	<!-- 축의 데이터를 순서에 상관없이 자동정렬을 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.categoryAxisRenderer.js"></script>
	<!-- 축의 데이터 표현설정과 그래프위의 점의 Option을 설정 -->
	<script type="text/javascript"
		src="/farmstory/resources/chart/jqplot.canvasAxisTickRenderer.js"></script>
	<script type="text/javascript">
$(document).ready(function(){
	
	  var array1 = [];
	  <c:forEach var="val" items="${ vals }" end="27">
	  <c:if test="${ val.plvType eq '온도' }">
	  	array1.push(['${ val.plvDateTime }', ${ val.plvVal }]);
	  </c:if>
	  </c:forEach>
	  var plot1 = $.jqplot('graphDiv1', [array1], {
	      title:'실시간 온도', 
	      axes:{
	        xaxis:{
	          renderer:$.jqplot.DateAxisRenderer, 
	          tickOptions:{formatString:'%Y-%m-%d %H:%M'},
	          tickInterval:'10 minutes'
	        },
	      },
	      series:[{lineWidth:4, markerOptions:{style:'square'}}]
	  });
	  
	  var array2 = [];
	  <c:forEach var="val" items="${ vals }" end="27">
	  <c:if test="${ val.plvType eq '습도' }">
	  	array2.push(['${ val.plvDateTime }', ${ val.plvVal }]);
	  </c:if>
	  </c:forEach>
	  var plot2 = $.jqplot('graphDiv2', [array2], {
	      title:'실시간 습도', 
	      axes:{
	        xaxis:{
	          renderer:$.jqplot.DateAxisRenderer, 
	          tickOptions:{formatString:'%Y-%m-%d %H:%M'},
	          tickInterval:'10 minutes'
	        },
	      },
	      series:[{lineWidth:4, markerOptions:{style:'square'}}]
	  });
	  
	  var array3 = [];
	  <c:forEach var="val" items="${ vals }" end="27">
	  <c:if test="${ val.plvType eq '조도' }">
	  	array3.push(['${ val.plvDateTime }', ${ val.plvVal }]);
	  </c:if>
	  </c:forEach>
	  var plot3 = $.jqplot('graphDiv3', [array3], {
	      title:'실시간 조도', 
	      axes:{
	        xaxis:{
	          renderer:$.jqplot.DateAxisRenderer, 
	          tickOptions:{formatString:'%Y-%m-%d %H:%M'},
	          tickInterval:'10 minutes'
	        },
	      },
	      series:[{lineWidth:4, markerOptions:{style:'square'}}]
	  });
	  
	  var array4 = [];
	  <c:forEach var="val" items="${ vals }" end="27">
	  <c:if test="${ val.plvType eq '압력' }">
	  	array4.push(['${ val.plvDateTime }', ${ val.plvVal }]);
	  </c:if>
	  </c:forEach>
	  var plot4 = $.jqplot('graphDiv4', [array4], {
	      title:'실시간 압력', 
	      axes:{
	        xaxis:{
	          renderer:$.jqplot.DateAxisRenderer, 
	          tickOptions:{formatString:'%Y-%m-%d %H:%M'},
	          tickInterval:'10 minutes'
	        },
	      },
	      series:[{lineWidth:4, markerOptions:{style:'square'}}]
	  });
	});

</script>
</body>
</html>