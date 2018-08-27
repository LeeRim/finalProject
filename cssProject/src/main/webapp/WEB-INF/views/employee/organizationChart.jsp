<%@page import="java.util.List"%>
<%@page import="com.jdl.css.employee.model.vo.EmployeeVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jdl.css.employee.controller.EmployeeController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/views/include/header.jsp" />


<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>


<link rel="stylesheet" href="resources/dist/test/css/jquery.treeview.css" />
<link rel="stylesheet" href="resources/dist/test/css/screen.css" />

<script src="resources/dist/test/lib/jquery.js" type="text/javascript"></script>
<script src="resources/dist/test/lib/jquery.cookie.js"
	type="text/javascript"></script>
<script src="resources/dist/test/lib/jquery.treeview.js"
	type="text/javascript"></script>




</head>
<style>
.frame {
	padding: 0 20px;
	/* border: 1px solid black; */
	width:90%;
	min-width:1200px;
	margin: 20px auto;
}

.sidebar{
  font-size: 14px;
}

.org_map {
	float: left;
	width: 340px;
	/* border: 1px solid black; */
}

.org_map1 {
	float: left;
	width: 340px;
	height: 400px;
	border-top: 3px solid #3c8dbc;
	border-bottom: 2px solid #3c8dbc;
	overflow: auto;
	background: white;
	font-size: 12px;
	color:#585858;
	border-right: 1px #BDBDBD solid;
	border-top-left-radius: 3px;
	
}

.org_map2 {
	float: left;
	width: 340px;
	height: 219px;
	padding:20px 10px;
	background: white;
	border-right: 1px #BDBDBD solid;
	border-bottom-left-radius: 5px;
    border-bottom: 3px solid #3c8dbc;
}

.employee_list {
	float: left;
	width: 70%;
	height: 619px;
	background:white;
    border-top-right-radius: 3px;
/* 	border: 1px solid #848484; */
	border-top: 3px solid #3c8dbc;
	font-size: 15px !important;
	border-bottom: 3px solid #3c8dbc;
}

.employee_list_tab {
	border-bottom: 1px #BDBDBD solid;
	border-right: 1px #BDBDBD solid;
	
}

.employee_list_emp {
	padding: 2px 7px 0 7px;
	border-bottom: 1px #eaeaea solid;
	text-align:center;
}

tr {
	font-size: 15px;
}

td {
	font-size: 15px;
}



.setDiv {
            padding-top: 100px;
            text-align: center;
        }
        .mask {
            position:absolute;
            left:0;
            top:0;
            z-index:9999;
            background: rgba(0,0,0,0.6);
            display:none;
        }
        .window {
        
            display: none;
            background-color: #ffffff;
            width:550px;
            z-index:99999;
            border-radius: 3px;
            
        }
        .window_title{
        display:block;
        width:550px;
        font-size: 16px !important;
       
        border-bottom : 1px solid #A4A4A4;
        padding:5px;
       background: #E6E6E6;
        color:#585858;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
        }
        
        .window_info{
       
        border: 1px solid #A4A4A4;
        
        }
        
        
		.window_pic{
		display:inline-block;
		float:left;
		width:200px;
		height:300px;
		padding: 23px 30px;
		/* border-bottom : 1px solid #A4A4A4; */
		}   
		.window_pic2{
		
		display:block;
		width:152px;
		height:152px;
		border: 1px solid #A4A4A4;
		}		.emp_photo{
		width:150px;
		height:150px;
		
		}
		
		
		.window_content{
		display:inline-block;
		float:left;
		width:350px;
		height:300px;
		padding:20px;
/* 		border-bottom : 1px solid #A4A4A4;  */		
		}   
		
		.window_content_left{
		background: #E6E6E6;
		width: 100px;
		padding:5px;
		border: 1px solid #A4A4A4;
		color:#585858;
		}
		
		.window_content_right{
		width: 200px;
		padding:5px;
		border: 1px solid #A4A4A4;
		color:#585858;
		}


.btn-df{
    background-color: #f4f4f4;
    color: #444;
    border-color: #ddd;
}





</style>

