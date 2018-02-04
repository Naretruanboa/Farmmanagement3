<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/bootflat.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/homestyle.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/font-awesome-4.3.0/css/font-awesome.min.css"/>" rel='stylesheet' type='text/css' />
	
<!-- Sweet alert -->
	<link href="<c:url value="/resources/css/sweetalert.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/sweetalert-dev.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

	<link href="<c:url value="/resources/css/fileinput.min.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/fileinput.min.js"/>"></script>	
	<link href="<c:url value="/resources/css/fileinput.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/fileinput.js"/>"></script>	
  	<link href="<c:url value="/resources/picker/bootstrap-datepicker.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/picker/jquery.timepicker.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/baloon.js"/>"></script> <!-- สคริปเรียกalert -->

</head>
<body>
<header class="header"> <nav
	class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="index"><img
			src="<c:url value=  "/resources/img/barhomeAll.png"/> "
			height="40"></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>
<c:if test="${sessionScope.privilege == null}">
	<div class="collapse navbar-collapse" id="myNavbar">
		<!-- <ul class="nav navbar-nav navbar-right">
			<li><div class="row form-group"><a>Username</a><input type="text"></div></li>
			<li><div class="row form-group"><a>Password</a><input type="text"></div></li>
			<li><button>ล็อคอิน</button></li>
			
		</ul> -->
		<ul class="nav navbar-nav navbar-right">
		<li style="font-size: 18px;"><a href="register" ><i class="glyphicon glyphicon-user"></i>
					สมัครสมาชิก</a></li>
			<li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#login"><i class="glyphicon glyphicon-log-in"></i>
					เข้าสู่ระบบ</a></li>
		</ul>
	</div>
</c:if>
	
<c:if test="${sessionScope.privilege != null}">

			
		<c:if test="${sessionScope.privilege == 7}">
			<c:if test="${sessionScope.privilege == 7}">
				<script>
					swal({  title: 'ขออภัย!',text: 'คุณยังไม่มีสิทธิ์ใช้งานระบบกรุณาติดต่อผู้ดูแลระบบ', 
						type: 'error',showCancelButton: 
						false,confirmButtonText: 'OK!',
						closeOnConfirm: false }, 
					function(){window.location.href="logout" });
				</script>
			</c:if>
		</c:if>
		
		<ul class="nav navbar-nav">
		<li><a href="Storehouse">ระบบการจัดการคลัง</a></li>
		<li><a href="HealthCare">ระบบการรักษา</a></li>
		<li><a href="Nutrient">ระบบคำนวณหาค่าความต้องการทางโภชนะของโคเนื้อและโคนม</a></li>
		<li><a href="Certificate">ระบบการออกใบสูจิบัตรโคประกวดและโคประมูล</a></li>
		
		
		</ul>
		<!-- **********************login logout********************** -->
		<c:forEach items="${ulist }" var="m">
		<ul class="nav navbar-nav navbar-right">
			
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;${m.first}<b class="caret"></b></a>
              <ul class="dropdown-menu">              		
              		<li ><a href="index"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;กลับหน้าหลัก</a></li>
                	<li ><a href="member"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;ข้อมูลส่วนตัว</a></li>
					<li ><a href="logout"><i class="fa fa-sign-out"></i>&nbsp;ออกจากระบบ</a></li>          
               </ul>
       	</li>
		</ul>
		</c:forEach>
		
</c:if>
</div>


</nav> </header>
	<div class="container">
			<form action="login" method="POST" id="loginForm">
		<!-- modal -->
		<div id="login" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">เข้าสู่ระบบ</h3>
					</div>
					<div class="modal-body">
				
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อผู้ใช้:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" name="username"  id="username" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<input type="password" name="password" id="password" class="form-control">
								
							</div>
						</div>
						
						<div class="text-center"><p id="demo" style="color:red;"></p></div>
						<div align="right" class="login-link"><a href="UnknowPass" style="margin-right:20px;">ลืมรหัสผ่าน</a></div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="close">ปิด</button>
						<button type="submit" class="btn btn-success" id="log">ล็อคอิน</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		</form>
	</div>

<script type="text/javascript"> 
$(document).on('click','#log',function(e){
	//alert("OK");
	$.post('checkLogin',{username:$("#username").val(),password:$('#password').val()},function(msg){
		//alert(msg);
		if(msg=="yes"){
			$.ajax({
				url:'login',
				type:'POST',
				data:{
					username:$("#username").val(),
					password:$('#password').val(),
				},success : function (result) {
					window.location.href="index";
				},error: function(result){
					swal("Oops...", "Something went wrong!", "error");
				}
				
			});
		}
		else
		{
			document.getElementById("demo").innerHTML = "ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง!";

		} 
	}); 
	e.preventDefault();
}); 

$('#login').on('hide.bs.modal', function(e) {
    document.getElementById("loginForm").reset();
}); 

</script>
</body>
</html>