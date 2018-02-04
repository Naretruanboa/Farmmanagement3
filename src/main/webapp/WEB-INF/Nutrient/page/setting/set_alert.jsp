<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>ตั้งค่าการแจ้งเตือนวัตถุดิบ</title>
</head>
<body>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
<jsp:include page="../menu.jsp"/>

<div class="container">
<hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">การตั้งค่าการแจ้งเตือน</p>
						</div>
					</div>	
				</div>
		</div>
		<form:form method="post" action="seted_alert" commandName="alert" >
			<form:input path="id" type="hidden" value="1"/>
			
		<div class="col-md-4"><!-- //colum2 -->
			<div class="row form-group">
				<div class="col-md-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
						 	<h4 class="panel-title" style="font-size: 25px;"><i class="fa fa-calendar"></i>&nbsp;วัตถุดิบ</h4>
						</div>
						<div class="panel-body">
							<!-- <h1>HI</h1> -->
							<div class="row form-group">
								<div class="col-md-offset-0 col-md-12">
									<div class="form-inline">
										<label class="control-label">เมื่อยอดคงคลังน้อยกว่า </label>
										<form:input path="stockRaw" type="number" class="form-control input-sm " size="15"/>
										<label class="control-label">หน่วย </label>

									</div>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-0 col-md-12">
									<div class="form-inline">
										<label class="control-label">แจ้งเตือนล่วงหน้า </label>
										<form:input path="expRaw" type="number"
										class="form-control input-sm " size="16"/>
										<label class="control-label">วัน </label>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			
		</div>	<!-- //closecolum2 -->
		
		</form:form>
	
			<!-- <div class="col-md-offset-11 "> -->
							
				<!-- </div> -->
		</div> <!-- end container -->
		<div class="row form-group" align="center">
				<button class="btn btn-success" onclick="setedalert()">
				<i class="fa fa-floppy-o"></i>&nbsp;บันทึก</button>
		</div>
 

			
<jsp:include page="../footer.jsp"/>
</body>
<script type="text/javascript">
function setedalert(){
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลการแจ้งเตือนหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#stockRaw").val() == "" || $("#stockRaw").val() < 0){
					swal("กรุณากรอกจำนวนให้ถูกต้อง");
				}else if($("#expRaw").val() == "" || $("#expRaw").val() < 0){
					swal("กรุณากรอกวันแจ้งเตือนล่วงหน้าให้ถูกต้องให้ถูกต้อง");
				}else{
				$.post('seted_alert',$("#alert").serialize(), 
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