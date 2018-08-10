<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:import url ="../include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  
  <script>
  	function sendNoteList(){
  		location.href="sendNoteList.do";
  	}
  </script>
  
 
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="left_column_note.jsp"/>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="height: 100%;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
 		<div class="row">
       
        <div class="col-md-9" style="width: 99%">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title"><c:out value="${sendDetail.snTitle}"/></h3>
				<span class="mailbox-read-time pull-right"><c:out value="${sendDetail.snWriteDate}"/></span>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="mailbox-read-info">
                <h5>보낸사람: <c:forEach items="${sendDetail.employee}" var="employee" >
                						${employee.eName}
                					</c:forEach><br>
                	   받는사람: <c:forEach items="${receiveList}" var="receiver" varStatus="st">
                	   				<c:choose>
                	   					<c:when test="${st.last}">
                	   						 <c:out value="${receiver.name}${receiver.job}"/>
                	   					</c:when>
                	   					<c:otherwise>
                	   						<c:out value="${receiver.name}${receiver.job}, "/>
                	   					</c:otherwise>
                	   				</c:choose>
                	   				</c:forEach><br>
                </h5> 
              </div>
              <!-- /.mailbox-read-info -->
              <div class="mailbox-read-message">
                	${sendDetail.snContent}
              </div>
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <ul class="mailbox-attachments clearfix">
              <c:forEach items="${sendDetail.attach}" var="attach">
                <li>
                <c:choose>
	                <c:when test="${fn:substringAfter(attach.attaFileName, '.') eq 'jpg' || fn:substringAfter(attach.attaFileName, '.') eq 'png'}">
	                   <span class="mailbox-attachment-icon has-img"><img src="/css/resources/upload/sendNote/<c:out value="${attach.attaFileName}"/>" alt="Attachment"></span>
					</c:when>
					<c:otherwise>
		                  <span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o"></i></span>
					</c:otherwise>					
                </c:choose>

                  <div class="mailbox-attachment-info">
                    <a href="/css/resources/upload/sendNote/<c:out value="${attach.attaFileName}"/>"  class="mailbox-attachment-name" download><i class="fa fa-paperclip"></i> <c:out value="${attach.attaFileName}"/></a>
                        <span class="mailbox-attachment-size">
                          <c:out value="${attach.attaFilesize}"/>
                        </span>
                  </div>
                </li>
              </c:forEach>
              </ul>
            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
              <div class="pull-right">
              <button type="button" class="btn btn-default"><i class="fa fa-trash-o"></i> 삭제</button>
              <button type="button" class="btn btn-default" onclick="sendNoteList();"><i class="fa fa-print"></i> 리스트</button>
              </div>
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="../include/footer.jsp"/>
</body>
</html>