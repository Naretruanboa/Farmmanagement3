<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ระบบออกใบสูจิบัตรโคประกวดโคประมูล</title>
<!-- Bootstrap -->

</head>
<body>
 
<jsp:include page="page/menu.jsp"/>
	<div class="section-bg">
		<div class="container">
			<img class="icon"
				src="<c:url value=  "resources/img/33.png"/> "
				height="100%"> <br>
			<div>
				<h3 class="homepage-title">ระบบการจัดการฟาร์ม :
					ระบบออกใบสูจิบัตรโคประกวดโคประมูล</h3>
			</div>
			<div>
				<h3 class="homepage-subtitle">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</h3>
			</div>
		</div>
		<br> <br> <br> <br>
	</div>


<%-- <div class="container">
		<!-- modal -->
		<div id="log2" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">สมัครสมาชิก</h3>
					</div>
					<form:form action="" commandName="member" id="member">
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>ชื่อผู้ใช้ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="user" id="user" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>รหัสผ่าน :</h4>
							</div>
							<div class="col-md-6">
								<form:password path="pass" id="password" class="form-control"/>
							</div>
						</div>
							<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>ยืนยัน-รหัสผ่าน :</h4>
							</div>
							<div class="col-md-6">
								<input type="password" name="password2" id="password2" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>อีเมล์ :</h4>
							</div>
							<div class="col-md-6">
								<form:input type="email" path="email" id="email" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>เลขประจำตัวประชาชน :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="idcard" id="idcard" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>ชื่อ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="name" id="name" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>นามสกุล :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="surname" id="surname" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>ที่อยู่ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="address" id="address" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>ชื่อฟาร์ม :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="farm" id="farm" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>เบอร์โทร :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="tel" id="tel" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>รหัสไปรษณีย์ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="zipcode" id="zipcode" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>มือถือ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="mobile" id="mobile" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>เพศ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="sex" id="sex" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>อายุ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="age" id="age" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>อีเมลสำรอง :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="alt_email" id="alt_email" class="form-control"/>
							</div>
						</div>
						
						 <div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>รูปภาพ :</h4>
								</div>
							<div class="col-md-6">
								<input id="file1" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="true">
							</div>
						</div> 
						
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>รูปภาพ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="image" id="image" class="form-control"/>
							</div>
						</div>
						
						
						
						
						<div class="row form-group">
							<div class="col-md-offset-1 col-md-3">
								<h4>สัญชาติ :</h4>
							</div>
							<div class="col-md-6">
								<form:input path="nationality" id="nationality" class="form-control"/>
							</div>
						</div>
						
					</div>
		
					</form:form>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>
						<button type="submit" class="btn btn-primary" id="add3">สมัคร</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
	</div> --%>
	
	


	<div id="footer_container">
	<footer class="footer">
	<div class="container">
		<div class="col-md-6" align="left">
				<div class="row form-inline">
						<span style="color: white;font-size: 16px;">Copyright 2015</span>
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="development" target="_blank" style="font-size: 16px;">Development Team</a>	
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="contact" target="_blank" style="font-size: 16px;">Contact</a>
				</div>
				<div class="row form-inline">
					<span style="color: white;font-size: 16px;">By Computer Engineering 
					<a href="http://www.up.ac.th" target="_blank" class="textright">University Of Phayao &nbsp;</a></span>
					<a href="https://www.facebook.com/ComputerEngineeringUP?fref=ts" target="_blank" class="textright"><i class="fa fa-facebook-official"></i></a>
				</div>
		</div>
		<div class="col-md-6">
			<div align="right">
				<a>
					<a class="textright" href="Certificate">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</a>
					<img id="imgfooter" src="<c:url value="/resources/img/b2.png" /> " height="45" " title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
</div>



</body>
</html>