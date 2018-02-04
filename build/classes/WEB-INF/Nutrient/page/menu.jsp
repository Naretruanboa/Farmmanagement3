<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.mingot.css" />"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/bootflatgot.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/homestylegot.css"/>"
	rel='stylesheet' type='text/css' />
<link
	href="<c:url value="/resources/font-awesome-4.3.0/css/font-awesome.mingot.css"/>"
	rel='stylesheet' type='text/css' />
	
<!-- Sweet alert -->
	<link href="<c:url value="/resources/css/sweetalertgot.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/sweetalert-devgot.js"/>"></script>
	
	<script src="<c:url value="/resources/js/jquery-2.1.3.mingot.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.mingot.js"/>"></script>	


<link href="<c:url value="/resources/css/fileinput.mingot.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/fileinput.mingot.js"/>"></script>	
<link href="<c:url value="/resources/css/fileinputgot.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/fileinputgot.js"/>"></script>	
<script>
$(document).on('ready', function() {
    $("#input-4").fileinput({showCaption: false});
});
</script>

  	<link href="<c:url value="/resources/picker/bootstrap-datepicker.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/picker/jquery.timepicker.css"/>" rel="stylesheet">
</head>
<body>
<header class="header"> <nav
	class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">

	<div class="navbar-header">
		<a class="navbar-brand" href="index"><img
			src="<c:url value=  "resources/img/Nutrient/b1.png"/> "
			height="40"></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>
	  <c:if test="${sessionScope.privilege == null}">
	  
	<div class="collapse navbar-collapse" id="myNavbar">
	
	
		<ul class="nav navbar-nav navbar-right">
			<li style="font-size: 18px;"><a href="register" ><i class="glyphicon glyphicon-user"></i>
					สมัครสมาชิก</a></li>
			<li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#login"><i class="glyphicon glyphicon-log-in"></i>
					เข้าสู่ระบบ</a></li>

		</ul>
	</div>
	</c:if>
	
	<c:if test="${sessionScope.privilege != null }"> 
		<c:forEach items="${ulist}" var="m">
		<ul class="nav navbar-nav">
		<%-- <c:if test="${m.privilege.id == 1 }">   <!-- show menu by priviledge = 1 -->   
			<li><a href="#">หน้า 1</a></li>
		</c:if>
		
		<c:if test="${m.privilege.id == 2 || m.privilege.id == 1 }">  <!-- show menu by priviledge = 7,1 -->
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">โคเนื้อ <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="ViewCow1">เริ่มการใช้งานการจัดสัดส่วนอาหาร</a></li>
                <li><a href="ViewCow3">ประวัติการจัดสัดส่วน</a></li>
                </ul>
                </li>
		</c:if> --%>
		
		
		<!--admin -->
            <c:if test="${m.privilege.id==1 }">
              <ul class="nav navbar-nav">
            <li><a href="setlistbeef"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนโคเนื้อ</a></li>
            
            
            <li><a href="setlistdairy"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนโคนม</a></li>
           
           <li><a href="calculatelowcost"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนอาหารข้นราคาต่ำสุด</a></li>
           

             <li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-file-text"></i> ออกรายงาน <b class="caret"></b></a>
              <ul class="dropdown-menu">
               
               
                <li><a href="ReportCalculate"><i class="fa fa-file-text"></i> ออกรายงานจัดสัดส่วนอาหารข้นราคาต่ำสุด</a></li>
                
                </ul>
                </li>
             
             
                 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs"></i> ตั้งค่า<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="SetMemberNutrientSystem">ตั้งค่าข้อมูลสมาชิก</a></li>
                <li	><a href="setbrandNutrientSystem">ตั้งค่าแบรนด์</a></li>
                 <li><a href="SetrawmaterialNutrientSystem">ตั้งค่าข้อมูลวัตถุดิบ</a></li>
                 <li><a href="SetrawmaterialnutrientNutrientSystem">ตั้งค่าข้อมูลทางโภชนะของวัตถุดิบ</a></li>
                </ul>
                </li>
                
                 <li><a href="<c:url value= "resources/img/Nutrient/guide.pdf" />" target=_blank><i class="fa fa-info-circle" aria-hidden="true"></i> คู่มือการใช้งาน</a></li>
                 
            </ul>
            
            
 </c:if>
			
			
	 
	        <c:if test="${m.privilege.id==2 }">
              <ul class="nav navbar-nav">
            <li><a href="setlistbeef"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนโคเนื้อ</a></li>
            
            
            <li><a href="setlistdairy"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนโคนม</a></li>
           
           <li><a href="calculatelowcost"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนอาหารข้นราคาต่ำสุด</a></li>
           

             <li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-file-text"></i> ออกรายงาน <b class="caret"></b></a>
              <ul class="dropdown-menu">
               
               
                <li><a href="ReportCalculate"><i class="fa fa-file-text"></i> ออกรายงานจัดสัดส่วนอาหารข้นราคาต่ำสุด</a></li>
                
                </ul>
                </li>
             
             
                 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs"></i> ตั้งค่า<b class="caret"></b></a>
              <ul class="dropdown-menu">
               
                <li	><a href="set_brand">ตั้งค่าแบรนด์</a></li>
                 
                </ul>
                </li>
                
                 <li><a href="guideprogram" target=_blank><i class="fa fa-info-circle" aria-hidden="true"></i> คู่มือการใช้งาน</a></li>
            </ul>
           
           
                
       </c:if>
		
			
	 <c:if test="${m.privilege.id==7 }">
	
            <ul class="nav navbar-nav">
            <li><a href="setnutrientbeef"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนอาหารโคเนื้อ</a></li>
            
            
            <li><a href="setnutrientdairy"><i class="fa fa-calculator" aria-hidden="true"></i> จัดสัดส่วนอาหารโคนม</a></li>
           
           

             <li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-file-text"></i> ออกรายงาน <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="ReportNutrientCow">ออกรายงานค่าความต้องการโค</a></li>
                <li><a href="ReportFood">ออกรายงานจัดสัดส่วนอาหาร</a></li>
                <li><a href="ReportCalculate">ออกรายงานจัดสัดส่วนอาหารข้นราคาต่ำสุด</a></li>
                <li><a href="ReportStock">ออกรายงานการตัดสต๊อกวัตถุดิบ</a></li>
                </ul>
                </li>
              
             
                 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs"></i> ตั้งค่า<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="SetMember">ตั้งค่าข้อมูลสมาชิก</a></li>
                 <li><a href="SetCow">ตั้งค่าข้อมูลโค</a></li>
                 <li><a href="Setrawmaterial">ตั้งค่าข้อมูลวัตถุดิบ</a></li>
                 <li><a href="Setrawmaterialnutrient">ตั้งค่าข้อมูลทางโภชนะของวัตถุดิบ</a></li>
                </ul>
                </li>
            </ul>
            <li><a href="guideprogram">แนะนำการใช้งานโปรแกรม</a></li>
	</c:if>
		
		<c:if test="${m.privilege.id==7 }">
              	<script type="text/javascript">
        		swal({  title: "Oop!",   
					text: "คุณอยู่ในระหว่างรอการอนุมัติ!", 
					type: "error",   
					showCancelButton: false,   
					confirmButtonText: "OK!",   
					closeOnConfirm: false }, 
					
					function(){   
						window.location.href='logout'; 
						});
              	</script>
              </c:if>	
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			       <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;${m.first}<b class="caret"></b></a>
              <ul class="dropdown-menu">              		
                	<li ><a href="member"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;ข้อมูลส่วนตัว</a></li>
       			 	<li ><a href="index"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;กลับหน้าหลัก</a></li>
					<li ><a href="logout"><i class="fa fa-sign-out"></i>&nbsp;ออกจากระบบ</a></li>          
               </ul>
       	</li>
       </ul>
		
		</c:forEach>
	</c:if>
	
</div>
</nav> 
</header>
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
								<input type="text" name="username" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<input type="password" name="password" class="form-control">
								
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
						<!-- <a href="index_admin">  -->
							<button type="submit" class="btn btn-primary" id="btn_login">ล็อคอิน</button>
						<!-- </a> -->
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
								</form>
	</div>
<script type="text/javascript">
$('#login').on('hide.bs.modal', function(e) {
    document.getElementById("loginForm").reset();
}); </script>
</body>
</html>