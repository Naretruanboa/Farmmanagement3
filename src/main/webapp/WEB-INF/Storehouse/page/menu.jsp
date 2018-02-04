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
<script>
$(document).on('ready', function() {
    $("#input-4").fileinput({showCaption: false});
});
</script>


</head>
<body>
<header class="header"> <nav
	class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="Storehouse"><img
			src="<c:url value=  "resources/img/store.png"/> "
			height="40"></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>
	  <c:if test="${sessionScope.privilege == null}">
	  
	<div class="collapse navbar-collapse" id="myNavbar">
	
		<!-- <ul class="nav navbar-nav">
            <li><a href="alert">แจ้งเตือน</a></li>           
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
			<script>
			swal({  title: 'ผิดพลาด!',text: 'คุณยังไม่มีสิทธิ์ใช้งานระบบกรุณาติดต่อผู้ดูแลระบบ', 
				type: 'error',showCancelButton: 
				false,confirmButtonText: 'OK!',
				closeOnConfirm: false }, 
			function(){window.location.href="logout" });
			</script>
		</c:if>
<c:forEach items="${ulist }" var="m">		
	<c:if test="${m.privilege.id == 1}">
		<ul class="nav navbar-nav">
		<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-flask"></i> ยา<b class="caret"></b></a>
              	<ul class="dropdown-menu">
              	<li><a href="view_medicine">ลงทะเบียนยาใหม่</a></li>
              	<li><a href="stock_medicine">ยาคงคลัง</a></li>
                <li><a href="import_medicine">นำเข้ายา/ประวัติ</a></li>
			    <li><a href="release_medicine">เบิกยา/ประวัติ</a></li>
			    <li><a href="order_medicine">สั่งซื้อยา/ประวัติ</a></li>
			    
                </ul>
       	</li>
        <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/storehouse/semen_menubar.png" alt="logo" style="width:25px;height:25px;"> น้ำเชื้อ/ถังเก็บน้ำเชื้อ<b class="caret"></b></a> 
				<ul class="dropdown-menu">
					<li class="dropdown-submenu">
                      <a tabindex="-1">ลงทะเบียน</a>
                      <ul class="dropdown-menu">
                         <li><a tabindex="-1" href="view_semen">น้ำเชื้อ</a></li>
                         <li><a tabindex="-1" href="view_bucket">ถังเก็บน้ำเชื้อ/ถังเก็บไนโตรเจนเหลว</a></li>

                      </ul>
                  	</li>
					<li><a href="stock_semen">น้ำเชื้อคงคลัง</a></li>
					<li><a href="import_semen">นำเข้าน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="release_semen">เบิกน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="order_semen">สั่งซื้อน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="addnitrogen_bucket">เติมไนโตรเจนเหลว</a></li>			
				</ul>       
        </li>
        <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/storehouse/corn_menubar.png" alt="logo" style="width:30px;height:25px;"> วัตถุดิบ<b class="caret"></b></a> 
				<ul class="dropdown-menu">
					<li><a href="view_raw">ลงทะเบียนวัตถุดิบ</a></li>
					<li><a href="stock_raw">วัตถุดิบคงคลัง</a></li>
					<li><a href="import_raw">นำเข้าวัตถุดิบ/ประวัติ</a></li>
					<li><a href="release_raw">เบิกวัตถุดิบ/ประวัติ</a></li>
					<li><a href="order_raw">สั่งซื้อวัตถุดิบ/ประวัติ</a></li>									
				</ul>       
        </li>
        <li class="dropdown" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> วัสดุ/อุปกรณ์<b class="caret"></b></a>
              <ul class="dropdown-menu">
              	<li><a href="view_tool">ลงทะเบียนวัสดุ/อุปกรณ์</a></li>
              	<li><a href="stock_tool">วัสดุ/อุปกรณ์คงคลัง</a></li>
                <li><a href="import_tool">นำเข้าวัสดุอุปกรณ์/ประวัติ</a></li>
			    <li><a href="release_tool">เบิกวัสดุ/ประวัติ</a></li>
			    <li><a href="borrow_tool">ยืมคืนอุปกรณ์/ประวัติ</a></li>
			    <li><a href="Tool_broken">ส่งซ่อมอุปกรณ์</a></li>
			     <li><a href="order_tool">สั่งซื้อวัสดุอุปกรณ์/ประวัติ</a></li>			    
                </ul>               
        </li>
        <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-usd"></i> ซื้อ/ขายโค<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="dropdown-submenu">
								<a tabindex="-1">นำเข้าโค/ประวัติ</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="view_beef">โคเนื้อ</a></li>
									<li><a tabindex="-1" href="view_dairy">โคนม</a></li>
								</ul>
							</li>
							<li class="dropdown-submenu">
								<a tabindex="-1">ขาย/ส่งออกโค</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="sell_beef">โคเนื้อ</a></li>
									<li><a tabindex="-1" href="sell_dairy">โคนม</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-usd"></i> บัญชี<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<%--<li><a href="">นำเข้าบัญชี</a></li>--%>
							<li class="dropdown-submenu"><a tabindex="-1">แก้ไขบัญชี</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="account_medicine">ยา</a></li>
									<li><a tabindex="-1" href="account_semen">น้ำเชื้อ</a></li>
									<li><a tabindex="-1" href="account_raw">วัตถุดิบ</a></li>
									<li><a tabindex="-1" href="account_tool">วัศดุอุปกรณ์</a></li>
								</ul>
							</li>
							<li><a href="check_account">ตรวจสอบบัญชี</a></li>
						</ul>
					</li>
        <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-file-text"></i> ออกรายงาน<b class="caret"></b></a>
              <ul class="dropdown-menu">				
					<li><a href="report_stock">จำนวนคงคลัง</a></li>
					<li><a href="report_import">การนำเข้า</a></li>
					<li><a href="report_release">การเบิก</a></li>
					<li><a href="report_order">การสั่งซื้อ</a></li>
					<li><a href="report_borrow">การยืมคืนอุปกรณ์</a></li>
					<li><a href="report_broken">การส่งซ่อมอุปกรณ์</a></li>
				</ul>
		</li>
		<li><a href="alert"><i class="fa fa-exclamation-triangle"></i> แจ้งเตือน</a></li>
		<li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs"></i> ตั้งค่า <b class="caret"></b></a>
              <ul class="dropdown-menu">              		
                <li><a href="set_alert">ตั้งค่าการแจ้งเตือน</a></li>
                <!-- <li><a href="set_permit">ตั้งค่าสิทธิ์การใช้งานระบบ</a></li> -->
        		<li><a href="set_member">จัดการข้อมูลสมาชิก</a></li>   
        		<li><a href="set_unit">หน่วยที่ใช้ในคลัง</a></li> 
        		<li><a href="set_BreedandColor">สายพันธุ์/สีพ่อพันธุ์</a></li> 
        		<li><a href="set_TypeTool">หมวดหมู่วัสดุอุุปกรณ์</a></li>
        		<li><a href="set_TypeMaterial">ประเภทวัตถุดิบ</a></li>
        		<li><a href="set_brand">ตั้งค่าแบรนด์</a></li>            
                </ul>
       	</li>
       	<li><a href="<c:url value= "resources/img/storehouse/guide.pdf"/>" target=_blank><i class="fa fa-info-circle" aria-hidden="true"></i> คู่มือการใช้งาน</a></li>
		</ul>
	</c:if>
	<c:if test="${m.privilege.id == 2}">
		<ul class="nav navbar-nav">
		<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-flask"></i> ยา<b class="caret"></b></a>
              	<ul class="dropdown-menu">
              	<li><a href="view_medicine">ลงทะเบียนยาใหม่</a></li>
              	<li><a href="stock_medicine">ยาคงคลัง</a></li>
                <li><a href="import_medicine">นำเข้ายา/ประวัติ</a></li>
			    <li><a href="release_medicine">เบิกยา/ประวัติ</a></li>
			    <li><a href="order_medicine">สั่งซื้อยา/ประวัติ</a></li>
			    
                </ul>
       	</li>
        <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/storehouse/semen_menubar.png" alt="logo" style="width:25px;height:25px;"> น้ำเชื้อ/ถังเก็บน้ำเชื้อ<b class="caret"></b></a> 
				<ul class="dropdown-menu">
					<li class="dropdown-submenu">
                      <a tabindex="-1">ลงทะเบียน</a>
                      <ul class="dropdown-menu">
                         <li><a tabindex="-1" href="view_semen">น้ำเชื้อ</a></li>
                         <li><a tabindex="-1" href="view_bucket">ถังเก็บน้ำเชื้อ/ถังเก็บไนโตรเจนเหลว</a></li>

                      </ul>
                  	</li>
					<li><a href="stock_semen">น้ำเชื้อคงคลัง</a></li>
					<li><a href="import_semen">นำเข้าน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="release_semen">เบิกน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="order_semen">สั่งซื้อน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="addnitrogen_bucket">เติมไนโตรเจนเหลว</a></li>			
				</ul>       
        </li>
        <li class="dropdown" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> วัสดุ/อุปกรณ์<b class="caret"></b></a>
              <ul class="dropdown-menu">
			    <li><a href="release_tool">เบิกวัสดุ/ประวัติ</a></li>    
                </ul>               
        </li>
		<li><a href="alert"><i class="fa fa-exclamation-triangle"></i> แจ้งเตือน</a></li>
		</ul>
	</c:if>
	
	<c:if test="${m.privilege.id == 3}">
		<ul class="nav navbar-nav">
		<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-flask"></i> ยา<b class="caret"></b></a>
              	<ul class="dropdown-menu">
              	<li><a href="stock_medicine">ยาคงคลัง</a></li>
			    <li><a href="release_medicine">เบิกยา/ประวัติ</a></li>
                </ul>
       	</li>
        <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/storehouse/semen_menubar.png" alt="logo" style="width:25px;height:25px;"> น้ำเชื้อ/ถังเก็บน้ำเชื้อ<b class="caret"></b></a> 
				<ul class="dropdown-menu">
					<li class="dropdown-submenu">
                      <a tabindex="-1">ลงทะเบียน</a>
                      <ul class="dropdown-menu">
                         <li><a tabindex="-1" href="view_semen">น้ำเชื้อ</a></li>
                         <li><a tabindex="-1" href="view_bucket">ถังเก็บน้ำเชื้อ/ถังเก็บไนโตรเจนเหลว</a></li>

                      </ul>
                  	</li>
					<li><a href="stock_semen">น้ำเชื้อคงคลัง</a></li>
					<li><a href="import_semen">นำเข้าน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="release_semen">เบิกน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="order_semen">สั่งซื้อน้ำเชื้อ/ประวัติ</a></li>
					<li><a href="addnitrogen_bucket">เติมไนโตรเจนเหลว</a></li>			
				</ul>       
        </li>
        <li class="dropdown" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> วัสดุ/อุปกรณ์<b class="caret"></b></a>
              <ul class="dropdown-menu">
			    <li><a href="release_tool">เบิกวัสดุ/ประวัติ</a></li>    
                </ul>               
        </li>
		<li><a href="alert"><i class="fa fa-exclamation-triangle"></i> แจ้งเตือน</a></li>
		</ul>
	</c:if>
	
	<c:if test="${m.privilege.id == 4}">
		<ul class="nav navbar-nav">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/storehouse/corn_menubar.png" alt="logo" style="width:30px;height:25px;"> วัตถุดิบ<b class="caret"></b></a> 
				<ul class="dropdown-menu">
					<li><a href="view_raw">ลงทะเบียนวัตถุดิบ</a></li>
					<li><a href="stock_raw">วัตถุดิบคงคลัง</a></li>
					<li><a href="import_raw">นำเข้าวัตถุดิบ/ประวัติ</a></li>
					<li><a href="release_raw">เบิกวัตถุดิบ/ประวัติ</a></li>
					<li><a href="order_raw">สั่งซื้อวัตถุดิบ/ประวัติ</a></li>									
				</ul>       
        </li>
        <li class="dropdown" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> วัสดุ/อุปกรณ์<b class="caret"></b></a>
              <ul class="dropdown-menu">
              	<li><a href="view_tool">ลงทะเบียนวัสดุ/อุปกรณ์</a></li>
              	<li><a href="stock_tool">วัสดุ/อุปกรณ์คงคลัง</a></li>
                <li><a href="import_tool">นำเข้าวัสดุอุปกรณ์/ประวัติ</a></li>
			    <li><a href="release_tool">เบิกวัสดุ/ประวัติ</a></li>
			    <li><a href="borrow_tool">ยืมคืนอุปกรณ์/ประวัติ</a></li>
			    <li><a href="Tool_broken">ส่งซ่อมอุปกรณ์</a></li>
			     <li><a href="order_tool">สั่งซื้อวัสดุอุปกรณ์/ประวัติ</a></li>			    
                </ul>               
        </li>
		<li><a href="alert"><i class="fa fa-exclamation-triangle"></i> แจ้งเตือน</a></li>
		</ul>
	</c:if>
	
	<c:if test="${m.privilege.id == 5}">
		<ul class="nav navbar-nav">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/img/storehouse/corn_menubar.png" alt="logo" style="width:30px;height:25px;"> วัตถุดิบ<b class="caret"></b></a> 
				<ul class="dropdown-menu">
					<li><a href="stock_raw">วัตถุดิบคงคลัง</a></li>
					<li><a href="release_raw">เบิกวัตถุดิบ/ประวัติ</a></li>								
				</ul>       
        </li>
        <li class="dropdown" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> วัสดุ/อุปกรณ์<b class="caret"></b></a>
              <ul class="dropdown-menu">
              	<li><a href="stock_tool">วัสดุ/อุปกรณ์คงคลัง</a></li>
			    <li><a href="release_tool">เบิกวัสดุ/ประวัติ</a></li>	    
                </ul>               
        </li>
		<li><a href="alert"><i class="fa fa-exclamation-triangle"></i> แจ้งเตือน</a></li>
		</ul>
	</c:if>
		
		
		<!-- **********************login logout********************** -->
		
		<ul class="nav navbar-nav navbar-right">
			
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;${m.first}&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">              		
                	<li ><a href="member"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;ข้อมูลส่วนตัว</a></li>
       			 	<li ><a href="index"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;กลับหน้าหลัก</a></li>
					<li ><a href="logout"><i class="fa fa-sign-out"></i>&nbsp;ออกจากระบบ</a></li>          
               </ul>
       	</li>
		</ul>
