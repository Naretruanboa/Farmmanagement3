<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ลงทะเบียนวัตถุดิบ</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
	<div class="container">
		<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">การลงทะเบียนวัตถุดิบ</p>
				</div>
		</div>
		<br><br><br>
		<div class="row form-group"> <!-- //ตาราง -->
		<div class="col-md-offset-3 col-md-6">  <!-- //ขนาดตาราง -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลวัตถุดิบ</a></h4>
				</div>
				<div class="panel-body" >
				
				<form:form action="addrawN" method="POST"  id="rawmaterial" modelAttribute="rawmaterial" commandName="rawmaterial" >
					<form:input path="quantity" value="0" type="hidden"></form:input>
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ชื่อวัตถุดิบ</label>
						<div class="form-inline">
							<form:input path="name" id="name" type="text" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ประเภท </label>
						<div class="form-inline">
									<form:select class="form-control" path="typeMaterial.id" id="typeMaterial.id">
										<form:option value="0">เลือกประเภทวัตถุดิบ</form:option>
											<c:forEach items="${typeraw }" var="type">
												<c:if test="${typeMaterial.id == type.id}">
													<form:option value="${type.id }"  selected="selected">${type.value }</form:option></c:if>
													
												<c:if test="${typeMaterial.id != type.id }">
												<form:option value="${type.id }">${type.value }</form:option></c:if>
											</c:forEach>
									</form:select>
								</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>หน่วยที่ใช้ในคลัง </label>	
						<div class="form-inline">	
						<%-- <c:forEach items="${unit }" var="u">${u.value }</c:forEach>	 --%>						
									
									<form:select class="form-control" path="UnitRawMaterial.id" id="UnitRawMaterial.id" >
										<form:option value="0">เลือกหน่วย</form:option>
											<c:forEach items="${unit }" var="unit">
												<c:if test="${UnitRawMaterial.id == unit.id}">
													<form:option value="${unit.id }" selected="selected">${unit.value }</form:option>
												</c:if>
												<c:if test="${UnitRawMaterial.id != unit.id }">
													<form:option value="${unit.id }">${unit.value }</form:option>
												</c:if>
											</c:forEach>
									</form:select>
								</div>
					</div>
					
					</form:form>
					
					<div class="col-md-offset-6">  <!-- //ปุ่มสำหรับกดบันทึก หรือยกเลิก -->
						<button name="action" value="Add" id="add" onclick="addraw()"
							class="btn btn-success btn-lg">
								<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
						</button>
						<a href="Setrawmaterial"><button name="action" value="cancel" onclick="cancel()"
							class="btn btn-danger btn-lg">
								<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
						</button></a>	
					</div>
				
					
					
				</div>
			</div>
		</div>
		</div> <!-- ปิดตาราง -->
	</div> <!-- ปิดcontainer -->
<%@ include file="../footer.jsp" %>
</body>

<script type="text/javascript">

//ยืนยันบันทึก
function addraw(){
	/* var name = $("#name").val();     //ตรวจสอบที่ id
	var typeMaterial = $("#typeMaterial\\.id").val();
	var UnitRawMaterial = $("#UnitRawMaterial\\.id").val(); */
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลวัตถุดิบหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#name").val() == ""){
					swal("กรุณากรอกชื่อวัตถุดิบ");
				}else if($("#typeMaterial\\.id").val() == 0){
					swal("กรุณาเลือกประเภทวัตถุดิบ");
				}else if($("#UnitRawMaterial\\.id").val() == 0){
					swal("กรุณาเลือกหน่วยที่ใช้ในคลัง");
				}else{
					
					 $.post('chkRawN ',{name:$("#name").val()},function(msg){
						if(msg=="yes"){ 
				$.post('addrawN',$("#rawmaterial").serialize(),
				      function (result) {
				     	swal({	title: "เสร็จเรียบร้อย!",   
							/* text: "หมายเลขยา "+result, */   
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						});
						setInterval(function(){location.reload()}, 2000);
					})
					}//end if spost
					else{swal("ผิดพลาด", "ชื่อวัตถุดิบซ้ำ!", "error");}
				}) //end post
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