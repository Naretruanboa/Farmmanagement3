<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ลงทะเบียนถังเก็บน้ำเชื้อ/ถังเก็บไนโตรเจนเหลว</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
<div class="container">
		<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">การลงทะเบียนถัง</p>
			</div>
		</div>
		<br><br><br>
		
		
		
		<div class="row form-group"><!-- //ตารางบน -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลจำเป็นของถัง</h4>
				</div>
				<div class="panel-body">
				<form:form action="bucket" method="POST"  id="bucket" modelAttribute="bucket"  commandName="bucket" >
					<form:input type="hidden" value="0" path="statusalert"/>
				<div class="row form-group">
					<!-- <h1>1</h1> -->
							<div class="row form-group">
						<div class="col-md-6 "> <!-- //คอลัม1 -->
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> ประเภทถัง</label>
								<div class="col-md-6">
							 		<form:select class="form-control" path="typeBucket.id" id="typeBucketid" >
										<form:option value="0">เลือกประเภทถัง</form:option>
											<c:forEach items="${type }" var="type">
												<c:if test="${typeBucket.id == type.id}">
													<form:option value="${type.id }" selected="selected">${type.value }</form:option>
												</c:if>
												<c:if test="${typeBucket.id != type.id }">
													<form:option value="${type.id }">${type.value }</form:option>
												</c:if>
											</c:forEach>
									</form:select>													
								</div>
							</div>
							
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> รหัสถัง</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" placeholder="รหัสถัง" id="number" path="number"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> ชื่อถัง</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="name" path="name"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> ยี่ห้อถัง</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="brand" path="brand"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font> ขนาดถัง</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 			<form:input type="number" class="form-control" id="size" path="size"/>	
							 			<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">ลิตร</span>												
									</div>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>วันที่นำถังเข้าคลัง</label>
								<div class="col-md-6">
							 		<form:input type="date" class="form-control" id="dayImport" path="dayImport"/>													
								</div>
							</div>
						</div> <!-- //closeคอลัม1 -->
						
						
						<div class="col-md-4 "> <!-- //คอลัม2 -->			
							<div class="row form-group ">
								<label class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font> นำเข้าจาก</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="import_" path="import_"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font> สถานจัดที่เก็บ</label>
								<div class="col-md-6">
							 		<form:input type="text" class="form-control" id="place" path="place"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font> วันที่เติมไนโตรเจนเหลวครั้งสุดท้าย</label>
								<div class="col-md-6">
							 		<form:input type="date" class="form-control" id="dayInN" path="dayInN"/>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font> วันที่ควรเติมไนโตรเจนเหลวครั้งใหม่</label>
								<div class="col-md-6">
							 		<form:input type="date" class="form-control" id="dayExpN" path="dayExpN"/>													
								</div>
							</div>
						</div> <!-- //closeคอลัม2 -->
					</div>
					
						
				</div>
				
				
				
				
			<!-- 	*********************************************ตารางด้านใน******************************************** -->
				<div class="row form-group"> <!-- //ตารางในตาราง -->
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลทั่วไปของถัง</h4>
						</div>
						<div class="panel-body">
							<!-- <h1>2</h1> -->
							<div class="row form-group">
							<div class="col-md-6 "> <!-- //คอลัม1 -->
							
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">น้ำหนักถังเปล่า</label>
								<div class="col-md-6">
									<div class="input-group">
							 			<form:input type="number" class="form-control" id="weightnull" path="weightnull"/>
							 			<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>												
									</div>
									
								</div>
								
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">น้ำหนักเมื่อเติมไนโตรเจนเต็มถัง</label>
								<div class="col-md-6">
									<div class="input-group">
							 		<form:input type="number" class="form-control" id="weightfull" path="weightfull"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
									</div>
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">เส้นผ่านศูนย์กลางฝาถัง</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="diaPartition" path="diaPartition"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">มิลลิเมตร</span>
									</div>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">เส้นผ่านศูยน์กลางตัวถัง</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="diaBody" path="diaBody"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">มิลลิเมตร</span>
									</div>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">ความสูงของถัง</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="heightBody" path="heightBody"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">มิลลิเมตร</span>
									</div>														
								</div>
							</div>
							<div class="row form-inline ">
								<label class="col-md-offset-0 col-md-4 control-label">อัตราการสูญเสียไนโตรเจนเหลว/วัน</label>
								<div class="col-md-6">							 		
							 		<form:input type="text" class="form-control" id="ratioNitrogen" path="ratioNitrogen" size="15"/>																							
								</div>
							</div>
							
							
						</div> <!-- //closeคอลัม1 -->
						
						
						
						<div class="col-md-5 "> <!-- //คอลัม2 -->			
							
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">ระยะเวลารักษาไนโตรเจนเหลวเมื่อเติมเต็มถัง</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="periodNitrogen" path="periodNitrogen" />													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>
									</div>															
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">เส้นผ่านศูนย์กลาง Canister</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="diaCanister" path="diaCanister"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">มิลลิเมตร</span>
									</div>												
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label">ความสูง Canister</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="heightCanister" path="heightCanister"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">มิลลิเมตร</span>
									</div>													
								</div>
							</div>
							<div class="row form-group ">
								<label class="col-md-offset-0 col-md-4 control-label"> จำนวน Canister</label>
								<div class="col-md-6">
							 		<div class="input-group">
							 		<form:input type="number" class="form-control" id="quantityCanister" path="quantityCanister"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">อัน</span>
									</div>														
								</div>
							</div>
						</div> <!-- //closeคอลัม2 -->
					</div>
						</div>
					</div>
				</div> <!-- //จบตารางในตาราง -->
				
				</form:form>
				
				<div class="col-md-offset-9">
									<button name="action" value="Add" id="add" onclick="addbucket()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									<a href="view_bucket"><button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
									</button></a>
				</div>
				
			
			
				</div>
			</div>
		</div><!-- //จบตารางบน -->
		
		
</div> <!-- ปิดcontainer -->
<%@ include file="../footer.jsp" %>
</body>


<script type="text/javascript">
function cancel() {
	location.reload();
}
//ยืนยันบันทึก
function addbucket(){
	/* var number = $("#number").val();
	var name = $("#name").val(); 
	var brand =  */
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลถังหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
			if($("#typeBucketid").val() == 0){
				swal("กรุณากรอกประเภทถังให้ถูกต้อง");
				}else if($("#number").val() == ""){
					swal("กรุณากรอกรหัสถังให้ถูกต้อง"); 
				}else if($("#name").val() == ""){
					swal("กรุณากรอกชื่อถังให้ถูกต้อง");
				}else if($("#brand").val() == ""){
					swal("กรุณากรอกยี่ห้อถังให้ถูกต้อง");
				}else if($("#size").val() == "" || $("#size").val() <=0){
					swal("กรุณากรอกขนาดถังให้ถูกต้อง");
				}else if($("#dayImport").val() == ""){
					swal("กรุณากรอกวันที่นำเข้าคลังให้ถูกต้อง");
				}else if($("#dayInN").val() == ""){
					swal("กรุณากรอกวันที่เติมไนโตรเจนเหลวครั้งสุดท้ายให้ถูกต้อง");
				}else if($("#dayExpN").val() == ""){
					swal("กรุณากรอกวันที่ควรเติมไนโตรเจนเหลวครั้งใหม่ให้ถูกต้อง");
				}else{
				$.post('addbucket',$("#bucket").serialize(),
				      function (result) {
				     	swal({	title: "สำเร็จ",   
							text: "บันทึกการลงทะเบียนเรียบร้อยแล้ว!",  
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						});
						setInterval(function(){location.reload()}, 2000);
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