<script type="text/javascript">

	function addwindowEvent(){
	
	    $('.showMask').click(function(e){
	        e.preventDefault();
	        wrapWindowByMask();
	    });
		
	}
	
	
	// 사원 정보 띄우는 메소드
	function callFunction(obj) {
		
		console.log(obj);
		
		$.ajax({
		    type      : 'POST',
		    url         : 'selectEmployeeInfo.do',
		    traditional : true,
		    dataType : "json",
		    data        : { 'main' : obj},
		    success     : function(data) {
		    	
		    	$("#empInfoTitle").empty();
		    	$("#empInfoPhoto").empty();
		    	$("#empInfoView").empty();
		    	
		    	var html1 = $("#empInfoTitle").html()+"'"+data.department+" "+data.eName+" "+data.job+"'님의 신상정보"

		    	var html2 = $("#empInfoPhoto").html()+"<img class='emp_photo' src='resources/upload/empPhoto/"+data.ePhoto+"'/>"
		    		
		    	var html3 = $("#empInfoView").html()+
		    	
		    	"<tr><td class='window_content_left'>사원번호</td>"
			    +"<td class='window_content_right'>"+data.eNo+"</td>"
			    +"</tr><tr><td class='window_content_left'>아이디</td>"
			    +"<td class='window_content_right'>"+data.eId+"</td>"
			    +"</tr> <tr><td class='window_content_left'>이름</td>"
			    +"<td class='window_content_right'>"+data.eName+"</td>"
			    +"</tr><tr><td class='window_content_left'>핸드폰</td>"
			    +"<td class='window_content_right'>"+data.ePhone+"</td>"
			    +"</tr><tr><td class='window_content_left'>이메일</td>"
			    +"<td class='window_content_right'>"+data.eEmail+"</td>"
			    +"</tr><tr><td class='window_content_left'>소속부서</td>"
			    +"<td class='window_content_right'>"+data.department+"</td>"
			    +"</tr><tr> <td class='window_content_left'>직급</td>"
			    +"<td class='window_content_right'>"+data.job+"</td>"
			    +"</tr><tr><td class='window_content_left'>사내번호</td>"
			    +"<td class='window_content_right'>"+data.eExten+"</td></tr>"
		    	
			    
			    $("#empInfoTitle").html(html1); 
			    $("#empInfoPhoto").html(html2); 
			    $("#empInfoView").html(html3); 
		    	
			    
			    
			    
		    },
		    error       : function(request, status, error) {
		        alert(error);
		    }
		});
		
		
		
		
	}

	$(document).ready(function(){
		
		addwindowEvent();
		
		// 사원 정보 띄우는 메소드
		
		
	
	    $('.window .close2').click(function (e) {
	        e.preventDefault();
	        $('.mask, .window').hide();
	    });
	
	    $('.mask').click(function () {
	        $(this).hide();
	        $('.window').hide();
	    });
	});

	// 사원 정보 띄우는 메소드
	function wrapWindowByMask(){
		
	    var maskHeight = $(document).height();
	    var maskWidth = $(window).width();
	
	    $('.mask').css({'width':maskWidth,'height':maskHeight});
	
	    
	    
	    $('.mask').show();
	
	    var left = ( $(window).scrollLeft() + ( $(window).width() - $('.window').width()) / 2 );
	    var top = ( $(window).scrollTop() + ( $(window).height() - $('.window').height()) / 2 );
	
	    
	    $('.window').css({'left':left,'top':top, 'position':'absolute'});
	
	    $('.window').show();
	}
	
	





		//체크박스 트리메뉴
		$(function() {
			$("#tree").treeview({
				collapsed: true,
				
				control:"#sidetreecontrol",
				persist: "location"
				
			});
		})
		
		
		// 날짜 포맷 변환 메소드
		function dateToYYYYMMDD(date){
	    function pad(num) {
	        num = num + '';
	        return num.length < 2 ? '0' + num : num;
	    }
	    return date.getFullYear() + '-' + pad(date.getMonth()+1) + '-' + pad(date.getDate());
		}

		
		    
       
	function chkSubCheckbox(className, obj){
//		console.log(className);
//		console.log($(obj).attr("checked"));
		$("." + className).attr("checked", $(obj).attr("checked"));	
	}

		
		$(document).ready(function() {
			
		
		$("#checkAll").click(function() {

			$("input[name=checkDpt]:checkbox").each(function() {

				$(this).attr("checked", true);

			});
			
			$("input[name=chk]:checkbox").each(function() {

				$(this).attr("checked", true);

			});		
		});
		
		$("#uncheckAll").click(function() {

			$("input[name=checkDpt]:checkbox").each(function() {

				$(this).attr("checked", false);

			});
			
			$("input[name=chk]:checkbox").each(function() {

				$(this).attr("checked", false);

			});		
		});
		
		
		// 전체검색
		$("#allListView").click(function() {
			
			$("#ddd").empty();
			$("#listView").show(); 
			
			$("input[name=checkDpt]:checkbox").each(function() {

				$(this).attr("checked", false);

			});
			
			$("input[name=chk]:checkbox").each(function() {

				$(this).attr("checked", false);

			});		
			
		});
		
		
		
		
		
		$("#getCheckedAll").click(function() {

			
			
			
			var items = [];
			$('input[name=chk]:checked').each(function () {
			    items.push($(this).val());
			});
			console.log(items);
			$.ajax({
			    type      : 'POST',
			    url         : 'organizationChart2.do',
			    traditional : true,
			    dataType : "json",
			    data        : {
			        'main' : items.join(",")
			    },
			    success     : function(data) {
			    	
			    	$("#listView").hide(); 
			    	$("#ddd").empty();
			    	
			    	for(var i in data){
			    		
			    	var no =parseInt(i)+1;
				    	
				    	var date = dateToYYYYMMDD(new Date(data[i].eHireDate));
				    	
			    		
			    	var html = $("#ddd").html()
					+ "<tr bgcolor='#FFFFFF' height='26'>"+

										"<td class='employee_list_emp'>"+no+"</td>"
										+"<td class='employee_list_emp'><a href='javascript:void(0);' onclick='callFunction("+data[i].eKey+");' class='showMask' >"
										+"<b>"+data[i].eId+"</b></a></td>"
										+"<td class='employee_list_emp'>"+data[i].department+"</td>"
										+"<td class='employee_list_emp'>"+data[i].job+"</td>"
										+"<td class='employee_list_emp'><a href='javascript:void(0);' onclick='callFunction("+data[i].eKey+");' class='showMask' >"
										+"<b>"+data[i].eName+"</b></a></td>"
										+"<td class='employee_list_emp'>"+data[i].eExten+"</td>"
										+"<td class='employee_list_emp'>"+data[i].ePhone+"</td>"
										+"<td class='employee_list_emp'>"+date+"</td></tr>";
										
			 $("#ddd").html(html);
			    	}
			    	addwindowEvent();
			    	
			    },
			    error       : function(request, status, error) {
			        alert("사원을 체크해주세요.");
			    }
			});
	});

		
		
	});
		
		
		
		
		
		
		
		
		
		
	</script>




