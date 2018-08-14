<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
function openDoApproval() {
	var beforeFlag=false;

	if(${sessionScope.user.eKey != requestSession.cApprover.acApproverFk}){
		beforeFlag=confirm("결재 대상자가 아닙니다. 선결하시겠습니까?");
	}else{
		$('div.modal').modal();
	}
	if(beforeFlag){
		$("#before").attr( "disabled",false);
		$("#before").attr( "checked","checked");
		$('div.modal').modal();
	}
}

function submitCondition(){
	$("#conditionType").submit();
}

$(function() {
	if(${sessionScope.user.eKey == requestSession.approval.aWriterFk}){
		$(".doApproval").hide();
	}
	
});
</script>

<c:forEach items="${approval.aConList}" var="aCon">
	<c:if test="${aCon.acApproverFk == sessionScope.user.eKey}">
		<c:set var="ac" value="${aCon}"></c:set>
	</c:if>
</c:forEach>

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
				<form id="conditionType" action="updateApprovalCondition.do" method="post">
					<input type="hidden" name="doctype" value="${approval.divDoctypeFk}">
					<input type="hidden" name="aKey" value="${approval.aKey}">
					<input type="hidden" name="acKey" value="${ac.acKey}">
					<input type="checkbox" name="approvalType" class="approvalType" value="3" id="after">전결
					<input type="checkbox" name="approvalType" class="approvalType" value="4" disabled id="before">선결
					<input type="checkbox" name="approvalType" class="approvalType" value="5" id="instead">대결
					<hr>
					<input type="radio" name="condition" id="ok" value="1" checked="checked">승인
					<input type="radio" name="condition" id="companion" value="2">반려
				</form>
			</div>
			<!-- Footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="submitCondition();">결재하기</button>
			</div>
		</div>
	</div>
</div>