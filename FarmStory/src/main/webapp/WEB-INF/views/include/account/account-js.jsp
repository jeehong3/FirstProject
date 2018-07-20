<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(function() {
		
		$("#loginBtn").on("click", function (event) {
			event.preventDefault();
			$("form#loginForm").submit();
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
		
		if("${loginCheck}" == "wrongId"){
			$("#wrongId").modal("show");
		}
		
		if("${loginCheck}" == "wrongPw"){
			$("#wrongPw").modal("show");
		}
		
	});
</script>
