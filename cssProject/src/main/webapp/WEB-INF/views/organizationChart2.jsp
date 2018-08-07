<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  
  
<link rel="stylesheet" href="resources/dist/test/css/jquery.treeview.css" />
<link rel="stylesheet" href="resources/dist/test/css/screen.css" />

<script src="resources/dist/test/lib/jquery.js" type="text/javascript"></script>
<script src="resources/dist/test/lib/jquery.cookie.js" type="text/javascript"></script>
<script src="resources/dist/test/lib/jquery.treeview.js" type="text/javascript"></script>
  
  
  
  
</head>
<style>

.frame{
padding:0 20px;
border: 1px solid black; 
width:1500px;
}

.org_map{
float:left;
width:340px;
border: 1px solid black; 

}
.org_map1{
float:left;
width:340px;
height:400px;
border: 1px solid black; 
overflow:auto;
background:white;
font-size:11px;
}
.org_map2{
float:left;
width:340px;
min-height:300px;
border: 1px solid black; 
}

.employee_list{
float:left;
width:900px;
height:100%;
border: 1px solid black; 
font-size:15px !important;

}

.employee_list_tab{
border-bottom:1px #BDBDBD solid;
border-right:1px #BDBDBD solid;
padding:3px 0 0 7px;"

}

.employee_list_emp{
padding:2px 7px 0 7px;
border-bottom:1px #eaeaea solid;
}



tr{
font-size: 15px;
}
td{
font-size: 15px;
}



</style>

<script type="text/javascript">
		$(function() {
			$("#tree").treeview({
				collapsed: true,
				
				control:"#sidetreecontrol",
				persist: "location"
			});
		})
		
	</script>




<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="include/left_column.jsp"/>
  
  

  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        조직도
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <section style="height:100%; max-height:3000px !important;">
		<div class="frame">
		<div class="org_map">
		<div class="org_map1">
		
		<div id="sidetree">
	<div class="treeheader">&nbsp;</div>

	<!-- <div id="sidetreecontrol"><a href="?#">전체 닫기</a> | <a href="?#">전체 열기</a></div> -->
	<ul id="tree" style="width: 250px; padding:20px;">
		<li>
		<label>
    <input type="checkbox" value="">
   <strong><b>임원</b></strong>
  		</label>
			
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">홍길동
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">장보고
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">김이박
  				</label>
			</ul>
			
		</li>
		<li>
			<label>
    <input type="checkbox" value="">
   <strong><b>경영지원팀</b></strong>
  		</label>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">이순신
  				</label>
			</ul>
			<ul>
				
					<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">이박최
  				</label>
			</ul>
			
			</ul>
		</li>
		<li>
		<label>
    <input type="checkbox" value="">
   <strong><b>현장서비스팀</b></strong>
  		</label>
  		<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">최이박
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">유관순
  				</label>
			</ul>
			<ul>
				<label> - &nbsp;
    <input type="checkbox" value="">강감찬
  				</label>
			</ul>
			
  		
		</li>
		
		
	</ul>
</div>
		

		</div>
		<div class="org_map2">
		
		<button type="button" class="btn bg-maroon margin">사원검색</button>
		<button type="button" class="btn bg-orange margin">전체선택</button>
		<button type="button" class="btn bg-orange margin">전체해제</button>
		<div style="display:block;">
		<a href="department.do"><button type="button" class="btn bg-purple margin">부서관리</button></a>
		<a href="jobGrade.do"><button type="button" class="btn bg-purple margin">직위관리</button></a>
		<a href="memberAdd.do"><button type="button" class="btn bg-purple margin">사원등록</button></a></div>
		<button type="button" class="btn bg-olive margin">쪽지보내기</button>
		</div>
		
		</div>
		
		<div class="employee_list">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="tbl_board1">
      <tbody><tr height="24">
        <td class="employee_list_tab">No </td>
        <td class="employee_list_tab">아이디</td>
        <td class="employee_list_tab">부서 </td>
        <td class="employee_list_tab">직급 </td>
        <td class="employee_list_tab">이름 </td>
        <td class="employee_list_tab">사내번호 </td>
        <td class="employee_list_tab">핸드폰 </td>
        <td class="employee_list_tab">입사일 </td>
      </tr>
      <c:forEach items="${list }" var="e">
            <tr bgcolor="#FFFFFF" height="26">
         
        <td class="employee_list_emp">1</td>
        <td class="employee_list_emp"><a href="javascript:ef_open(5017)"><b>${e.eId}</b></a></td>
        <td class="employee_list_emp">${e.eDepart} </td>
        <td class="employee_list_emp">${e.eJob}</td>
        <td class="employee_list_emp"><a href="javascript:ef_open(5017)"><b>${e.eName}</b></a></td>
        <td class="employee_list_emp">${e.eExten}</td>
        <td class="employee_list_emp">${e.ePhone}</td>
        <td class="employee_list_emp">${e.eHireDate}</td>
      </tr>
          </c:forEach>
                </tbody></table>
		
		
		</div>
		
		
		
		
		
		
		
		
		
		
		</div>

   
   

    </section>
    
  </div>
 
</div>



	<c:import url="include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>