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
<jsp:include page="menu.jsp"/>
<br><br>
	<div class="container">
	<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">สมัครสมาชิก</p>
						</div>
					</div>	
				</div>
		</div>
		
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">ข้อมูลการสมัคร</h4>
	   	</div>
		<div class="panel-body">
		<form:form action="register" method="post" commandName="member" id="member">
		  	<table class="table table-striped table-hover  table-bordered">
					<tbody>
	<tr>
		<th class="text-center">Username</th>
		<td class="text-center" width="700px"><form:input id="user" path="username" placeholder="username" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Password</th>
		<td class="text-center"><form:password id="pass1" path="password" placeholder="password" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Confirm Password</th>
		<td class="text-center">
		<input type="password" id="pass2" name="password2" placeholder="password" class="form-control"/>
		</td>
	
	</tr>
	<tr>
		<th class="text-center">ชื่อ</th>
		<td class="text-center"><form:input id="first" path="first" placeholder="ชื่อ" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">นามสกุล</th>
		<td class="text-center"><form:input id="last" path="last" placeholder="นามสกุล" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">เพศ</th>
		<td class="text-center">
		<form:select class="form-control select select-info" data-toggle="select" path="sex" >
			<option value="ชาย">ชาย</option>
			<option value="หญิง">หญิง</option>
		</form:select>
		</td>
	</tr>
	<tr>
		<th class="text-center">ว/ด/ป เกิด</th>
		<td class="text-center"><form:input  id="birthday" path="birthday" class="form-control date"  placeholder="ว/ด/ป"/></td>
	</tr>
	<tr>
		<th class="text-center">เบอร์โทร</th>
		<td class="text-center"><form:input id="phone" path="tel" placeholder="เบอร์โทร" class="form-control" /></td>
	</tr>
	<tr>
		<th class="text-center">รหัสบัตรประชาชน</th>
		<td class="text-center"><form:input id="idCard" path="idCard" placeholder="รหัสบัตรประชาชน" class="form-control" min="12"/></td>
	</tr>
	<tr id=color2>
		<th class="text-center">ที่อยู่</th>
		<td class="text-center"><form:textarea id="address" path="address" placeholder="ที่อยู่" class="form-control" /></td>
	</tr>
	<tr>
		<th class="text-center">Email</th>
		<td class="text-center"><form:input id="email" type="email" path="email" placeholder="Email" class="form-control" /></td>
	</tr>
	<tr>
		<th class="text-center">Fax.</th>
		<td class="text-center"><form:input id="fax" type="text" path="fax" placeholder="fax" class="form-control" /></td>
	</tr>
</tbody>
					</table>
					
					</form:form>
					<div class="text-center">
					<button type="submit" id="add" name="action" class="btn btn-embossed btn-success btn-wide" style="text-align: center;">บันทึก</button>
					<a href="index"><button type="submit" id="cancle" name="action" class="btn btn-embossed btn-danger btn-wide" style="text-align: center;">ยกเลิก</button></a>
					</div>
					
			</div>
		</div>
</div>  
<jsp:include page="footer.jsp"/>

<% //สคริปตรวจสอบ การกรอกข้อมูล%>
<script type="text/javascript">
$(document).on('click','#add',function(e){
	var user = $("#user").val();     //ตรวจสอบที่ id
	var Pass = $("#pass1").val();
	var Repass=$("#pass2").val();
	var first = $("#first").val();
	var last = $("#last").val();
	var birthday = $("#birthday").val();
	var phone = $("#phone").val();
	var idCard = $("#idCard").val();
	var address = $("#address").val();
	var email = $("#email").val();
	var MsgError=""; 
	if(user==""){
		MsgError+="ตรวจสอบUsernameให้ถูกต้อง\n";
	}
	if(Pass==""){
		  MsgError+="ตรวจสอบรหัสผ่านให้ถูกต้อง\n";
		  }
	 if(Pass!=Repass){
		MsgError+="รหัสผ่านทั้งสองช่องไม่ตรงกัน\n";
		
	}
	if(first==""){
		 MsgError+="ตรวจสอบชื่อให้ถูกต้อง\n";
		  }
	if(last==""){
		 MsgError+="ตรวจสอบนามสกุลให้ถูกต้อง\n";
		  }
	 if(birthday==""){
		 MsgError+="ตรวจสอบ ว/ด/ป เกิด ให้ถูกต้อง\n";
		  }
	 if(idCard==""|| idCard.length < 13||idCard.length > 13){
		 MsgError+="ตรวจสอบรหัสบัตรประชาชนให้ถูกต้อง\n";
		  }
	 if(address=="" || address.length < 15){
		  MsgError+="ตรวจสอบที่อยู่ให้ถูกต้อง\n";
		  }
	 if(phone==""){ 
		  MsgError+="ตรวจสอบเบอร์โทรให้ถูกต้อง\n";
		  }
	 if(email=="" || email.indexOf("@")==-1 || email.indexOf(".com")==-1){ 
		  MsgError+="ตรวจสอบอีเมลให้ถูกต้อง\n";
		  }
	 if(MsgError!=""){
		 swal("ผิดพลาด", MsgError, "error");

	 }
	 else{
	$.post('checkUser',{username:$("#user").val()},function(msg){
		
		if(msg=="yes"){
			$.post('checkIdCardNo',{idCardNo:$("#idCard").val()},function(result){
				
				if(result=="true"){
			$.ajax({
				url:"saveRegister",
				method:"POST",
				data:$("#member").serialize()
			}).done(function(s){
				swal({  title: "สำเร็จ",   
					text: "บันทึกเรียบร้อยแล้ว!", 
						type: "success",   
						showCancelButton: false,   
						confirmButtonText: "OK!",   
						closeOnConfirm: false }, 
						
						function(){   
							window.location.href='index'; 
							});
				
			});
				}
				else if(result=="duplicate"){
					swal("ผิดพลาด", "รหัสบัตรประชาชนมีอยู่ในระบบแล้ว!", "error");
				}
				else
					{
					swal("ผิดพลาด", "ตรวจสอบรหัสบัตรประชาชนให้ถูกต้อง!", "error");
					}
			});
		}else{
			swal("ผิดพลาด", "ชื่อผู้ใช้งานซ้ำ!", "error");

		}
		
	});
	e.preventDefault();
	}
}); 
</script>


</body>
</html>