<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<c:import url="../include/left_column.jsp" />



		<div class="content-wrapper">
			<section class="content-header">
				<h1>조직도</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<section style="height: 100%; ">
				<div class="frame">
					<div class="org_map">
						<div class="org_map1">

							<div id="sidetree">
								<div class="treeheader">&nbsp;</div>

								<!-- <div id="sidetreecontrol"><a href="?#">전체 닫기</a> | <a href="?#">전체 열기</a></div> -->
								<ul id="tree" style="width: 250px; padding: 20px;">

									<c:forEach items="${list }" var="e2" varStatus="status">
										<c:if test="${status.count eq 1 and e2.department ne null}">
											<li><label> <input type="checkbox"
													value="${e2.department }" name="checkDpt"
													onclick="chkSubCheckbox(${e2.eDepartFk}, this)"> <strong><b style="color:black;">${e2.department}</b></strong>
											</label> <c:forEach items="${list }" var="e3">
													<c:if test="${e2.department eq e3.department and e3.eEntYn.toString() eq 'N' }">
														<ul style="display: block;">
															<li><label> <input type="checkbox"
																	value="${e3.eKey }" name="chk" class="${e2.eDepartFk}"> ${e3.eName } ${e3.job }
															</label></li>
														</ul>
													</c:if>
												</c:forEach></li>
										</c:if>
										<c:if test="${status.count ne 1 }">
											<c:if test="${list[status.index-1].department ne  e2.department  and e2.department ne null }">
												<li><label> <input type="checkbox"
														value="${e2.department }" name="checkDpt"
														onclick="chkSubCheckbox(${e2.eDepartFk}, this)"> <strong><b style="color:black;">${e2.department }</b></strong>
												</label> <c:forEach items="${list }" var="e4">
														<c:if test="${e2.department eq e4.department and e4.eEntYn.toString() eq 'N' }">
															<ul style="display: block;">
																<li><label> <input type="checkbox"
																		value="${e4.eKey }" name="chk" class="${e2.eDepartFk}"> ${e4.eName } ${e4.job }
																</label></li>
															</ul>
														</c:if>
													</c:forEach></li>
											</c:if>
										</c:if>
									</c:forEach>

								</ul>
								
							</div>
							<%
							
							%>
							


						</div>
						<div class="org_map2">


							<button type="button" class="btn btn-primary margin"
								id="getCheckedAll">사원검색</button>
							<button type="button" class="btn btn-df margin" id="checkAll">전체선택</button>
							<button type="button" class="btn btn-df margin"
								id="uncheckAll">전체해제</button>
								
							<div id="sidetreecontrol">
							<button type="button" class="btn btn-primary margin"
								id="allListView">전체검색</button>
								<a href="?#"><button type="button"
										class="btn btn-df margin">전체닫기</button></a> <a href="?#"><button
										type="button" class="btn btn-df margin">전체열기</button></a>
							</div>
							
						</div>

					</div>

					<div class="employee_list">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							class="tbl_board1" style="color:#585858;">
							<tbody>
								<tr height="24" style="text-align:center; background: #F2F2F2;">
									<td class="employee_list_tab">No</td>
									<td class="employee_list_tab">아이디</td>
									<td class="employee_list_tab">부서</td>
									<td class="employee_list_tab">직급</td>
									<td class="employee_list_tab">이름</td>
									<td class="employee_list_tab">사내번호</td>
									<td class="employee_list_tab">핸드폰</td>
									<td class="employee_list_tab">입사일</td>
								</tr>
								</tbody>
								<tbody id="listView">
								<c:forEach items="${list }" var="e" varStatus="status">
								<c:if test="${e.eEntYn.toString() eq 'N' }">
									<tr bgcolor="#FFFFFF" height="26">
		
										<td class="employee_list_emp">${status.index+1}</td>
										<td class="employee_list_emp"><a href="javascript:void(0);" onclick="callFunction(${e.eKey});" class="showMask">
										<b>${e.eId}</b></a></td>
										<td class="employee_list_emp">${e.department}</td>
										<td class="employee_list_emp">${e.job}</td>
										<td class="employee_list_emp"><a href="javascript:void(0);" onclick="callFunction(${e.eKey});" class="showMask">
										<b>${e.eName}</b></a></td>
										<td class="employee_list_emp">${e.eExten}</td>
										<td class="employee_list_emp">${e.ePhone}</td>
										<td class="employee_list_emp">${e.eHireDate}</td>
									</tr>
									</c:if>
								</c:forEach>
								</tbody>
								<tbody id="ddd">
								</tbody>
						</table>


					</div>
					<div class="setDiv">
					<div class="mask"></div>
				    <div class="window">
				    <div class="window_title" id="empInfoTitle">
				   
				    </div>
				    <div class="window_pic">
				    <div class="window_pic2" id="empInfoPhoto">
				    </div>
				    </div>
				    <div class="window_content">
				    <table>
				    <tbody id="empInfoView"> 
				    </tbody>
				    </table>
				    </div>
				    
				    
				    
				    <button class="close2 btn btn-primary" id="joinBtn"  style="margin-bottom:10px; padding: 6px 20px;">닫기</button>
				     <!-- <input type="button" href="#" class="close" style="margin-right:235px;" value="닫기"/> -->
				     
				       
				        
				        
				    </div>
					</div>








				</div>




			</section>

		</div>

	</div>



	<c:import url="../include/footer.jsp" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>



</html>
