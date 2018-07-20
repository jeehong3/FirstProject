<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="logout" class="modal fade" role="dialog">
	<div id="modal-dialog-logout" class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header" >
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">&nbsp;<i class="icon-logout-1"></i>로그아웃</h4>
			</div>
			<div class="modal-body" align="center">
				<h4>${loginuser.memName}&nbsp;님&nbsp;<br>로그아웃 하시겠습니까?</h4>
			</div>
			<div class="modal-footer">
				<a href="/farmstory/logout.action" class="btn">확인</a>&nbsp;&nbsp;&nbsp;
					<a class="btn" data-dismiss="modal" aria-hidden="true">취소</a>
			</div>
		</div>
	</div>
</div>