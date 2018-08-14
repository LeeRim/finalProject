<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
	
</script>


<!-- 팝업 모달영역 -->
<div class="modal fade" id="layerpop">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- header -->
			<div class="modal-header">
				<!-- 닫기(x) 버튼 -->
				<button type="button" class="close" data-dismiss="modal">×</button>
				<!-- header title -->
				<h4 class="modal-title">Header</h4>
			</div>
			<!-- body -->
			<div class="modal-body">
				<form action="">
					<input type="radio" name="approvalType" value="HTML">HTML
					<input type="radio" name="approvalType" value="HTML">HTML
					<input type="radio" name="approvalType" value="CSS" checked="checked">CSS
					<input type="radio" name="approvalType" value="웹디자인">웹디자인
				</form>
			</div>
			<!-- Footer -->
			<div class="modal-footer">
				Footer
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>