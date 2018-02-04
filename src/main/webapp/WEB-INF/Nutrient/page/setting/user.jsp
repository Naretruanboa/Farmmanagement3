<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>สมาชิก</title>

</head>
<body>
	<jsp:include page="../menu.jsp"/>
<%int i=1; %>	
		<h2><center><font color="000000">สมาชิก</font></center></h2>
		<hr>
		
		 <div class="row demo-row">
        <div class="col-xs-1"></div>
        
          <div class="col-xs-10">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">รายชื่อสมาชิก</h4>
	   	</div>
		<div class="panel-body">
		
		   	<table class="table table-striped table-hover  table-bordered">		  	
		  		
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่อผู้ใช้</center></th>
				        <th><center>ชื่อ</center></th>
				        <th><center>นามสกุล</center></th>
				        <th><center>เบอร์โทร</center></th>
				        <th><center>สถานะ</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>

			      </tr>
			    </thead>
			    <tbody>		   	
					<c:forEach items="${memberlist }" var="member" >		  	
					
			      	<tr>
				    <td><div align="center"><%=i++ %></div></td>
				    <td><div align="center">${member.user}</div></td>
				    <td><div align="center">${member.name}</div></td>
				    <td><div align="center">${member.surname}</div></td>
				    <td><div align="center">${member.tel}</div></td>
				    <td><div align="center">${member.privilege.privilegeName}</div></td>				    
				        <td><center><button type="button" class="btn btn-primary glyphicon glyphicon-pencil" data-toggle="modal" data-target="#edit" data-gid="${member.id}"
				         data-gidcard="${member.idcard}" data-gname="${member.name}" data-gaddress="${member.address}" data-gsurname="${member.surname}" data-gtel="${member.tel}" data-gemail="${member.email}">
				        	</button></center></td>
				        
				        <td><center><button type="button" class="btn btn-danger glyphicon glyphicon-remove" data-toggle="modal" data-target="#del" data-did="${member.id}">
				        	</button></center></td>
				        
				      
					</tr>

				
		   	</c:forEach>
		   	</tbody>
			</table>
		    <div class="row">
		        <div class="col-md-offset-10"><p>
		        	<!-- <button type="button" class="btn btn-success glyphicon glyphicon-print"> พิมพ์ใบเสร็จทั้งหมด</button>  -->
		        </p></div>        
		   	</div>
		   	
		</div>
	</div>
	</div>
	</div>
	


<div class="container">
		<!-- modal -->
		<div id="edit" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">แก้ไขข้อมูลสมาชิก</h3>
					</div>
					<div class="modal-body">
				<form:form commandName="member" id="member" method="post">
					<form:hidden path="id" id="id"/>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เลขประชาชน:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="idcard" id="idcard" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อ:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="name" id="name" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>นามสกุล:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="surname" id="surname" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ที่อยู่:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="address" id="address" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เบอร์โทร:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="tel" id="tel" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>email:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="email" id="email" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>สถานะ:</h4>
							</div>
							<div class="col-md-6">
								<select name="privilege" id="privilege" class="form-control">
									<option value="">เลือกสิทธิ์</option>
									<option value="1">ผู้ดูแลระบบ</option>
									<option value="2">เจ้าหน้าที่</option>
									<option value="3">สมาชิก</option>
									<option value="4">ห้ามใช้งาน</option>
								</select>
							</div>
						</div>
											
			</form:form>
					</div>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>
						<button type="submit" class="btn btn-primary" id="btn_save">บันทึก</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<!-- modal -->
		
		<!-- modal -->
		
			<!-- modal -->

		<!-- modal -->
		<div id="del" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<form action="DeleteUser" method="post">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบข้อมูล</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" name="uid" id="uid" class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_delete">ลบ</button>					
					</div>
				</form>
					</div>
			</div>
		</div>
		<!-- modal -->
	</div>
	
	<jsp:include page="../footer.jsp"/>
	<script type="text/javascript">
	$('#edit').on('show.bs.modal', function(e) {
		 var g_id = $(e.relatedTarget).data('gid');
		 var g_idcard = $(e.relatedTarget).data('gidcard');
		 var g_name = $(e.relatedTarget).data('gname');
		 var g_surname = $(e.relatedTarget).data('gsurname');
		 var g_tel = $(e.relatedTarget).data('gtel');
		 var g_address = $(e.relatedTarget).data('gaddress');
		 var g_email = $(e.relatedTarget).data('gemail');
		  $(e.currentTarget).find('input[id="id"]').val(g_id);
		  $(e.currentTarget).find('input[id="idcard"]').val(g_idcard);
		  $(e.currentTarget).find('input[id="name"]').val(g_name);
		  $(e.currentTarget).find('input[id="surname"]').val(g_surname);
		  $(e.currentTarget).find('input[id="address"]').val(g_address);
		  $(e.currentTarget).find('input[id="tel"]').val(g_tel);
		  $(e.currentTarget).find('input[id="email"]').val(g_email);
	});

	$('#edit').on('hide.bs.modal', function(e) {
		location.reload();
	});
	
	
	$('#del').on('show.bs.modal', function(e) {
		 var u_id = $(e.relatedTarget).data('did');
		 $(e.currentTarget).find('input[id="uid"]').val(u_id);
	});
	
	$('#del').on('hide.bs.modal', function(e) {
		location.reload();
	});
	
	
	
	$(document).on('click','#btn_save',function(e){

		$.ajax({
			url:"editUser",
			method:"POST",
			data:$("#member").serialize()
		}).done(function(s){
			swal({  title: "สำเร็จ!",   
				text: "เรียบร้อยแล้ว!", 
				type: "success",   
				showCancelButton: false,   
				confirmButtonText: "OK!",   
				closeOnConfirm: false }, 
				
				function(){   
					location.reload(); 
					});
		
		}).fail(function() {
			 swal("ไม่สำเร็จ...", "ผิดพลาด!", "error");
		}); 
		/* }*/
		e.preventDefault();
	});
	</script>
</body>
</html>