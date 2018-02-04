<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap -->
	<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel='stylesheet' type='text/css' />
	<link href="<c:url value="/resources/css/bootflat.css"/>"
	rel='stylesheet' type='text/css' />
	<link href="<c:url value="/resources/css/homestyle.css"/>"
	rel='stylesheet' type='text/css' />
	<link href="<c:url value="/resources/font-awesome-4.3.0/css/font-awesome.min.css"/>"
	rel='stylesheet' type='text/css' />
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
	<script>
		$(document).on('ready', function() {
    		$("#input-4").fileinput({showCaption: false});
		});
	</script>
</head>
<body>
<header class="header"> 
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="Certificate"><img
			src="<c:url value=  "resources/img/b1.png"/> "
			height="40"></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>
		<ul class="nav navbar-nav">
            <li><a href="news"><!-- <i class="fa fa-bullhorn"></i> --><i class="fa fa-newspaper-o"></i> ข่าวประกาศ </a></li>
    	</ul>
	 <c:if test="${sessionScope.privilege == null}"> 
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav navbar-right">
			<!-- <li style="font-size: 18px;"><a href="regis"><i class="fa fa-user-plus"></i>
					สมัครสมาชิก</a></li>  -->
			<li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#login"><i class="fa fa-sign-in"></i>
					เข้าสู่ระบบ</a></li>
		</ul>
	</div>
	</c:if>
	<c:if test="${sessionScope.privilege != null}">
		  <c:forEach items="${userlist}" var="u">
	  <ul class="nav navbar-nav">

            <!--admin -->
            <c:if test="${u.privilege.id==1 }">
              <ul class="nav navbar-nav">
              <li><a href="Work"><i class="fa fa-list"></i> งานโค</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="ViewCow1"><i class="fa fa-trophy"></i> โคประกวด</a></li>
                <li><a href="ViewCow2"><i class="fa fa-gavel"></i> โคประมูล</a></li>
                </ul>
                </li>
                
                <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-clipboard"></i> ออกใบสูจิบัตรโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="report_certificateshow"><i class="fa fa-certificate"></i> ออกใบสูจิบัตรโคประกวด</a></li>
                <li><a href="report_certificatepun"><i class="fa fa-file-powerpoint-o"></i> ออกใบสูจิบัตรโคประมูลโคพันธุ์</a></li>
                <li><a href="report_certificatekun"><i class="fa fa-file-o"></i> ออกใบสูจิบัตรโคประมูลโคขุน</a></li>
                </ul>
                </li>

             
                <li><a href="report_work"><i class="fa fa-file-text"></i> ออกรายงาน</a></li>
                <li><a href="HomeReport"><i class="fa fa-usd"></i> สรุปค่าใช้จ่าย</a></li>
             
                 <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cogs"></i> ตั้งค่า <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="Setlist"><i class="fa fa-cog"></i> ตั้งค่ารายการ</a></li>
                 <!-- <li><a href="User"><i class="fa fa-users"></i> สมาชิก</a></li> -->
                 
                </ul>
                </li>
                
            </ul>
            
 </c:if>
			<!-- 	/admin -->
			
	   <!--official -->
	        <c:if test="${u.privilege.id==5 }">
              <!-- ดอบดาว -->
            <!-- ดอบดาว -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="ViewCow1"><i class="fa fa-trophy"></i> โคประกวด</a></li>
                <li><a href="ViewCow2"><i class="fa fa-gavel"></i> โคประมูล</a></li>
                </ul>
                </li>
                
                <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-clipboard"></i> ออกใบสูจิบัตรโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="report_certificateshow"><i class="fa fa-certificate"></i> ออกใบสูจิบัตรโคประกวด</a></li>
                <li><a href="report_certificatepun"><i class="fa fa-file-powerpoint-o"></i> ออกใบสูจิบัตรโคประมูลโคพันธุ์</a></li>
                <li><a href="report_certificatekun"><i class="fa fa-file-o"></i> ออกใบสูจิบัตรโคประมูลโคขุน</a></li>
                </ul>
                </li>
                
                
       		<li><a href="report_work"><i class="fa fa-file-text"></i> ออกรายงาน</a></li>
            <li><a href="HomeReport"><i class="fa fa-usd"></i> สรุปค่าใช้จ่าย</a></li>
   
         <!--     <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">ตั้งค่า<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="Setlist">ตั้งค่ารายการ</a></li>
                 <li><a href="User">สมาชิก</a></li>
                </ul>
                </li> -->    <!-- ตั้งค่ารุ่นโคประกวด -->
                
       </c:if>
			<!-- 	/official -->
	
	
			<!-- member -->
			
	 <c:if test="${u.privilege.id==6 }">
	
             <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-wrench"></i> จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="ViewCow1"><i class="fa fa-trophy"></i> โคประกวด</a></li>
                <li><a href="ViewCow2"><i class="fa fa-gavel"></i> โคประมูล</a></li>
                </ul>
                </li>
              </ul>
	</c:if>
		<!-- 	/member -->
		<ul class="nav navbar-nav">
           <li>
           		<a href="<c:url value= "img/file/manual_certificate.pdf" />" target=_blank><i class="fa fa-info-circle" aria-hidden="true"></i> คู่มือการใช้งาน</a>
           	</li>
           
    	</ul>
		
	</ul>
	<ul class="nav navbar-nav navbar-right">
			
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;${u.first}<b class="caret"></b></a>
              <ul class="dropdown-menu">              		
                	<li ><a href="member"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;ข้อมูลส่วนตัว</a></li>
       			 	<li ><a href="index"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;กลับหน้าหลัก</a></li>
					<li ><a href="logout"><i class="fa fa-sign-out"></i>&nbsp;ออกจากระบบ</a></li>          
               </ul>
       	</li>
		</ul>
	<%-- <ul class="nav navbar-nav navbar-right">
              <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
           <a class="navbar-brand" href=""><img src="<c:url value="resources/img/o${u.privilege.id}.png"/> "
			height="40"></a> 
        </div>
          <li ><a href="#"><i class="fa fa-user"></i>  ${u.privilege.value}</a></li> 
             <li ><a href="logout"><i class="fa fa-sign-out"></i>  ออกจากระบบ </a></li>
             </ul> --%>
                <c:if test="${u.privilege.id==7 }">
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
						<h3 class="modal-title"><i class="fa fa-sign-in"></i> เข้าสู่ระบบ</h3>
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
						
						<!-- <a href="index_admin">  -->
							<button type="submit" class="btn btn-primary" id="btn_login">ล็อคอิน</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
						<!-- </a> -->
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
								</form>
	</div>

</body>
</html>