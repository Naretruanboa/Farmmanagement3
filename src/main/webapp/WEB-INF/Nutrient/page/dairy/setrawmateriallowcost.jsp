<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>การจัดสัดส่วนอาหาร</title>
</head>
<body>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
	<jsp:include page="../menu.jsp"/>
<%int i=1; %>	
		 <div class="container">
		 <hr>
		 <div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">จัดการส่วนอาหารของโคนม</p>
						</div>
					</div>
				</div>
			</div>
		<div class="col-md-5">
				<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 18px; color: white;">
							&nbsp;ตารางการจัดสัดส่วน
						</h3>
					</div>
					<div class="panel-body">
								<center>
									<div class="row form-group"> 
											<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr bgcolor ="#b0dff0">
														<th colspan="3">อาหารหยาบ</th>
													</tr>
													
													<tr bgcolor ="#ebf7fb">
														<th>ชื่อวัตถุดิบ</th>
														<th>ปริมาณ</th>
														<th>ราคา</th>

														
													</tr>
													
													<tr>
														<th>
														<select class="form-control" id="cow1">
															<option value="0">เลือกวัตถุดิบ</option>
														</select>
														</th>
														<th><input type="text"><br></th>
														<th><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control" id="cow1">
															<option value="0">เลือกวัตถุดิบ</option>
														</select>
														</th>
														<th><input type="text"><br></th>
														<th><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control" id="cow1">
															<option value="0">เลือกวัตถุดิบ</option>
														</select>
														</th>
														<th><input type="text"><br></th>
														<th><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control" id="cow1">
															<option value="0">เลือกวัตถุดิบ</option>
														</select>
														</th>
														<th><input type="text"><br></th>
														<th><br></th>
														
													</tr>
													
													
													
													<tr bgcolor ="#b0dff0">
														<th colspan="3">อาหารข้นผสมเอง</th>
													</tr>
													
													<tr bgcolor ="#ebf7fb">
														<th>ชื่อวัตถุดิบ</th>
														<th>ปริมาณ</th>
														<th>ราคา</th>

														
													</tr>
													<tr>
														<th><br></th>
														<th></th>
														<th><br></th>
														
													</tr>
													
													<tr>
														<th><br></th>
														<th></th>
														<th><br></th>
														
													</tr>
													
													<tr>
														<th><br></th>
														<th></th>
														<th><br></th>
														
													</tr>
													<tr>
														<th><br></th>
														<th></th>
														<th><br></th>
														
													</tr>
													
													
													
												</thead> 
												
												
											</table>
											
									</div>
									
								</center>
								
								</div>
				
				</div>		
			</div>
				
			<div class="col-md-7">
			<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 18px; color: white;">
							&nbsp;ตารางค่าทางโภชนะ
						</h3>
					</div>
					<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;">
					<tr>
												
														<th>น้ำหนัก(กก.)
															<br>กินได้(%นน.ตัว)
															<br>กินได้ นน.แห้ง(กก)
															<br>น้ำหนักเพิ่ม (กก./วัน)		
														</th>
														
														<th>แป้ง (%)
															<br>%โปรตีนสลายตัว
															<br>แป้ง/โปรตีนสลายตัว
															<br>เยื่อใย ADF(%)
															<br>เยื่อใย ADFจากอาหารหยาบ(%)
														</th>
																							
					</tr>
					</table>

					<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="1" bordercolor="#BDBDBD">
					<thead >
					<tr bgcolor ="#b0dff0">
												
								<th>ปริมาณต่อวัน(กก.)</th>
								<th>โปรตีน</th>
								<th>พลังงาน</th>
								<th>เยื่อใย</th>
								<th>แป้ง</th>
								<th>วัตถุดิบแห้ง</th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">มาตรฐาน NRC</th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">จากอาหารที่ได้</th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">%เทียบกับมาตรฐาน</th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>																		
					</tr>
					
					<tr bgcolor ="#b0dff0">
												
								<th>ปริมาณต่อวัน(กก.)</th>
								<th>บายพาสโปรตีน</th>
								<th>โปรตีนสลายตัว</th>
								<th>แคลเซียม</th>
								<th>ฟอสฟอรัส</th>
								<th>วิตามินเอ</th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">มาตรฐาน NRC</th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">จากอาหารที่ได้</th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">%เทียบกับมาตรฐาน</th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>
								<th><br></th>																		
					</tr>
					<tr>			
								<th colspan="7">ได้รับยูเรีย = &nbsp;&nbsp;&nbsp;&nbsp; กรัม/น้ำหนักโค 100 กก. (ไม่ควรเกิน 30)</th>																	
					</tr>
					</thead >
					</table>
			</div>
		</div>
		
		<div align="center">
									<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="calculatedairy">เลือกอาหารข้นราคาต่ำสุด</a>
									</button>
									<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="#">คำนวณสูตร</a>
									</button>
									<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="#">บันทึกสูตร</a>
									</button>
									<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="setlistbeef">กลับ</a>
									</button>
			</div>
</div>

	
	<jsp:include page="../footer.jsp" />
	
	<script type="text/javascript">

		</script>
	
</body>
</html>