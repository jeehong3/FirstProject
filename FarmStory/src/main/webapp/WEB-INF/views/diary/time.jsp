<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test</title>

<!-- Bootstrap Core CSS -->
<link href="/farmstory/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/farmstory/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/farmstory/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="/farmstory/resources/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="/farmstory/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>
<body>

	<!-- <div id="wrapper">
		<div id="page-wrapper">
			<div class="row"> -->
	<div class="panel panel-default">
		<div class="panel-heading">
			<i class="fa fa-bar-chart-o fa-fw"></i> 나의 화분 정보
			<div class="pull-right">
				<div class="btn-group">
					<button type="button"
						class="btn btn-default btn-xs dropdown-toggle"
						data-toggle="dropdown">
						기간선택 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu pull-right" role="menu">
						<li><a href="findTime.action">실시간</a></li>
						<li><a href="findDay.action">일간</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.panel-heading -->
		<div class="panel-body">
			<div class="row">
				<div>
					<form id="frm" action="findTime.action" method="post">
						&emsp;&nbsp;날짜 입력: <input type="date" id="date" name="date" value=${ date }>
						<input type="submit" value="전송">
					</form>
				</div>
				<br>
				<div class="col-lg-4">
					<div class="table-responsive">
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th>날짜</th>
									<th>온도</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="val" items="${ vals }" end="27">
									<c:if test="${ val.plvType eq '온도' }">
										<tr>
											<td>${ val.plvDateTime }</td>
											<td>${ val.plvVal }</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th>날짜</th>
									<th>습도</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="val" items="${ vals }" end="27">
									<c:if test="${ val.plvType eq '습도' }">
										<tr>
											<td>${ val.plvDateTime }</td>
											<td>${ val.plvVal }</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th>날짜</th>
									<th>조도</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="val" items="${ vals }" end="27">
									<c:if test="${ val.plvType eq '조도' }">
										<tr>
											<td>${ val.plvDateTime }</td>
											<td>${ val.plvVal }</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th>날짜</th>
									<th>압력</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="val" items="${ vals }" end="27">
									<c:if test="${ val.plvType eq '압력' }">
										<tr>
											<td>${ val.plvDateTime }</td>
											<td>${ val.plvVal }</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- /.table-responsive -->
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- jQuery -->
	<script src="/farmstory/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/farmstory/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/farmstory/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="/farmstory/resources/vendor/raphael/raphael.min.js"></script>
	<script src="/farmstory/resources/vendor/morrisjs/morris.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/farmstory/resources/dist/js/sb-admin-2.js"></script>

</body>
</html>