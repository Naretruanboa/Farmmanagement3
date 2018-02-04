<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Development</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
		html{
			margin-top: -30px;
			padding: 0;
			height: 100%;
		}
		h3{
			margin-top: 5px;
		}
		
		.nav-tabs {
			background-color: #6CCBED;
			font-size: 22px;
			border-bottom: none;
			border-radius: 4px 4px 0 0;
			-moz-border-radius: 4px 4px 0 0;
		}
		
		.nav-tabs>li {
			margin-bottom: 0;
			border-left: 1px solid #F9F9F9;
		}
		
		.nav-tabs>li>a:focus, .nav-tabs>li>a:hover {
			background-color: #C1EAF9;
			border: none;
		}
		
		.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover{
			color: #555;
			cursor: default;
			background-color: #C1EAF9;
			border: 1px solid #ddd;
			border-bottom-color: transparent;
			background-color: #C1EAF9;
		}
	</style>
</head>
<body>
<jsp:include page="menuHome2.jsp"/>
<br>
<div id="wrapper">
	<div id="content">
		<div class="container">
			<div align="center"><h1>ทีมพัฒนา ระบบการจัดการฟาร์ม</h1>
			<h3></h3></div>
			<hr>
			<div class="row">	
				<h3>ผู้พัฒนา</h3>	
			</div>
<!-- ################################################ ระบบการจัดการคลัง ################################################## -->
				<!-- <div class="row">
					<div class="col-md-offset-1 col-md-2">
						<div class="jumbotron" style="background-color: rgb(108, 203, 237)" align="center">
							<p style="font-size: 24px; font-weight: 550; color:black;">ระบบการจัดการคลัง</p>
						</div>
					</div>
				</div> -->
				<div class="row form-group">
	        		<div class="col-md-offset-2 col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/bie.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายฐากูร อุปธิ</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
					<div class="col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/sek.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายสุรเชษฐ์ กันทะเนตร</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
				</div>
				<div class="row form-group">
	        		<div class="col-md-offset-2 col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/jo.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายทักษิณ พรวัฒนเวทย์</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
					<div class="col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/tum.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายทศพล วงศ์วี</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
				</div>
				<div class="row form-group">
	        		<div class="col-md-offset-2 col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/got.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายวศิน มูลเมือง</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
					<div class="col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/toey.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายวรพล บุญช่วย</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
				</div>
				<div class="row form-group">
	        		<div class="col-md-offset-2 col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/aot.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ:</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-9" align="left">
								<p style="font-size: 20px;">นายรณกรณ์ วรเมธาพิพัฒน์</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
					<div class="col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/boon.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ :</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายวิบูลย์ชัย  รุ่งเรือง</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
				</div>
				<div class="row form-group">
	        		<div class="col-md-offset-2 col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/arnon.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ:</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา :</b></p>
							</div>
							<div class="col-md-9" align="left">
								<p style="font-size: 20px;">นายอานนท์ พรมพิทักษ์</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
				</div><hr>
			<div class="row">			
				<h3>ที่ปรึกษา</h3>				
				<div class="row form-group">
	        		<div class="col-md-offset-2 col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/ajnoi.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ: </b></p>
								<p style="font-size: 20px;"><b>&nbsp;ตำแหน่ง:</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา : </b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">ดร.ภูวิศสรณ์ ภูมิสรณคมณ์</p>
								<p style="font-size: 20px;">อาจารย์</p>
								<p style="font-size: 20px;">วิศวกรรมคอมพิวเตอร์</p>
							</div>
						</div>	
					</div>
					<div class="col-md-5">		
						<div class="col-md-5">
							<img src="<c:url value="/resources/img/develop/wattanapong.jpg"/>" class="img-thumbnail" alt="Cinque Terre" width="170" > 
						</div>	
						<div class="col-md-7">
							<div class="col-md-3" align="left">
								<p style="font-size: 20px;"><b>&nbsp;ชื่อ:</b></p>
								<p style="font-size: 20px;"><b>&nbsp;ตำแหน่ง:</b></p>
								<p style="font-size: 20px;"><b>&nbsp;สาขา:</b></p>
							</div>
							<div class="col-md-8" align="left">
								<p style="font-size: 20px;">นายวัฒนพงศ์ สุทธภักดิ์</p>
								<p style="font-size: 20px;">อาจารย์</p>
								<p style="font-size: 20px;">วิศวกรรมซอฟต์แวร์</p>
							</div>
						</div>	
					</div>
				</div>
				<hr>
			</div>
		</div><!-- end container -->
	</div><!-- end content -->
	
</div><!-- end wraper -->
</body>
</html>