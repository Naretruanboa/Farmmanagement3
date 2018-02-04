<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all"
	rel='stylesheet' type='text/css' />

<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>
<script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
<title>แก้ไขข้อมูลยารักษาโรค</title>
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
						<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลยารักษาโรค</p>
					</div>
				</div>
				<div class="row">
					
				</div>
				<br>
				<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลยา</a>
						</h4>
				</div>
							
				<div class="panel-body">
				<form:form method="post" action="edited_medicine" commandName="medicine">
						<form:input path="id" type="hidden" />
						<form:input path="quantity" type="hidden" />
						<form:input path="statusalert" type="hidden"/>
						<div class="row form-group ">
						<div class="col-md-6 ">
						<fieldset><br>
												
							<div class="row form-group">
												<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> ชื่อทางการค้า</label>
												<div class="col-md-6">

													<form:input path="tradeName" type="text"
														class="form-control" />
														

												</div>
											</div>
					
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label">ชื่อวิทยาศาสตร์</label>
						<div class="col-md-6">
							 	<form:input type="text" class="form-control" id="scientificName" path="scientificName"/>													
						</div>
						</div>
						
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label">ชื่อสามัญ</label>
						<div class="col-md-6">
							 	<form:input type="text" class="form-control" id="commonName" path="commonName"/>													
						</div>
						</div>					
						
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> กลุ่มยา</label>
						<div class="col-md-6">
							 	<div>
			
									<form:select class="form-control" id="groupMedicine.id"
															path="groupMedicine.id">
											
												<c:forEach items="${groupmed}" var="group">
													<c:if test="${groupMedicine.id == group.id }">
														<form:option value="${group.id}" selected="selected">${group.value}</form:option></c:if>
															
													<c:if test="${groupMedicine.id != group.id }">
													<form:option value="${group.id }">${group.value}</form:option>
													</c:if>
															
											</c:forEach>
										</form:select>
							 	</div>											
						</div>
						</div>

						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> สรรพคุณ</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="properties" id="properties" type="text"></form:textarea>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">วิธีการใช้</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="instruction" id="instruction" type="text"></form:textarea>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">ผลข้างเคียง</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="sideEffect" id="sideEffect" type="text"></form:textarea>
						</div>
						</div> 
						
						</fieldset>
						</div>
						<div class="col-md-4 ">
						<fieldset><br>
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">ส่วนประกอบ</label>
						<div class="col-md-6">
							<form:textarea rows="3	" cols="45" class="form-control" path="ingredient" id="ingredient" type="text"></form:textarea>
						</div>
						</div> 
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">ระยะหยุดยา</label>
							<div class="col-md-6">
							<div class="input-group">
								<form:input type="text" class="form-control" id="distanceDiscontinued" path="distanceDiscontinued" />
							<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>
														
							</div>	
						</div>
						</div>
						
											
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> หน่วยที่ใช้ในคลัง</label>
						<div class="col-md-6">
							 	<div>
									<form:select class="form-control" id="UnitMedicine.id"
															path="UnitMedicine.id">
											
												<c:forEach items="${un}" var="un">
													<c:if test="${UnitMedicine.id == un.id }">
														<form:option value="${un.id}" selected="selected">${un.value}</form:option></c:if>
															
													<c:if test="${UnitMedicine.id != un.id }">
														<form:option value="${un.id }">${un.value}</form:option>
													</c:if>
															
											</c:forEach>
										</form:select>
							 	</div>											
						</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">สถานที่จัดเก็บ</label>
						<div class="col-md-6">
							<form:input rows="3" cols="45" class="form-control" path="place" id="note" type="text"></form:input>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">หมายเหตุ</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="note" id="note" type="text"></form:textarea>
						</div>
						</div> 
						
						</div> 
						</fieldset>
						</div>
						
						</form:form>
								
								<div class="col-md-offset-9">
									<button name="action" value="edit" id="edit" onclick="editmedicine()"
											class="btn btn-success btn-lg">
											<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									
									<a href="view_medicineH"><button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-reply" aria-hidden="true"></i>&nbsp; ย้อนกลับ
									</button></a>			
								</div>
						
						
						
						</div><!-- จบ body -->			
	
					</div>
					</div>
					<div>
				</div>

			</div>

			</div>

		</div>
<jsp:include page="../footer.jsp"/>

</body>
<script type="text/javascript">

function editmedicine(){
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลยาหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		confirmButtonText: "ต้องการ",
		cancelButtonText: "ไม่ต้องการ",   
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#tradeName").val() == ""){
					swal("กรุณากรอกชื่อทางการค้า");
				}else if($("#groupMedicine\\.id").val() == "0"){
					swal("กรุณาเลือกกลุ่มยา");
				}else if($("#UnitMedicine\\.id").val() == "0"){
					swal("กรุณาเลือกหน่วยที่ใช้ในคลัง");
				}else{

				$.post('edited_medicineH',$("#medicine").serialize(),
				      function (result) {
				     	swal({	title: "เสร็จเรียบร้อย!",   
						/* 	text: "หมายเลขยา "+result,    */
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						}, 
						
						function(){   
							window.location.href='view_medicineH'; 
							});
						//setInterval(function(){location.reload()}, 2000);
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

</html>