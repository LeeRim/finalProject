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


<link rel="stylesheet" href="resources/dist/test/css/go_home_dashboard.css" />
<link rel="stylesheet" href="resources/dist/test/css/go_style.css" />

<style>

.gadget_design_wrap{
    border: 1px solid #ccc!important;
    z-index: 1;
    width:700px;
    }

.go_gadget_header{

	cursor: default;
    display: block;
    position: relative;
    height: 28px;
    padding: 0px 8px;
    border: none;
    border-bottom: 1px solid #ccc;
    background: #F3F3F6;
    vertical-align: middle;

}

</style>
  
  <script>
  	function boardPage(bType){
  		location.href="borderList.do?bCateGory=" + bType;
  	}
  	function board(){
  		location.href="borderIndex.do"
  	}
  </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="../include/left_column_employee.jsp"/>
  
  


  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">

    </section>

    <!-- Main content -->
    <section class="content container-fluid">

<div class="gadget_design_wrap ">
<div class="go_gadget_header">
<div class="gadget_h1">
<span class="type"><span class="ic_dashboard2 ic_type_approval" title="결재"></span></span>
<span class="title">결재 대기 문서</span></div></div>	
 <div class="scroll_wrap_x ie9-scroll-fix"><table class="type_normal list_approval ">
 <thead><tr><th class="sorting_disabled date">
 <span class="title_sort">기안일<ins class="ic"></ins></span>
 </th><th class="sorting_disabled doc">
 <span class="title_sort">결재양식<ins class="ic"></ins></span></th>
 <th class="sorting_disabled subject"><span class="title_sort">제목<ins class="ic"></ins></span></th>
 <th class="sorting_disabled attach"><span class="title_sort">첨부</span></th></tr></thead><tbody>					
 <tr style="display:">				<td colspan="7">					<p class="data_null">						
 <span class="ic_data_type ic_no_contents"></span>						
 <span class="txt">목록이 없습니다.</span>					</p>				</td>			</tr>		
 				</tbody></table>	 </div>				</div>










    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="../include/footer.jsp"/>
<P>  The time on the server is ${serverTime}. 111</P>
</body>
</html>