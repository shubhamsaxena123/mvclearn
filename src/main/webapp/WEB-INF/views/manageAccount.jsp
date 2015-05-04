<!-- <g:applyLayout name="admin"> -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>manage account</title>

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styleapp.css" />" >
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/admin.css" />" >
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,300' rel='stylesheet' type='text/css'>
	
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.1"/>" ></script>

</head>
<body>

	<div class="col-md-9 marginAuto">
		<div class="rightcol clearfix">
			<h2 id="welcome-user">Welcome</h2>
			<div id="unsubscribe">
			<c:if test="${!emptyUsername}">
			<a class="btn btn-primary" href="" >unsubscribe</a>
			</c:if>
			</div>
			<div id="showDatatable">
					<span class="totalJobs">You have <span id="jobsOpen"></span> jobs open</span>
					<div id="tableToBeFilled">
					
					<script type="text/javascript">
					$(document).ready(function () {
						$('#table_id').DataTable();
					});
					</script>
					<table id="table_id" class="display">
					<thead>
						<tr>
							<th></th>
							<th></th>
						</tr>
					</thead>
						<tbody>
						<c:if test="${allJobDetails !=null}">						
							<c:if test="${allJobDetails.size()>0}">
								<c:forEach var="list" items="${allJobDetails}">
									<tr id="cla${i+1}">
				                 		<td>
				                 			<c:choose>
						                 		<c:when test="${list.closed}">
						                 			${list.jobTitle}<c:if test="${list.saveVideoInfo != null}"><span class="fa fa-video-camera"></span></c:if>
						                 		</c:when>
						                 		<c:otherwise>
						                 			<a href="/createNewJob/reviewJob?jobid=${list.id}" class='red' id="editJob" data-id="${list.id}">${list.jobTitle} <c:if test="${list.saveVideoInfo != null}"><span class="fa fa-video-camera"></span></c:if> </a>
						                 		</c:otherwise>
					                 		</c:choose>
					                 		<span class="dis-block">Created on <fmt:formatDate pattern="yyyy-MM-dd KK:mma" value="${list.date}"/> <c:if test="${list.closed}"><span class="red">Closed</span></c:if></span>
				                 		</td>
										<td>
											<c:if test="${!list.closed}">
												<a href="" id="${list.id}" data-toggle="modal" class="orange closeJob" data-target=".bs-example-modal-sm">close</a> 
											</c:if>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</c:if>
						</tbody>
					</table>
					</div>
			</div>	
			<!-- jobs closed -->
										<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
										  <div class="modal-dialog modal-sm">
										    <div class="modal-content">
										      <div class="modal-header">
										      	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
										      	 <h4 class="modal-title" id="myModalLabel">Closing Job</h4>
										      </div>
										      <div class="modal-body">
										      	Are you sure you want to close this job?
										      </div>
										      <div class="modal-footer">
												<button type="button" class="btn btn-danger" id="closeJobFinal">Close</button>
												<button type="button" class="btn btn-default" id="closeButton" data-dismiss="modal">Cancel</button>
										      </div>
										    </div>
										  </div>
										</div>
										</div>
					<!-- jobs closed -->
		</div>
	
<script>
	var jobsList=$("#showDatatable tr").size()
	for(i = 1; i <=jobsList; i = i+1){
		if(i%2==0){
			$("#cla"+i).addClass("even")
			}
		else{
			$("#cla"+i).addClass("odd")
			}
		}

	document.getElementById('table_id').addEventListener('click',function(e){
		var evt = e || window.event;
		var target = e.target || e.srcElement;
		var clas = target.className;
		if(clas.indexOf('closeJob') > -1)
		{
			console.log("got it")
			closeAJob(target.id)
		}
		});
	
	function closeAJob(id){
		console.log("Hi "+id)
		$("#closeJobFinal").attr('data-id',id)
	}
	
	$("#closeJobFinal").on('click',function(){
		console.log ("closejob called 1");
		var openJobs
		var url = "/createNewJob/closeJob"
			$.ajax({
				url : url,
				data: {'id':$(this).attr('data-id')},
				success:function(data){
					//$("#submitTemplate").html(data);
					//console.log("data "+data)
					$("#closeButton").trigger("click");
					$("#tableToBeFilled").empty()
					$("#tableToBeFilled").html(data)
					openJobs = $("#openJobs").val();
					console.log("openJobs "+openJobs)
					$('#jobsOpen').text("");
					$('#jobsOpen').text(openJobs);
					console.log("$('#jobsOpen').text "+$('#jobsOpen').text())
				},
				error:function(){
						openJobs = "${session.openJobs}"
						console.log("openJobs "+openJobs)
					}
			})
	})
</script>

</body>
</html>

<!-- </g:applyLayout> -->