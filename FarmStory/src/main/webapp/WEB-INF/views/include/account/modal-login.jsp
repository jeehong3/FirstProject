<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">

#modal-dialog-login {
	width: 350px;
	height: 380px;
}

</style>

<div id="login" class="modal fade" role="dialog">
	<div id="modal-dialog-login" class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">&nbsp;<i class="icon-login-1"></i>&nbsp;로그인</h4>
			</div>
			<div class="modal-body">
				<form method="post" action="/farmstory/login.action">
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="memId"
							placeholder="아이디를 입력해주세요.">
					</div>
					<div class="form-group">
						<input type="password" class="form-control bg-ash" name="memPw"
							placeholder="비밀번호를 입력해주세요.">
					</div>
					<button type="submit" class="btn btn-default">로그인</button>
				</form>
			</div>
			<div class="modal-footer">
				<div class="dontHaveAccount">
					<p>
						아직 계정이 없으신가요? <a id="registerAction" href="" data-dismiss="modal"
							aria-hidden="true">회원가입</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>