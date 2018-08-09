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
</head>

<link rel="stylesheet" href="resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">

<!-- InputMask -->
<script src="resources/plugins/input-mask/jquery.inputmask.js"></script>
<script src="resources/plugins/input-mask/jquery.inputmask.phone.extensions.js"></script>
<script src="resources/plugins/input-mask/jquery.inputmask.extensions.js"></script>


<script src="resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>


<style>

.frame{
padding:0 20px;
/* border: 1px solid black;  */
width:100%;
height:100%;
}


.box-body{
display:block;


padding: 20px 100px;
  

}

.form-group{

color:#848484;'

}
.no{
display:inline-block;
font-size:18px;
font-weight:bold;
}
.jobInfo{
display:inline-block;
}

tr{
line-height: 35px;
color:#848484;

}

th{
text-align:center;


}
td{
padding: 5px 10px;
}

.input2{
width:300px;
}



</style>
<body class="hold-transition skin-blue sidebar-mini">

<script type="text/javascript">


function memberJoin(){
	$("#joinForm").submit();	
	
}



function validate(){
	
	$("#eAddress").val($("#eAddress1").val()+","+$("#eAddress2").val())

}

</script>


<div class="wrapper">
	
	<c:import url="../include/left_column.jsp"/>
  
  

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

    <section>
		<div class="frame">
		
		<div class="box box-primary" style="margin-top:50px; width:1000px;">
            <div class="box-header with-border">
              <h3 class="box-title">직위관리 </h3>
              
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="insertMember.do"  onsubmit="return validate();">
            
            <div style="padding: 30px;">
              <table>
              <tr> <th></th><th>직위명</th> <th>직위설명</th>  </tr>
              <tr>
              <td>1.</td>
              
              <td><input type="text" class="form-control" ></td>
               
              <td><input type="text" class="form-control input2"></td>
              </tr>
              <tr>
              <td>2.</td>
              
              <td><input type="text" class="form-control" ></td>
               
              <td><input type="text" class="form-control input2"></td>
              </tr>
              <tr>
              <td>3.</td>
              
              <td><input type="text" class="form-control" ></td>
               
              <td><input type="text" class="form-control input2"></td>
              </tr>
              <tr>
              <td>4.</td>
              
              <td><input type="text" class="form-control" ></td>
               
              <td><input type="text" class="form-control input2"></td>
              </tr>
              
              
              </table>
			</div>
              

              <div class="box-footer" style="text-align:center;">
                <button class="btn btn-primary" id="joinBtn" onclick="memberJoin();" >등록하기</button>
                
              </div>
            </form>
          </div>
		
		
		</div>

   
   


 



    </section>
    
  </div>
 
</div>
<script type="text/javascript">






</script>



	<c:import url="../include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>