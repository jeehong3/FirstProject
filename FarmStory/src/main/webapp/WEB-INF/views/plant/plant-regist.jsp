<%@page import="com.farmstory.vo.Plant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="ko">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>REEN</title>

<!-- Core CSS & AddOn/Plugin CSS & Custom CSS & Fonts & Icons/Glyphs & Favicon -->
<jsp:include page="/WEB-INF/views/include/style/public-style.jsp" />



</head>

<body>

	<!-- ============================================================= HEADER ============================================================= -->
	<jsp:include page="/WEB-INF/views/include/header/public-header.jsp" />
	<!-- ============================================================= HEADER : END ============================================================= -->


	<!-- ============================================================= MAIN ============================================================= -->



	<!-- ============================================================= SECTION – CONTACT FORM ============================================================= -->

	<!-- Account - Register Modal : START -->
	<jsp:include page="/WEB-INF/views/include/account/modal-register.jsp" />
	<!-- Account - Register Modal : END   -->

	<!-- Account - Login Modal : START -->
	<jsp:include page="/WEB-INF/views/include/account/modal-login.jsp" />
	<!-- Account - Login Modal : END   -->

	<!-- Account - Logout Modal : START -->
	<jsp:include page="/WEB-INF/views/include/account/modal-logout.jsp" />
	<!-- Account - Logout Modal : END   -->

	<main class="js-reveal">

	<section id="contact-form">
		<div class="container inner">

			<div class="row">
				<div class="col-md-8 col-sm-9 center-block text-center">
					<header>
						<h1>제품 등록하기</h1>
					</header>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-sm-12">
					<div class="row">

						<div class="col-sm-6 outer-top-md inner-right-sm">

							<h2>상세내용을 등록하세요</h2>

							<form id="plantRegistform" class="forms"
								action="plant_regist.action" method="post">

								<%-- 	<input type="hidden" name="plaNo" class="form-control"
												value="${plant.plaNo}" > --%>

								<div class="row">
									<div class="col-sm-4">
										<input type="text" name="memId" class="form-control"
											value="${loginuser.memId}" readonly>
									</div>
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="col-sm-8">
										<input type="text" name="regPotNo" class="form-control"
											placeholder="제품번호를 등록해주세요" required>

									</div>
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="col-sm-8">
										
										<input type="hidden" name="plaNo" id="searched-no"
											placeholder="키우고 싶은 식물을 선택해주세요" required>
											
										<input type="text" name="plaName" class="form-control" id="searched-name"
											placeholder="키우고 싶은 식물을 선택해주세요" required>


									</div>

									<a href="#" id="searchplant" data-toggle="modal"
										data-target="#SearchPlant"> <i class="icon-search"></i>
									</a>

									<!-- 모달 띄우는 버튼 -->
									<!-- <a href="#"data-toggle="modal" data-target="#SearchPlant">
									<i class="icon-search"></i>
									</a> -->
								</div>

								<button type="submit" class="btn btn-default btn-submit" id="finished">등록하기</button>

							</form>

							<div id="response"></div>

						</div>
						<!-- ./col -->

						<div class="col-sm-6 outer-top-md inner-left-sm border-left">

							<h2>제품번호란??</h2>
							<p>화분 구매시 주어지는 고유값입니다. 정확하게 입력을 하셔야 화분의 기능을 최대로 활용이 가능합니다.</p>

							<h3>건의사항</h3>
							<ul class="contacts">
								<li>궁금한 것이 있으시다면??</li>
								<li class="red"><a href="/board/notice_list.action"><i
										class="icon-mail-1 contact"></i> 건의사항 가기</a></li>
							</ul>
							<!-- /.contacts -->


						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->
	</section>
	</main>
	<!-- ============================================================= SECTION – CONTACT FORM : END ============================================================= -->



	<!-- ============================================================= MAIN : END ============================================================= -->

	<div id="SearchPlant" class="modal fade " role="dialog">
		<div id="modal-dialog-login" class="modal-dialog SearchPlant">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					&nbsp;<i class="icon-login-1"></i>&nbsp;검색
				</h4>
			</div>
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-body">
					<ul id="searched-plants">
					</ul>
					<button class="btn btn-default" id="search-finished">완료</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================= FOOTER ============================================================= -->

	<jsp:include page="/WEB-INF/views/include/footer/public-footer.jsp" />

	<!-- ============================================================= FOOTER : END ============================================================= -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->

	<jsp:include page="/WEB-INF/views/include/javascript/public-js.jsp" />

	<!-- For demo purposes – can be removed on production : End -->

	<script type="text/javascript">
		$(function() {

			$('#searchplant').on('click',function(event) {
								event.preventDefault();								
								var plaName = $('#plantRegistform').find('[name=plaName]').val();
								$.ajax({
											url : "search_plant.action",
											method : "POST",
											data : {
												"plaName" : plaName
											},
											success : function(data, status,
													xhr) {
												var ul = $('#searched-plants');
												ul.empty();
												for (var i = 0; i < data.length; i++) {
													var li = $('<li></li>');
													var radio = $('<input type="radio" name="searched-plant-name" style="width:20px"><span data-plano=' + data[i].plaNo  + '>'
															+ data[i].plaName 
															+ '</span>');
													li.append(radio);
													ul.append(li);
													}
												
											},
											error : function(xhr, status, err) {

											}
										});
							});

			$('#search-finished').on('click', function(event) {

				$('#SearchPlant').modal('hide');
								
				//$('input[name=searched-plant-name]:selected').parent().find('span')
				var span = $('input[name=searched-plant-name]:checked').next();
				//alert(span.text());
				$('#searched-name').val(span.text());
				$('#searched-no').val(span.attr('data-plano'))
			});
			
		});
	</script>
</body>
</html>