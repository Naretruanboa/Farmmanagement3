<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>

<title>ข้อมูลสมาชิก</title>

</head>

<body>

	<jsp:include page="../menu.jsp"/>
<%int i =1; %>
		<div class="container">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลสมาชิก</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
					</div>
				</div>
			</div>
		<hr>
<div class="panel panel-primary" >
		<div class="panel-heading" >
	        <h4 class="panel-title" style="font-size: 25px;">ข้อมูลสมาชิก</h4>
	   	</div>
		<div class="panel-body" style="color: black;">
		  	<table class="table table-striped table-hover  table-bordered" >
				<thead style="font-size: 18px;"  >
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่อ</center></th>
				    	<th><center>นามสกุล</center></th>
				        <th><center>ที่อยู่</center></th>
				         <th><center>อีเมล์</center></th> 
				          <th><center>สิทธิ์การใช้งาน</center></th> 
				           <th><center>แก้ไข</center></th> 
				        <th><center>ลบ</center></th> 
				      </tr>
				</thead>
				 <tbody style="text-align: center;" id="list">
				 	<c:forEach items = "${memberlist}" var="member">
				 	<tr>
				 		 <td><%=i++ %></td>
				 		 <td>${member.first}</td>
				 		 <td>${member.last}</td>
				 		 <td>${member.address}</td>
				 		 <td>${member.tel}</td>
				 		 <td>${member.email}</td>
				 		 <td>${member.privilege.value}</td>
				 		 <td>
				 		 <a href="edit_memberN?id=${member.id}">
				 		 <button  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
								</a>
						</td>
						 <td><button class="btn btn-danger"	value="${member.id }" onclick="chkdel(this.value)">
								<i class="glyphicon glyphicon glyphicon-remove"></i>
							</button></td>
				 	</tr>
				 	</c:forEach>
				</tbody>
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div>
 <!-- end container -->

			
		
			 
		   




	
	
	
	
	<jsp:include page="../footer.jsp" />
	
<script>
/* --------------------------------ลบ--------------------------- */
function chkdel(str){ //alert(str);
	swal({  title: "ยืนยันการลบข้อมูล!",   
			text: "คุณต้องการลบใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'del_memberN',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"สำเร็จ", 
							text:"ลบเรียบร้อยแล้ว!", 
							type:"success",
							timer: 2000,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถลบได้!", "error");
					}
					
				});
					} 
				else {     swal({
						title:"ยกเลิก", 
						text:"ยกเลิกการลบเรียบร้อยแล้ว!", 
						type:"error",
						timer: 2000,   
						showConfirmButton: false
				});} 
			});

	}
	
</script>
</body>
</html>