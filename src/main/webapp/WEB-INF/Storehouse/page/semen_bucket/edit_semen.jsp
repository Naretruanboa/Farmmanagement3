<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ลงทะเบียนน้ำเชื้อ</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
	<div class="container">
		<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">การลงทะเบียนน้ำเชื้อ</p>
			</div>
		</div>
		<br><br><br>
		<div class="row form-group"> <!-- //ตาราง -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลน้ำเชื้อ</a></h4>
				</div>
				<div class="panel-body"><br>
				
				
				<form:form action="edited_semen" method="POST"  id="semen" modelAttribute="semen"  commandName="semen" >
				<form:input path="id" type="hidden" />
				<form:input path="quantity" type="hidden" />
				<form:input path="statusalert" type="hidden"/>
					<div class="row form-group">
						<div class="col-md-6 "> <!-- //คอลัม1 -->
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> หมายเลขน้ำเชื้อ/ชื่อพ่อพันธุ์</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="nameCattle" path="nameCattle"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> สายพันธุ์</label>
								<div class="col-md-6">
							 		<form:select path="Breed.id" id="Breed.id" class="form-control" >
							 			<form:option value="0">เลือกสายพันธุ์</form:option>
							 			<c:forEach items="${breed }" var="breedtype">
							 				<c:if test="${Breed.id == breedtype.id }">
							 					<form:option value="${breedtype.id }" selected="selected">${breedtype.value }</form:option>
							 				</c:if>
							 				<c:if test="${Breed.id != breedtype.id}">
							 					<form:option value="${breedtype.id }">${breedtype.value }</form:option>
							 				</c:if>
							 			</c:forEach>
							 		</form:select>												
								</div>
							</div>
							
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> เบอร์ประจำตัวพ่อพันธุ์</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="HNumber" path="HNumber"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> สีพ่อพันธุ์</label>
								<div class="col-md-6">
							 		<form:select path="Color.id" id="colorid" class="form-control" >
							 			<form:option value="0">เลือกสีพ่อพันธุ์</form:option>
							 			<c:forEach items="${color }" var="co">
							 				<c:if test="${Color.id == co.id }">
							 					<form:option value="${co.id }" selected="selected">${co.value }</form:option>
							 				</c:if>
							 				<c:if test="${Color.id != co.id}">
							 					<form:option value="${co.id }">${co.value }</form:option>
							 				</c:if>
							 			</c:forEach>
							 		</form:select>												
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> สีหลอด</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="tubeColor" path="tubeColor"/>												
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">สีจุกปิด</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="lidColor" path="lidColor"/>										
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">ขนาดหลอด</label>
								<div class="col-md-6">
							 		<form:select class="form-control" path="tubeSize" id="tubeSize">
							 			
										<option value="0.25">0.25 ml</option>
										<option value="0.50">0.50 ml</option>
										
										
												
							 		</form:select>										
								</div>
							</div>
						</div> <!-- //closeคอลัม1 -->
						<div class="col-md-4 "> <!-- //คอลัม2 -->			
							
							
							<div class="row form-group ">
								<label class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font> เจ้าของ</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="farm" path="farm"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-1 col-md-4 control-label"> ตัวแทนจำหน่าย</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="dealer" path="dealer"/>													
								</div>
							</div>
							<div class="row form-group">
							<label  class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font> ถังจัดเก็บ</label>
							<div class="col-md-6">
								<div class="row form-group">
								
									<form:select path="bucket.id" class="form-control" id="bucketid" >
									 	<form:option value="0">เลือกรหัสถังเก็บน้ำเชื้อ</form:option>
										<c:forEach items="${bucket }" var="bucket">
											<c:if test="${Bucket.id == bucket.id }">
												<form:option value="${bucket.id }" selected="selected">${bucket.number }</form:option>
											</c:if>
											<c:if test="${Bucket.id != bucket.id }">
												<form:option value="${bucket.id }">${bucket.number }</form:option>
											</c:if>
										</c:forEach>
									</form:select>
								</div>
								<div class="row form-group">
								<form:input type="number" class="form-control" path="canister" placeholder="Canister"/>
								</div>
								<div class="row form-group">
									<form:select path="rack" class="form-control">
										<form:option value="0">เลือก Rack</form:option>
									 	<form:option value="บน">บน</form:option>
									 	<form:option value="ล่าง">ล่าง</form:option>
									</form:select>
								
								</div>
							</div>
						</div>
						</div> <!-- //closeคอลัม2 -->
					</div>
			</form:form>
					
					
					<div class="col-md-offset-9">
									<button name="action" id="edit" onclick="editedsemen()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									<a href="view_semen"><button name="action" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-reply" aria-hidden="true"></i>&nbsp; ย้อนกลับ
									</button></a>
					</div>
				</div> <!-- //จบ body -->
				
			</div>
		</div> <!-- ปิดตาราง -->
	</div> <!-- ปิดcontainer -->
<%@ include file="../footer.jsp" %>
</body>

<script type="text/javascript">
function cancel() {
	location.reload();
}
//ยืนยันบันทึก
function editedsemen(){
	
	var Breed = $("#Breed\\.id").val();
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลน้ำเชื้อหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#nameCattle").val()  == ""){
					swal("กรุณากรอกหมายเลขน้ำเชื้อ/ชื่อพ่อพันธุ์");
				}else if($("#Breed\\.id").val() == "0"){
					swal("กรุณาเลือกสายพันธุ์");
				}else if($("#HNumber").val() == ""){
					swal("กรุณากรอกเบอร์ประจำตัวตัวพ่อพันธุ์");
				}else if($("#colorid").val() == 0){
					swal("กรุณากรอกสีพันธุ์พ่อ");
				}else if($("#tubeColor").val() == ""){
					swal("กรุณากรอกสีหลอด");
				}else if($("#lidColor").val() == ""){
					swal("กรุณากรอกสีจุกปิด");
				}else if($("#tubeSize").val() == "0"){
					swal("กรุณาเลือกขนาดหลอด");
				}else if($("#farm").val() == ""){
					swal("กรุณากรอกเจ้าของฟาร์ม");
				}
				else if($("#bucket\\.id").val() == 0 || $("#canister").val() <= 0|| $("#canister").val() =="" || $("#rack").val() == 0){
					swal("กรุณากรอกข้อมูลถังสำหรับจัดเก็บน้ำเชื้อให้ถูกต้อง");
				}else{
				$.post('edited_semen',$("#semen").serialize(),
				      function (result) {
				     	swal({	title: "เสร็จเรียบร้อย!",   
							/* text: "หมายเลขยา "+result, */   
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						}, 
						
						function(){   
							window.location.href='view_semen'; 
							});
						//setInterval(function(){location.reload()}, 2000);
					})
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
</html>