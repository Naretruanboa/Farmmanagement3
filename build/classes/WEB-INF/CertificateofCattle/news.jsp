<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ข่าวงานโค</title>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>
<jsp:include page="page/menu.jsp"/>
<%int i=1; %>
<div align="center"><h2><font color="000000">ข่าวงานโค</font></h2></div>
<hr>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    
    
    <ol class="carousel-indicators">
    <c:forEach items="${newslist}" var="nw2" varStatus="loop">
      <li data-target="#myCarousel" data-slide-to="	${loop.index}" <c:if test="${loop.index==0 }">class="active"</c:if>></li>
    </c:forEach>
    </ol>

    <!-- Wrapper for slides -->
    
    <div class="carousel-inner" role="listbox">
    <c:forEach items="${newslist}" var="nw" varStatus="loop">
      <div <c:if test="${loop.index!=0 }">class="item"</c:if> <c:if test="${loop.index==0 }">class="item active"</c:if>>
       <img class="img-rounded" src="<c:url value="/img/festivity/${nw.poster }" />" style=" width:560; height:350;" href="#" data-toggle="modal"
				data-target="#logo" data-gtitle="${nw.title}" data-gswork="${nw.SWork}" data-gework="${nw.EWork}" data-glocation="${nw.location}" data-gfName="${nw.farmName}" 
				data-gphone="${nw.phone}">
			<!-- 	<div u="thumb" class="" style="font-family: verdana; font-weight: normal; position: absolute; width: 100%; height: 100%; top: 0px; text-align:center; color: rgb(255, 255, 255); line-height: 45px; font-size: 20px; padding-left: 10px;">
			
				</div> -->
	</div>      
	
	   	<div id="footer_container">
	<footer class="footer">
	<div class="container">
		<div class="col-md-6" align="left">
				<div class="row form-inline">
						<span style="color: white;font-size: 16px;">Copyright ©2015</span>
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
					<a class="textright" href="index">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</a>
					<img id="imgfooter" src="<c:url value="/resources/img/b2.png" /> " height="45" " title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
</div>
	
 </c:forEach>
    
      </div>
  
	
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
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
								<form:input path="phone" id="phone" class="form-control"/>
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
		</div> --%>
		<!-- modal -->
	</div>
	

		<!-- modal -->
		<div id="logo" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title" id="head"></h3>
					</div>
					<div class="modal-body">
						<div class="text-center">
						<h4 id="date"></h4>
						<h4 id="namefarm"></h4>	
						<h4 id="detail"></h4>	
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
						
					</div>
				</div>
			</div>
		</div>
		
		<br><br>

   	<div id="footer_container">
	<footer class="footer">
	<div class="container">
		<div class="col-md-6" align="left">
				<div class="row form-inline">
						<span style="color: white;font-size: 16px;">Copyright ©2015</span>
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="" target="_blank" style="font-size: 16px;">Development Team</a>	
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="" target="_blank" style="font-size: 16px;">Contact</a>
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
					<a class="textright" href="index">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</a>
					<img id="imgfooter" src="<c:url value="/resources/img/b2.png" /> " height="45" " title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
</div>
		<!-- modal -->
<script type="text/javascript">
$('#logo').on('show.bs.modal', function(e) {
	 var g_title = $(e.relatedTarget).data('gtitle');
	 var g_swork = $(e.relatedTarget).data('gswork');
	 var g_ework = $(e.relatedTarget).data('gework');
	 var g_location = $(e.relatedTarget).data('glocation');
	 var g_farmName = $(e.relatedTarget).data('gfname');
	 var g_phone = $(e.relatedTarget).data('gphone');
	 var date = "วันที่ "+g_swork+"  ถึง  "+g_ework;
	 var details = g_location+"\n"+g_phone;
	 document.getElementById('date').innerHTML=date;
	 document.getElementById('head').innerHTML=g_title;
	 document.getElementById('detail').innerHTML=details;
	 document.getElementById('namefarm').innerHTML=g_farmName;
});



//register
$(document).on('click','#add3',function(s){
	var user = $("#user").val();
	var pass = $("#password").val();
	var pass2 = $("#password2").val();
	var email = $("#email").val();
	var idcard = $("#idcard").val();
	var name = $("#name").val();
	var surname = $("#surname").val();
	var address = $("#address").val();
	var farm = $("#farm").val();
	var tel = $("#tel").val();
	var msg ="";
	if (user==""){
		msg+="กรุณากรอกชื่อผู้ใช้\n";
	}
	if (pass==""){
		msg+="กรุณากรอกรหัสผ่าน\n";
	}
	if (pass!=pass2){
		msg+="รหัสไม่ตรงกัน\n";
	}
	if (email=="" ||email.indexOf('@') == -1 || email.indexOf('.') == -1){
		error = 1;
		msg+="กรุณากรอกอีเมลล์\n";
	}
	if (idcard==""){
		msg+="กรุณากรอกเลขบัตรประชาชน\n";
	}
	if (name==""){
		msg+="กรุณากรอกชื่อ\n";
	}
	if (surname==""){
		msg+="กรุณากรอกนามสกุล\n";
	}
	if (address==""||address.length < 15){
		msg+="กรุณากรอกที่อยู่\n";
	}
	if (farm==""){
		msg+="กรุณากรอกชื่อฟาร์ม\n";
	}
	if (tel==""){
		msg+="กรุณากรอกเบอร์โทร\n";
	}
	if(msg!=""){
		 swal("Oops...", "Something went wrong!", "error");
	}
	else{
		$.post('checkuser',{username:$("#user").val()},function(message){
			if(message=="yes"){
				$.post('checkIdCardNo',{idCardNo:$("#idcard").val()},function(result){
					
					if(result=="true"){
				$.ajax({
					url:"register",
					method:"POST",
					data:$("#member").serialize()
				}).done(function(a){
					swal({  title: "สำเร็จ",   
						text: "เรียบร้อยแล้ว", 
						type: "success",   
						showCancelButton: false,   
						confirmButtonText: "OK!",   
						closeOnConfirm: false }, 
						
						function(){   
							window.location.href='index'; 
							});
				});
					}
					else
						{
						swal("ผิดพลาด", "ตรวจสอบรหัสบัตรประชาชนให้ถูกต้อง", "error");
						}
				});
			}else{
				 swal("ไม่สำเร็จ...", "ผิดพลาด!", "error");
			}
		});
		s.preventDefault();
	}
});

</script>

</body>
</html>