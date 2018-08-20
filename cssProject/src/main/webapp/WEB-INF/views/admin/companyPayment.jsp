<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원목록</title>
<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- DataTables -->
  <link rel="stylesheet" href="resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <script src="https://cdn.iamport.kr/js/iamport.payment-1.1.7.js"></script>
<style>
	.row,.table-striped{
		margin-left:auto;
		margin-right:auto;
	}
	.box{
		width:100%;
	}
	.content{
		margin-top:30px;
	}
	th,td{
		text-align:center;
	}
	.payment{
		border:1px solid #bcbcbc;
		float:right;
		margin-right:83px;
		background:#bcbcbc;
		color:white;
		padding:5px;
		font-size:18px;
		cursor:pointer;
	}
	.select{
		height:27px;
		width:75px;
	}
	td{
		padding:10px;
	}
	.choiceBtn{
		border:1px solid #bcbcbc;
		cursor:pointer;
	}
</style>
<script>
var returnCal = 0;
var level = 0;
var voucher = 0;
function pay(){
	var pay = 0;
	<c:if test="${company.counts <=100 }">
		level = 1;
		pay = 7000;
	</c:if>
	<c:if test="${company.counts > 100 && company.counts <=200 }">
		level = 2;
		pay = 6000;
	</c:if>
	<c:if test="${company.counts > 200 }">
		level = 3;
		pay = 5000;
	</c:if>
	console.log(level);
	console.log(pay);

	
	
	if($("#month").val() == "1m"){
		voucher = 1;
		returnCal = level * pay * voucher;	
	}else if($("#month").val() == "3m"){
		voucher = 3;
		returnCal = level * pay *  voucher;	
	}else if($("#month").val() == "6m"){
		voucher = 6;
		returnCal = level * pay * voucher;	
	}else{
		voucher = 12;
		returnCal = level * pay * voucher;	
	}
	console.log(voucher);
	$("#amount").html(returnCal);
}

function kakaopay(){
	IMP.init("imp21823697");
	IMP.request_pay({
	    pg : 'kakaopay',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '마일리지 결제',
	    amount : returnCal,
	    buyer_name : '${company.cName}',
	    kakaoOpenApp : true
	}, function(rsp) {
	    if ( rsp.success ) {
	    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	jQuery.ajax({
	    		url: "companyPaymentP.do", //cross-domain error가 발생하지 않도록 주의해주세요
	    		type: 'POST',
	    		data: {
	    			imp_uid : rsp.imp_uid,
	                cKeyFk : '${company.cKey}',
	                payMileage : rsp.paid_amount,
	                cLevel : level,
	                payVoucher : voucher
	                //기타 필요한 데이터가 있으면 추가 전달
	    		},success:function(data) {
	                 //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	                 var msg = '결제가 완료되었습니다.';
	                 msg += '\n고유ID : ' + rsp.imp_uid;
	                 msg += '\결제 금액 : ' + rsp.paid_amount;
	                 msg += '카드 승인번호 : ' + rsp.apply_num;
	                 alert("결제완료");
	           	},error:function(e){
	           		alert("error");
	           	}
	          }).done(function(data) {
	             //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
//	                 var msg = '결제가 완료되었습니다.';
//	                 msg += '\n고유ID : ' + rsp.imp_uid;
//	                 msg += '\n상점 거래ID : ' + rsp.merchant_uid;
//	                 msg += '\결제 금액 : ' + rsp.paid_amount;
//	                 msg += '카드 승인번호 : ' + rsp.apply_num;
	                
//	                 alert(data);
	          });
	       } else {
	           var msg = '결제에 실패하였습니다.';
	           msg += '에러내용 : ' + rsp.error_msg;
	           
	           alert(msg);

	       }
	   });
}


</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	<c:import url="admin_side.jsp"/>

    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        결제페이지
        <small>결제</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Striped Full Width Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <table class="table table-striped">
                <tr>
                  <th>회사명</th>
                  <th>대표</th>
                  <th>사원수</th>
                  <th >레벨</th>
                  <th>금액(인당)</th>
                  <th>사용기간</th>
                  <th>#</th>
                  <th>금액</th>
                </tr>
                <tr>
                  <td>${company.cName }</td>
                  <td>${company.cOwner }</td>
                  <td>${company.counts }</td>
                  <c:if test="${company.counts <=100 }">
	                  <td>1</td>
	                  <td>7000</td>
                  </c:if>
                  <c:if test="${company.counts > 100 && company.counts <=200 }">
	                  <td>2</td>
	                  <td>6000</td>
                  </c:if>
                  <c:if test="${company.counts > 200 }">
	                  <td>3</td>
	                  <td>5000</td>
                  </c:if>
                  <td>
                  	<select class="select" id="month">
                  		<option value="1m">1개월</option>
                  		<option value="3m">3개월</option>
                  		<option value="6m">6개월</option>
                  		<option value="12m">12개월</option>
                  	</select>
                  </td>
                  <td><div class="choiceBtn" onclick="pay();">선택</div></td>
                  <td id="amount"></td>
                </tr>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="payment" onclick="kakaopay();">결제하기</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
    
  </div>
  <!-- /.content-wrapper -->	


<c:import url="../include/footer.jsp"/>
<!-- DataTables -->
<script src="resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>