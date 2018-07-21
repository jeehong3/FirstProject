<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(function() {
		
		<c:if test="${loginCheck eq 'wrongId'}">
			$("#wrongId").modal("show");
		</c:if>
		<c:if test="${loginCheck eq 'wrongPw'}">
			$("#wrongPw").modal("show");
		</c:if>

		$("#loginBtn").on("click", function (event) {
			event.preventDefault();
			if($("#inputId").val() == ""){
				//alert("아이디 입력란이 공백입니다.");
			} else if($("#inputPw").val() == ""){
				//alert("비밀번호 입력란이 공백입니다.");
			} else{
				
				$("form#loginForm").submit();
				
			}
		});
		
		$("#registerBtn").on("click", function (event) {
			event.preventDefault();
			$("form#registerForm").submit();
		});
		
		$("#callLoginModal").on("click", function (event) {
			event.preventDefault();
			$("#login").modal("show");
		});
		
		$("#callRegisterModal").on("click", function (event) {
			event.preventDefault();
			$("#register").modal("show");
		});
		
		$(".wrongConfirm").on("click", function (event) {
			event.preventDefault();
			$("#login").modal("show");
		});
		
	});
</script>