</c:forEach>
		
	
	
	
	
		
	</c:if>
<%-- ===============	EXAMPLE 	=====================================
	<c:if test="${sessionScope.privilege != null}"> <!-- //เรียก privilege ที่เซต atribute ใน maincontroller login -->
		<c:forEach items="${ulist }" var="m">
		<ul class="nav navbar-nav">
			<c:if test="${m.privilege.id == 1}">   <!-- //กำหนดสิทธิ์การใช้งานแต่ละเมนู -->
			<li><a href="#">หน้าของ admin</a></li>
			</c:if>
			
			<c:if test="${m.privilege.id == 2}">
			<li><a href="#">หน้าของ คนอื่น</a></li>
			</c:if>
			
			<c:if test="${m.privilege.id == 1 || m.privilege.id == 3}">
			<li><a href="#">หน้าของ admin</a></li>
			<li><a href="#">หน้าของ คนอื่น</a></li>
			</c:if>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
         			
        </div>
        <li ><a href="member">${m.first}&nbsp;${m.last}</a></li>
		 <li ><a href="logout">ออกจากระบบ</a></li>
		</ul>
		</c:forEach>
	</c:if>
		===============/	EXAMPLE 	===================================== --%>
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
								<input type="text" name="username" id="username" class="form-control">
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
						
						<button type="button" class="btn btn-success" id="log">ล็อคอิน</button>
						<button type="submit" class="btn btn-danger" data-dismiss="modal" id="close">ปิด</button>
						
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		</form>
	</div>



<script type="text/javascript"> 
$(document).on('click','#log',function(e){
	//alert("KKK");
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