<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ลงทะเบียนโค</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
	<div class="container">
		<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">การลงทะเบียนโต</p>
			</div>
		</div>
		<br><br><br>
		<div class="row form-group"> <!-- //ตาราง -->
		<div class="col-md-offset-3 col-md-6">  <!-- //ขนาดตาราง -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลวัสดุ/อุปกรณ์</a></h4>
				</div>
				<div class="panel-body" >
				<form:form action="tool" method="POST"  id="tool" modelAttribute="tool"  commandName="tool" >
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ชื่อวัสดุ/อุปกรณ์</label>
						<div class="form-inline">
							<form:input path="name" type="text" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>หมวดหมู่ </label>
						<div class="form-inline">
									<form:select class="form-control" path="TypeTool.id" id="TypeTool.id">
										<form:option value="0">เลือกหมวดหมู่</form:option>
											
											<c:forEach items="${typetool }" var="type">
												<c:if test="${TypeTool.id == type.id }">
													<form:option value="${type.id }" selected="selected">${type.value }</form:option>
												</c:if>
												<c:if test="${TypeTool.id != type.id }">
													<form:option value="${type.id }">${type.value }</form:option>
												</c:if>
											</c:forEach>
									</form:select>
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>หน่วยที่ใช้ในคลัง </label>	
						<div class="form-inline">								
									<form:select class="form-control" path="UnitTool.id" id="UnitTool.id">
										<form:option value="0">เลือกหน่วย</form:option>
											<c:forEach items="${unittool }" var="unit">
												<c:if test="${UnitTool.id == unit.id }">
													<form:option value="${unit.id }" selected="selected">${unit.value }</form:option>
												</c:if>
												<c:if test="${UnitTool.id != unit.id}">
													<form:option value="${unit.id }">${unit.value }</form:option>
												</c:if>
											</c:forEach>
											
									</form:select>
								</div>
					</div>
					</form:form>
					
					<div class="col-md-offset-6">  <!-- //ปุ่มสำหรับกดบันทึก หรือยกเลิก -->
						<button name="action" value="Add" id="add" onclick="addtool()"
							class="btn btn-success btn-lg">
								<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
						</button>
						<a href="view_tool"><button name="action" value="cancel" onclick="cancel()"
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
function cancel() {
	location.reload();
}
//ยืนยันบันทึก
function addtool(){
	/* var name = $("#name").val();     //ตรวจสอบที่ id
	var TypeTool = $("#TypeTool\\.id").val();
	var UnitTool = $("#UnitTool\\.id").val(); */
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลวัสดุอุปกรณ์หรือไม่!",   
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
					swal("กรุณากรอกชื่อวัสดุ/อุปกรณ์");
				}else if($("#TypeTool\\.id").val() == "0"){
					swal("กรุณาเลือกหมวดหมู่วัสดุ/อุปกรณ์");
				}else if($("#UnitTool\\.id").val() == "0"){
					swal("กรุณาเลือกหน่วยที่ใช้ในคลัง");
				}else{
				$.post('addtool',$("#tool").serialize(),
				      function (result) {
				     	swal({	title: "เสร็จเรียบร้อย!",   
							/* text: "หมายเลขยา "+result, */   
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						});
						setInterval(function(){location.reload()}, 2000);
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