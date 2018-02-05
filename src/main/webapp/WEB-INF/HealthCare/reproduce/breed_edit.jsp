
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all"
	rel='stylesheet' type='text/css' />

<link href="<c:url value="/resources/css/easy-autocomplete.min.css" />" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/easy-autocomplete.themes.min.css" />" rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="<c:url value="/resources/js/jquery.easy-autocomplete.min.js" />"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">

<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>
<title>แก้ไขข้อมูลการผสมพันธุ์</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
	<br><br>
	<div id="wrapper">
		<div id="content">
			<div class="container">
				<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลการผสมพันธุ์</p>
					</div>
				</div>
				<div class="row">
					<hr>
				</div>
				<br> <br>
				<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<span class="fa fa-list-alt fa-lg"></span>แก้ไขข้อมูลการผสมพันธุ์</a>
						</h4>
				</div>
							
				<div class="panel-body">
							<form:form action="breeding_edited" method="POST"  id="breeding"
							modelAttribute="breeding"  commandName="breeding" >
							<form:input path="id" type="hidden"  />
						<div class="row form-group ">
						<div class="col-md-6 ">
						
						<fieldset><br>
						
						<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="white">*</font> เบอร์แรกเกิด </label>
								<div class="col-md-6">
								<input type="text" class="form-control" value="${breeding.cattleByCattlemaId.num }" disabled="disabled" />
								<form:input path="cattleByCattlemaId.id" id="cattleByCattlemaId.id"  type="hidden" class="form-control"  />  
								</div>
							</div>
						
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ครั้งที่ผสม</label>
											<div class="col-md-6">
												<form:input path="amount" id="amount" class="form-control" />
											</div>
										</div>	
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>แจ้งเตือนตรวจท้อง</label>
											<div class="col-md-6">
												<div class="input-group">
												 <c:forEach items="${dAlertList}" var="d">
														<input name	="day_input" id="day_input" value="${d.value}" type="text" class="form-control" readonly style="background-color:#e4ecf7"/>
													
														<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>  
													</c:forEach>  	
													
													 
												<%-- 	<form:input path="amount" id="amount" class="form-control" />
												 --%>
													
												</div>
											
											</div>
										</div>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="White">* </font>หมายเหตุ</label>
											<div>
											<form:input path="note" id="note" class="form-control" />
											</div>
										</div>
						
							</fieldset>
							</div>
							
							<div class="col-md-6">
								<fieldset><br>
						
							
							
							<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> หมายเลขพ่อพันธุ์</label>
												<div class="col-md-6">
							 						<div>
														
														
															<input id="fatcatl" type="text" class="form-control" value="${breeding.cattleByCattlefaId.num }" readonly style="background-color:#e4ecf7"/> 
															<form:input path="cattleByCattlefaId.id" id="cattleByCattlefaId.id" type="hidden" class="form-control"  />
													
							 						</div>													
													<!-- <input path="" id="" type="text" class="form-control"/> 
													<input path="id" id="id" type="hidden" class="form-control"/>-->
												</div>
										</div>
										
							<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ผู้บันทึก </label>
								<div class="col-md-6">
														
									<form:select class="form-control" id="member.id" path="member.id">
										<%-- <form:option value="0">ผู้บันทึก</form:option> --%>
												<c:forEach items="${ulist}" var="user">
													<c:if test="${member.id == user.id }">
														<form:option value="${un.id}" selected="selected">${user.first}&nbsp;${user.last }</form:option></c:if>
															
													<c:if test="${member.id != user.id }">
														<form:option value="${user.id }">${user.first}&nbsp;${user.last }</form:option>
													</c:if>
															
											</c:forEach>
									</form:select>
									
								
									
								</div>
							</div>			
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>วันที่ผสมพันธุ์</label>
											<div class="col-md-6">
												
												<form:input path="date" id="date" class="form-control"  />
												<%-- <input  id="fatcatl" type="text" class="form-control" value="${breeding.date }" readonly style="background-color:#e4ecf7"/> --%>
												
											</div>
										</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>เวลาที่ผสมพันธุ์</label>
											<div class="col-md-6">
												<form:input path="time" id="time" type="time"  class="form-control"  />
												<%-- <input value="${breeding.time }" name="time" id="time" type="time" class="form-control" disabled="disabled"/> --%>
											</div>
										</div>	
							
							</fieldset>
						
						</div> 
						</div>
						</form:form>
				</div>				
							
								<div class="col-md-offset-8">
									<button name="action" value="Add" id="add" onclick="edit()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									

									<a href="breeding_list"><button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
									</button>	<br><br><br>	</a>	
					</div>
					</div>
					</div>
					<div>
				</div>

			</div>

			</div>

		</div>
<%@ include file="../footer.jsp"%>

<script type="text/javascript">
	function cancel() {
		location.reload();
	} 
	
	// ยืนยันบันทึก
	 function edit(){
		swal({	title: "ยืนยันบันทึกข้อมูล?",   
			text: "คุณต้องการยืนยันบันทึกข้อมูลการผสมพันธุ์หรือไม่!",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#55c7dd",   
			confirmButtonText: "ต้องการ",
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   
			closeOnCancel: false }, 
			function(isConfirm){   
				if (isConfirm) {
					if($("#member\\.id").val() == "0"){
						swal("กรุณากรอกผู้บันทึก");
					}else if($("#cattleByCattlemaId\\.id").val() == "0"){	
						swal("กรุณากรอกหมายเลขแม่พันธุ์");
					}else if($("#cattleByCattlefaId\\.id").val() == "0"){
						swal("กรุณากรอกหมายเลขพ่อพันธุ์");
					}else if($("#amount").val() == ""){
						swal("กรุณากรอกครั้งที่ผสม");
					}else if($("#note").val() == ""){
						swal("กรุณากรอกหมายเหตุ")
					}else if($("#time").val() == ""){
						swal("กรุณากรอกเวลาผสมพันธุ์")
					}else if($("#date").val() == ""){
						swal("กรุณากรอกวันผสมพันธุ์")	
					}else{


					$.post('breeding_edited',$("#breeding").serialize(),
					      function (result) {
					     	swal({	title: "Success!",   
								/* text: "หมายเลขยา "+result,  */   
								timer: 2000,   
								type: "success",
								showConfirmButton: false },
								function(){   
									window.location.href='breeding_list'; 
							});
							/* setInterval(function(){location.reload()}, 2000); */
						})
					}
					} else { 
					swal({	title: "Cancelled!",   
							text: "คุณได้ยกเลิกการบันทึกข้อมูล",   
							timer: 1000,   
							type: "error",
							showConfirmButton: false 
					});
				} 
			}
		);
	 }
	
</script>


</body>
</html>