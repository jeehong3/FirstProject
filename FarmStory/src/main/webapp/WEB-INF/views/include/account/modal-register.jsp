<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="register" class="modal fade" role="dialog">
	<div class="modal-dialog ">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">&nbsp;<i class="icon-user-1"></i>&nbsp;회원 가입</h4>
			</div>
			<div class="modal-body">
				<form id="registerForm" method="post" action="/farmstory/register.action">
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="memId"
							placeholder="아이디를 입력해주세요." required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control bg-ash" name="memPw"
							placeholder="비밀번호를 설정해주세요." required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="memName"
							placeholder="이름을 알려주세요." required>
					</div>
					<div class="form-group">
						<input type="email" class="form-control bg-ash" name="memEmail"
							placeholder="이메일 주소를 알려주세요." required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control bg-ash" name="memPhone"
							placeholder="휴대전화 번호를 알려주세요." required>
					</div>
					<button id="registerBtn" class="btn btn-default">가입하기</button>
				</form>
			</div>
			<div class="modal-footer">
				<div class="haveAccount">
					<p class="modalChange">
						이미 계정이 있으신가요?&nbsp;&nbsp;&nbsp;<a id="callLoginModal" data-dismiss="modal"
							aria-hidden="true">로그인</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>