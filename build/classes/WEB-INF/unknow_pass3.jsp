<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:include page="menuHome2.jsp"/>
<br>
		<div class="container">
		<div class="col-md-offset-3 col-md-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">ลืมรหัส</h4>
	   	</div>
		<div class="panel-body">
		<form id="saveResetPass" method="post">
			<input type="hidden" id="user_id" name="user_id" value="${user_id}"/>
		  	<table class="table table-striped table-hover  table-bordered">
		  	<tbody>
	<tr>
		<th class="text-center">
		กำหนดรหัสผ่านใหม่
		</th>
		<td>
		<div align="center">
		<input type="password" name="pass1" id="pass1" class="form-control"/>
		</div>
		</td>
	</tr>
	<tr>
		<th class="text-center">
		ยืนยันรหัสผ่าน
		</th>
		<td><div align="center">
		<input type="password" name="pass2" id="pass2" class="form-control"/>
		</div>
		</td>
	</tr>
			</tbody>
			</table>
			</form>
			<div class="text-center"><button type="button" id="save" class="btn btn-success">ตกลง</button></div>
		
				</div>
</div>
</div>
</div>
	

<script type="text/javascript">
$(document).on('click','#save',function(e){
	var Pass = $("#pass1").val();
	var Repass=$("#pass2").val();
	var MsgError=""; 
	if(Pass==""){
		  MsgError+="ตรวจสอบรหัสผ่านให้ถูกต้อง\n";
		  }
	 if(Pass!=Repass){
		MsgError+="รหัสผ่านทั้งสองช่องไม่ตรงกัน\n";
		
	}
	 if(MsgError!=""){
		 swal("ผิดพลาด", "รหัสผ่านไม่ตรงกัน กรุณาระบุใหม่!", "error");
	 }
	 else{
	$.ajax({
		url:"saveResetPass",
		method:"POST",
		data:$("#saveResetPass").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "เปลี่ยนรหัสเสร็จเรียบร้อย!", 
			type: "success",   
			showCancelButton: false,   
			confirmButtonText: "OK!",   
			closeOnConfirm: false }, 
			
			function(){   
				window.location.href='index'; 
				});
	
	}).fail(function() {
		 swal("ผิดพลาด", "Failed!", "error");
	});  
	e.preventDefault();
	 }
});


</script>
</body>
</html>