<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>สมัครสมาชิก</title>
</head>
<body>
<jsp:include page="menuHome.jsp"/>
<br><br>
	<div class="container">
<div class="panel panel-primary">
		<div class="panel-heading">
	        
	        <h4 class="panel-title">ข้อมูลส่วนตัว</h4>
	        
	   	</div>
		<div class="panel-body">
		<c:forEach items="${ulist }" var="m">
		  	<table class="table table-striped table-hover  table-bordered">
					<tbody>
	<%-- <tr>
		<th class="text-center">Username</th>
		<td class="text-center" width="700px"><input id="user" value =" ${ m.username}" class="form-control"/></td>
	</tr> --%>
	<tr>
		<th class="text-center">ชื่อ</th>
		<td class="text-center"><input id="first" value =" ${ m.first}" class="form-control" disabled="true"/></td>
	</tr>
	<tr>
		<th class="text-center">นามสกุล</th>
		<td class="text-center"><input id="last" value =" ${ m.last}" class="form-control" disabled="true"/></td>
	</tr>
	<tr>
		<th class="text-center">เพศ</th>
		<td class="text-center">
			<input id="last" value =" ${ m.sex}" class="form-control" disabled="true"/>
		<%-- <form:select class="form-control select select-info" data-toggle="select" path="sex" >
			<option value="ชาย">ชาย</option>
			<option value="หญิง">หญิง</option>
		</form:select> --%>
		</td>
	</tr>
	<tr>
		<th class="text-center">วัน/เดือน/ปี เกิด</th>
		<td class="text-center"><input  id="birthday" value =" ${ m.birthday}" class="form-control" disabled="true"/></td>
	</tr>
	<tr>
		<th class="text-center">เบอร์โทร</th>
		<td class="text-center"><input id="phone" value =" ${ m.tel}" class="form-control" disabled="true"/></td>
	</tr>
	<tr>
		<th class="text-center">รหัสบัตรประชาชน</th>
		<td class="text-center"><input id="idCard" value =" ${ m.idCard}" class="form-control" disabled="true"/></td>
	</tr>
	<tr id=color2>
		<th class="text-center">ที่อยู่</th>
		<td class="text-center"><textarea id="address" class="form-control" disabled="true">${ m.address}</textarea></td>
	</tr>
	<tr>
		<th class="text-center">Email</th>
		<td class="text-center"><input id="email" type="text" value =" ${ m.email}" class="form-control" disabled="true"/></td>
	</tr>
	<tr>
		<th class="text-center">Fax.</th>
		<td class="text-center"><input id="fax" type="text" value =" ${ m.fax}"  class="form-control" disabled="true"/></td>
	</tr>
</tbody>
					</table>
					<form id="changePassword" method="POST">
					<div align="left">
						<a href="#" data-toggle="modal" data-target="#edit" data-gid="${user.id}" >เปลี่ยนรหัสผ่าน</a>
					</div>
					</form>
					<form:form action="edit_memberBylogin" method="POST" >
					<input id="id" name="id" type="hidden"  value="${m.id}">
					<div class="col-md-12" align="right">
				   			<button name="action"  class="btn btn-primary" >
												แก้ไขข้อมูล
											</button>
					</div>
					</form:form>					
					
					</c:forEach>

					
			</div>
		</div>
</div>

<div id="edit" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
               <div class="modal-body">
                 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
<div class="panel-primary">
		<div class="panel-body">
	
		  	<table class="table table-striped table-hover  table-bordered">
		
					<tbody>
					  		
					  		<c:forEach items="${ulist}" var="uu">
							<input type="hidden" name="user" id="user" value="${uu.username }">
							</c:forEach>
					<form id="ChangPass" method="post">
					<tr>
							<th class="text-center">
							รหัสผ่านปัจจุบัน
							</th>
							<td class="text-center">
							<input type="password" name="old_pass" id="old_pass" class="form-control text-center" />
							</td>
					</tr>
						<tr>
							<th class="text-center">
							รหัสผ่านใหม่
							</th>
							<td class="text-center">
							<input type="password" id="new_pass" name="new_pass" class="form-control text-center" />
							</td>
						</tr>
						</form>
						<tr>
							<th class="text-center">
							ยืนยันรหัสผ่าน
							</th>
							<td class="text-center">
							<input type="password" id="new_pass2" class="form-control text-center"/>
							</td>
						</tr>
											
					</tbody>
					<tfoot>
					<tr>
					<td class="text-right" colspan="2">
					<button type="button" class="btn btn-danger" data-dismiss="modal">ปิด</button>
					<button type="submit" class="btn btn-success" id="changePASS">บันทึก</button>	
					
					</td>
					</tr>
					</tfoot>
				</table>	
				
			</div>
		</div>
	</div>
	
				</div>
			</div>
		</div>  
<jsp:include page="footerHome.jsp"/>

</body>
<script type="text/javascript">

$(document).on('click','#changePASS',function(e){
	var np = $("#new_pass").val();
	 var np2 = $("#new_pass2").val();
	if(np!=np2){
		swal("ผิดพลาด", "รหัสผ่านไม่ตรงกัน!", "error");
	}
	else if(np==""&&np2==""){
		swal("ผิดพลาด", "กรอกรหัสผ่านให้ถูกต้อง!", "error");
	}
	else{
	$.post('checkLogin',{username:$("#user").val(),password:$("#old_pass").val()},function(msg){
		//alert(msg);
		if(msg=="yes"){
			//alert("KKKKKKKKKKKK");
			 $.ajax({
				url:"changePASSWORD",
				method:"POST",
				data:$("#ChangPass").serialize()
			}).done(function(s){
				swal({  title: "สำเร็จ",   
					text: "บันทึกเรียบร้อยแล้ว!", 
					type: "success",   
					showCancelButton: false,   
					confirmButtonText: "OK!",   
					closeOnConfirm: false }, 
					
					function(){   
						window.location.href="index"; 
						});
			}).fail(function() {
				swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
			});  
		}
		else
		{
			swal("ผิดพลาด", "รหัสผ่านปัจุบันไม่ถูกต้อง!", "error");
			//document.getElementById("demo").innerHTML = "ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง!";

		}
	}); 
	e.preventDefault();
	}
});

$('#edit').on('hide.bs.modal', function(e) {
	location.reload();
});

</script>
</html>