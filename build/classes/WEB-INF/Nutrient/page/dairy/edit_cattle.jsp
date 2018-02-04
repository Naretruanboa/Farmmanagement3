<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>แก้ไข ข้อมูลวัสดุ/อุปกรณ์</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
<div class="container">
	<div class="col-md-3">
		<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
			<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลวัสดุ/อุปกรณ์</p>
		</div>
	</div>
	<br><br><br>
	<div class="row form-group"> <!-- //ตาราง -->
		<div class="col-md-offset-3 col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลวัสดุ/อุปกรณ์</a></h4>
				</div>
				<div class="panel-body" >
					<form:form method="post" action="edited_cattle" commandName="cattle">
						<form:input path="id" type="hidden" />
						<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ชื่อวัสดุ/อุปกรณ์</label>
						<div class="form-inline">
							<form:input path="name" type="text" class="form-control input-sm " size="25" />
						</div>
						</div>
						<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>หมวดหมู่ </label>
						<div class="form-inline">
									<form:select class="form-control" path="TypeCattle.id" id="TypeCattle.id">
										<c:forEach items="${typecattle }" var="type">
												<c:if test="${typeCattle.id == type.id }">
													<form:option value="${type.id }" selected="selected">${type.value }</form:option>
												</c:if>
												<c:if test="${typeCattle.id != type.id }">
													<form:option value="${type.id }">${type.value }</form:option>
												</c:if>
											</c:forEach>
									</form:select>
						</div>
					</div>
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>หน่วยที่ใช้ในคลัง </label>	
						<div class="form-inline">								
									<form:select class="form-control" path="StatusCattle.id" id="StatusCattle.id">
										
											<c:forEach items="${statuscattle }" var="unit">
												<c:if test="${statusCattle.id == unit.id }">
													<form:option value="${unit.id }" selected="selected">${unit.value }</form:option>
												</c:if>
												<c:if test="${statusCattle.id != unit.id}">
													<form:option value="${unit.id }">${unit.value }</form:option>
												</c:if>
											</c:forEach>
											
									</form:select>
								</div>
					</div>
					</form:form>
					
					<div class="col-md-offset-6">  <!-- //ปุ่มสำหรับกดบันทึก หรือยกเลิก -->
						<button name="action" value="edit" id="edit" onclick="editcattle()"
							class="btn btn-success btn-lg">
								<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
						</button>
						<a href="Setlist"><button name="action" value="cancel" onclick="cancel()"
							class="btn btn-danger btn-lg">
								<i class="fa fa-reply" aria-hidden="true"></i>&nbsp; ย้อนกลับ
						</button></a>	
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>


<%-- <form:form method="post" action="edited_tool" commandName="tool">

<form:input path="id" type="hidden" />
<form:input path="name" type="text"/>

<form:select class="form-control" path="TypeTool.id" id="TypeTool.id" type="numeric">
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
<form:select class="form-control" path="unitTool.id" id="unitTool.id" type="numeric">
					<form:option value="0">เลือกหมวดหมู่</form:option>
				<c:forEach items="${unittool }" var="unit">
							<c:if test="${unitTool.id == unit.id }">
						<form:option value="${unit.id }" selected="selected">${unit.value }</form:option>
							</c:if>
									<c:if test="${unitTool.id != unit.id }">
								<form:option value="${unit.id }">${unit.value }</form:option>
								</c:if>
						</c:forEach>
</form:select>

<button name="action" value="edit" id="edit"
		class="btn btn-success btn-lg">
		<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
</button>

</form:form> --%>
<%@ include file="../footer.jsp" %>
</body>
<script type="text/javascript">
function editcattle(){
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
				}else if($("#typeCattle\\.id").val() == "0"){
					swal("กรุณาเลือกหมวดหมู่วัสดุ/อุปกรณ์");
				}else if($("#statusCattle\\.id").val() == "0"){
					swal("กรุณาเลือกหน่วยที่ใช้ในคลัง");
				}else{
				$.post('edited_cattle',$("#cattle").serialize(),
				      function (result) {
				     	swal({	title: "เสร็จเรียบร้อย!",   
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