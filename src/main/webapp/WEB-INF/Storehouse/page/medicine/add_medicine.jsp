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
<title>ลงทะเบียนยาใหม่</title>
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
						<p style="font-size: 28px; font-weight: 700; color: white;">การลงทะเบียนยา</p>
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
							<form:form action="medicine" method="POST"  id="medicine"
							modelAttribute="medicine"  commandName="show" >
							<form:input path="quantity" value="0" type="hidden"></form:input>
							<form:input path="statusalert" value="0" type="hidden"></form:input>
						<div class="row form-group ">
						<div class="col-md-6 ">
						<fieldset><br>
												
							<div class="row form-group">
												<label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font> ชื่อทางการค้า</label>
												<div class="col-md-6">

													<form:input path="tradeName" type="text"
														class="form-control" />
														<form:input path="id" type="hidden"
														class="form-control" />

												</div>
											</div>
					
						<div class="row form-group">
							<label class="col-md-offset-0 col-md-3 control-label">ชื่อวิทยาศาสตร์</label>
						<div class="col-md-6">
							 	<form:input type="text" class="form-control" id="scientificName" path="scientificName"/>													
						</div>
						</div>
						
						<div class="row form-group">
							<label class="col-md-offset-0 col-md-3 control-label">ชื่อสามัญ</label>
						<div class="col-md-6">
							 	<form:input type="text" class="form-control" id="commonName" path="commonName"/>													
						</div>
						</div>
										
						
						<div class="row form-group">
							<label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font> กลุ่มยา</label>
						<div class="col-md-6">
							 	<div>
			
									<form:select class="form-control" id="groupMedicine.id"
															path="groupMedicine.id">
											<form:option value="0">เลือกกลุ่มยา</form:option>
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
							<label  class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>สรรพคุณ</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="properties" id="properties" type="text"></form:textarea>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-0 col-md-3 control-label">วิธีการใช้</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="instruction" id="instruction" type="text"></form:textarea>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-0 col-md-3 control-label"> ผลข้างเคียง</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="sideEffect" id="sideEffect" type="text"></form:textarea>
						</div>
						</div> 
						
						</fieldset>
						</div>
						<div class="col-md-4 ">
						<fieldset><br>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"> ส่วนประกอบ</label>
						<div class="col-md-6">
							<form:textarea rows="3	" cols="45" class="form-control" path="ingredient" id="ingredient" type="text"></form:textarea>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label">ระยะหยุดยา</label>
							<div class="col-md-6">
							<div class="input-group">
								<form:input type="text" class="form-control" id="distanceDiscontinued" path="distanceDiscontinued" />
							<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>
														
							</div>	
						</div>
						</div>						
						
						<%-- <div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label">ระยะหยุดยา</label>
							<div class="col-md-6">
								<div class="input-group">
									<form:input type="number" class="form-control" id="distanceDiscontinued" path="distanceDiscontinued" />
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>
														
								</div>	
							</div>
						</div> --%>
						
						<div class="row form-group">
							<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> หน่วยที่ใช้ในคลัง</label>
						<div class="col-md-6">
							 	<div>
									<form:select class="form-control" id="UnitMedicine.id"
															path="UnitMedicine.id">
											<form:option value="0">เลือกหน่วยยาสำหรับใช้ในคลัง</form:option>
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
							<label  class="col-md-offset-1 col-md-3 control-label">สถานที่จัดเก็บ</label>
						<div class="col-md-6">
							<form:input rows="3" cols="45" class="form-control" path="place" id="note" type="text"></form:input>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font color="red"></font> หมายเหตุ</label>
						<div class="col-md-6">
							<form:textarea rows="3" cols="45" class="form-control" path="note" id="note" type="text"></form:textarea>
						</div>
						</div> 
						
						</div> 
						</fieldset>
						</div>
						
						</form:form>
								<div class="col-md-offset-9">
									<button name="action" value="Add" id="add" onclick="addm()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									<a href="view_medicine"><button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
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
	</div>
		
<script type="text/javascript">
/* 	$(document).ready(function(){
		
		if($("#id").val() != ""){
			$("#add").hide();
		}
		
		if( $("#id").val() == ""){
		$("#edit").hide();
	}
		
	})
 */
	// ยืนยันบันทึก
	 function addm(){
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
						$.post('chkMed',{name:$("#tradeName").val()},function(msg){
							if(msg=="yes"){

					$.post('addmedi',$("#medicine").serialize(),
					      function (result) {
					     	swal({	title: "สำเร็จ",   
								text: "บันทึกการลงทะเบียนเรียบร้อยแล้ว!", 
								timer: 2000,   
								type: "success",
								showConfirmButton: false 
							});
							setInterval(function(){location.reload()}, 2000);
						})
					}//end if spost
					else{swal("ผิดพลาด", "ชื่อยาซ้ำ!", "error");}
				}) //end post
					}
					} else { 
					swal({	title: "ยกเลิก!",   
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