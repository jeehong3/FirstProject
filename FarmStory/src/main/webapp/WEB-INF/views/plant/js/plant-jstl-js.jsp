<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
	/* =================== Plant Write&Update : Start  ====================================================== */
		
		// 사진 파일 업로드 폼을 추가하는 스크립트이다.
		$("#add").on("click", function(e) {
			e.preventDefault();
			e.stopPropagation();
			fn_fileAdd();
		});
		
		// 추가된 사진 파일 업로드 폼을 삭제하는 스크립트이다.
		$("a[name='deleteInput']").on("click", function(e) {
			e.preventDefault();
			fn_fileDelete($(this));
		});
		
		// 사진 파일 업로드 폼을 추가하는 함수이다.
		function fn_fileAdd() {
			/* var str = "<input type='file' name='file_"+(g_count++)+"'/><a href='#this' name='delete' class='btn'>삭제하기</a></p>"; */
			var str = $("<div class='col-sm-12'><input type='file' class='form-control' name='plantImg'><a href='#this' name='deleteInput' class='btn pull-right writeMeunBtn'>삭제</a></div>");
			$("#fileDiv").append(str);

			$("a[name='deleteInput']").on("click", function(e) {
				e.preventDefault();
				fn_fileDelete($(this));
			});
		}
		
		// 추가된 사진 파일 업로드 폼을 삭제하는 함수이다.
		function fn_fileDelete(obj) {
			obj.parent().remove();
		}
		
		// 숫자키만 입력받게 하는 스크립트이다.
		$("input.inputNumberKey").keypress(function (event){
			if (event.which && (event.which <= 47 || event.which >= 58) && event.which != 8) {
				event.preventDefault();
			} 
		});
		
		// 입력받은 식물 정보를 브라우저에서 DB로 보내는 스크립트이다.
		$("#writePlantInfoBtn").on("click", function(event) {
			event.preventDefault();
			$("form#plantInfoForm").submit();
		});

	/* =================== Plant Write&Update : End  ====================================================== */
</script>
