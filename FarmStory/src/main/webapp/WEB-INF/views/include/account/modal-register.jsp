<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.modal-header {
	border-top: 6px solid #3F8DBF;
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
	border-bottom: 0;
	padding: 10px 20px;
}

.form-group {
	padding: 0 18px;
	border-color: #e5e5e5;
	box-shadow: none;
}

.modal-footer {
	padding: 10px 20px;
	border-top: 0;
	text-align: center;
}

.modal-dialog {
	width: 350px;
	height: 600px;
}

.modal-body {
	padding: 10px 20px;
}

.btn-default {
	width: 100%;
	background-color: #3F8DBF;
	border: none;
	color: #fff;
	margin-top: 3px;
}
</style>

<div id="register" class="modal fade" role="dialog">
	<div class="modal-dialog ">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">&nbsp;<i class="icon-user-1"></i>&nbsp;회원 가입</h4>
			</div>
			<div class="modal-body">
				<form method="post" action="">
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="Id"
							placeholder="아이디를 입력해주세요.">
					</div>
					<div class="form-group">
						<input type="password" class="form-control bg-ash" name="Pw"
							placeholder="비밀번호를 설정해주세요.">
					</div>
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="Name"
							placeholder="이름을 알려주세요.">
					</div>
					<div class="form-group">
						<input type="email" class="form-control bg-ash" name="Email"
							placeholder="이메일 주소를 알려주세요.">
					</div>
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="Phone"
							placeholder="휴대전화 번호를 알려주세요.">
					</div>
					<button type="button" class="btn btn-default">가입하기</button>
				</form>
			</div>
			<div class="modal-footer">
				<div class="haveAccount">
					<p>
						이미 계정이 있으신가요? <a id="loginAction" href="" data-dismiss="modal"
							aria-hidden="true">로그인</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>