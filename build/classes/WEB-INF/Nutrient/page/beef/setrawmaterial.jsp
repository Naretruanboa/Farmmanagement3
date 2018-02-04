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
							<p style="font-size: 28px; font-weight: 700; color: white;">จัดการส่วนอาหารของโคเนื้อ</p>
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
					<form action="rawmaterialnutrient" method="POST"  id="rawmaterialnutrient">
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
														<select class="form-control rawid " name="raw1" id="raw1" onchange="listdata();">
											<option value="100000">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 1}">		
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
										</th>
														<th><input type="text" id="in1"><br></th>
														<th><input id="price01" type="text" size="10"><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control rawid1 " name="raw2" id="raw2" onchange="listdata1();">
											<option value="100001">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 1}">			
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>
															
											</c:forEach>
										</select>
										</th>
														<th><input type="text" id="in2"><br></th>
														<th><input id="price02" type="text" size="10"><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control rawid2 " name="raw3" id="raw3" onchange="listdata2();">
											<option value="100002">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 1}">			
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>
															
											</c:forEach>
										</select>
										</th>
														<th><input type="text" id="in3"><br></th>
														<th><input id="price03" type="text" size="10"><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control rawid3 " name="raw4" id="raw4" onchange="listdata3();">
											<option value="100003">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 1}">			
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>
															
											</c:forEach>
										</select>
										</th>
														<th><input type="text" id="in4"><br></th>
														<th><input id="price04" type="text" size="10"><br></th>
														
													</tr>
													<tr>
														<th>
														<select class="form-control rawid4 " name="raw5" id="raw5" onchange="listdata4();">
											<option value="100004">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 1}">			
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>
															
											</c:forEach>
										</select>
										</th>
														<th><input type="text" id="in5"><br></th>
														<th><input id="price05" type="text" size="10"><br></th>
														
													</tr>
													<tr bgcolor ="#b0dff0">
														<th colspan="3">อาหารข้นสำเร็จรูป</th>
													</tr>
													
													<tr bgcolor ="#ebf7fb">
														<th>ชื่อวัตถุดิบ</th>
														<th>ปริมาณ</th>
														<th>ราคา</th>

														
													</tr>
													<tr>
														<th>
														<select class="form-control rawid5 " name="raw6" id="raw6" onchange="listdata5();">
											<option value="100005">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 3}">			
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>
															
											</c:forEach>
										</select>
										</th>
														<th><input type="text" id="in6"><br></th>
														<th><input id="price06" type="text" size="10"><br></th>
														
													</tr>


													
													
													
													
												</thead> 
												
												
											</table>
											
									</div>

								</center>
								</form>
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
												
														<th>น้ำหนัก(กก.) : ${cattledetail.weight}
															<br> กินได้(%นน.ตัว) : &nbsp; <label class="sh12"></label>
															<br>กินได้ นน.แห้ง(กก) : &nbsp; <label class="sh13"></label>
															<br>น้ำหนักเพิ่ม (กก./วัน) : ${cattledetail.wpD}	
														</th>
														
														<th></th>
														
														<th>แป้ง (%) : &nbsp; <label class="sh14"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ระหว่าง  20-40%)
															<br>แป้ง/โปรตีนสลายตัว  : &nbsp; <label class="sh15"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ระหว่าง  60-66)
															<br>โปรตีนNPN/โปรตีน: &nbsp; <label class="sh16"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ระหว่าง  2.5-4)
															<br>เยื่อใย ADF(%) : &nbsp; <label class="sh17"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ระหว่าง  17-27%)
														</th>
																							
					</tr>
					</table>

					<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="1" bordercolor="#BDBDBD">
					<thead >
					<tr bgcolor ="#b0dff0">
												
								<th>ปริมาณต่อวัน(กก.)</th>
								<th>โปรตีน</th>
								<th>พลังงาน TDN</th>
								<th>เยื่อใย ADF</th>
								<th colspan="2">แป้ง</th>
								<th>วัตถุดิบแห้ง</th>
																	
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">มาตรฐาน NRC</th>
								<th>${cattlenutrient.protein}<br></th>
								<th>${cattlenutrient.tdn}<br></th>
								<th>${cattlenutrient.adf}<br></th>
								<th colspan="2">${cattlenutrient.nfc}<br></th>
								<th>${cattlenutrient.dm}<br></th>																	
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">จากอาหารที่ได้</th>
								<th class="sh1"><br></th>
								<th class="sh2"><br></th>
								<th class="sh3"><br></th>
								<th class="sh4" colspan="2"><br></th>
								<th class="sh5"><br></th>																	
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">%เทียบกับมาตรฐาน</th>
								<th class="sh20"><br></th>
								<th class="sh21"><br></th>
								<th class="sh22"><br></th>
								<th colspan="2" class="sh23"><br></th>
								<th class="sh24"><br></th>																	
					</tr>
					
					<tr bgcolor ="#b0dff0">
								
								<th>ปริมาณต่อวัน(กก.)</th>
								<th>พลังงาน me</th>
								<th>พลังงาน Nem</th>					
								<th>พลังงาน Neg</th>
								<th>แคลเซียม</th>
								<th>ฟอสฟอรัส</th>
								<th>โปรตีนสลายตัว</th>																	
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">มาตรฐาน NRC</th>
								<th>${cattlenutrient.me}<br></th>
								<th>${cattlenutrient.nem}<br></th>
								<th>${cattlenutrient.neg}<br></th>
								<th>${cattlenutrient.ca}<br></th>
								<th>${cattlenutrient.p}<br></th>
								<th>${cattlenutrient.dip}<br></th>	
																									
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">จากอาหารที่ได้</th>
								<th class="sh6"><br></th>
								<th class="sh7"><br></th>
								<th class="sh8"><br></th>
								<th class="sh9"><br></th>
								<th class="sh10"><br></th>	
								<th class="sh11"><br></th>																		
					</tr>
					<tr>
												
								<th bgcolor ="#ebf7fb">%เทียบกับมาตรฐาน</th>
								<th class="sh25"><br></th>
								<th class="sh26"><br></th>
								<th class="sh27"><br></th>
								<th class="sh28"><br></th>
								<th class="sh29"><br></th>
								<th class="sh30"><br></th>																	
					</tr>
					<tr>			
								<th colspan="7"><br></th>																	
					</tr>
					</thead >
					</table>
			</div>
		</div>
		<div align="center">
									
									<button class="btn btn-success" onclick="calcal()">ทำการคำนวณ</button>
									<!-- <button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="#">บันทึกสูตร</a>
									</button>
									<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="#">กลับ</a>
									</button> -->
		</div>
		
		<input id="cp555" value="${cattlenutrient.protein}" type=hidden>
		<input id="tdn555" value="${cattlenutrient.tdn}" type=hidden>
		<input id="nel555" value="${cattlenutrient.nel}" type=hidden>
		<input id="ndf555" value="${cattlenutrient.ndf}" type=hidden>
		<input id="adf555" value="${cattlenutrient.adf}" type=hidden>
		<input id="nfc555" value="${cattlenutrient.nfc}" type=hidden>
		
		<input id="dm555" value="${cattlenutrient.dm}" type=hidden>
		<input id="uip555" value="${cattlenutrient.uip}" type=hidden>
		<input id="dip555" value="${cattlenutrient.dip}" type=hidden>
		<input id="ca555" value="${cattlenutrient.ca}" type=hidden>
		<input id="p555" value="${cattlenutrient.p}" type=hidden>
		
		<input id="me555" value="${cattlenutrient.me}" type=hidden>
		<input id="nem555" value="${cattlenutrient.nem}" type=hidden>
		<input id="neg555" value="${cattlenutrient.neg}" type=hidden>
		
		<input id="c999" value="${cattlenutrient.vitA}" type=hidden>
		
		<input id="d999" value="${cattledetail.weight}" type=hidden><br>
		<input id="a_1" type="hidden">
		<input id="a_2" type="hidden">
		<input id="a_3" type="hidden">
		<input id="a_4" type="hidden">
		<input id="a_5" type="hidden">
		<input id="a_6" type="hidden">
		<input id="a_7" type="hidden">
		<input id="a_8" type="hidden">
		<input id="a_9" type="hidden">
		<input id="a_10" type="hidden">
		<input id="a_11" type="hidden">
		<input id="a_12" type="hidden">
		<input id="a_13" type="hidden">
		<input id="a_14" type="hidden">
		<input id="a_15" type="hidden">
		<input id="a_16" type="hidden">
		<input id="a_17" type="hidden">
		<input id="a_18" type="hidden">
		<input id="a_19" type="hidden">
		<input id="a_20" type="hidden">
		<input id="a_21" type="hidden">
		<input id="a_22" type="hidden">
		<input id="a_23" type="hidden">
		<input id="a_24" type="hidden">
		<input id="a_25" type="hidden">
		<input id="a_26" type="hidden">
		<input id="a_27" type="hidden">
		<input id="a_28" type="hidden">
		<input id="a_29" type="hidden">
		<input id="a_30" type="hidden">
		<input id="a_31" type="hidden">
		<input id="a_32" type="hidden">
		<input id="a_33" type="hidden">
		<input id="a_34" type="hidden">
		<input id="a_35" type="hidden">
		<input id="a_36" type="hidden">
		<input id="a_37" type="hidden">
		
		<input id="b_1" type="hidden">
		<input id="b_2" type="hidden">
		<input id="b_3" type="hidden">
		<input id="b_4" type="hidden">
		<input id="b_5" type="hidden">
		<input id="b_6" type="hidden">
		<input id="b_7" type="hidden">
		<input id="b_8" type="hidden">
		<input id="b_9" type="hidden">
		<input id="b_10" type="hidden">
		<input id="b_11" type="hidden">
		<input id="b_12" type="hidden">
		<input id="b_13" type="hidden">
		<input id="b_14" type="hidden">
		<input id="b_15" type="hidden">
		<input id="b_16" type="hidden">
		<input id="b_17" type="hidden">
		<input id="b_18" type="hidden">
		<input id="b_19" type="hidden">
		<input id="b_20" type="hidden">
		<input id="b_21" type="hidden">
		<input id="b_22" type="hidden">
		<input id="b_23" type="hidden">
		<input id="b_24" type="hidden">
		<input id="b_25" type="hidden">
		<input id="b_26" type="hidden">
		<input id="b_27" type="hidden">
		<input id="b_28" type="hidden">
		<input id="b_29" type="hidden">
		<input id="b_30" type="hidden">
		<input id="b_31" type="hidden">
		<input id="b_32" type="hidden">
		<input id="b_33" type="hidden">
		<input id="b_34" type="hidden">
		<input id="b_35" type="hidden">
		<input id="b_36" type="hidden">
		<input id="b_37" type="hidden">
		
		<input id="c_1" type="hidden">
		<input id="c_2" type="hidden">
		<input id="c_3" type="hidden">
		<input id="c_4" type="hidden">
		<input id="c_5" type="hidden">
		<input id="c_6" type="hidden">
		<input id="c_7" type="hidden">
		<input id="c_8" type="hidden">
		<input id="c_9" type="hidden">
		<input id="c_10" type="hidden">
		<input id="c_11" type="hidden">
		<input id="c_12" type="hidden">
		<input id="c_13" type="hidden">
		<input id="c_14" type="hidden">
		<input id="c_15" type="hidden">
		<input id="c_16" type="hidden">
		<input id="c_17" type="hidden">
		<input id="c_18" type="hidden">
		<input id="c_19" type="hidden">
		<input id="c_20" type="hidden">
		<input id="c_21" type="hidden">
		<input id="c_22" type="hidden">
		<input id="c_23" type="hidden">
		<input id="c_24" type="hidden">
		<input id="c_25" type="hidden">
		<input id="c_26" type="hidden">
		<input id="c_27" type="hidden">
		<input id="c_28" type="hidden">
		<input id="c_29" type="hidden">
		<input id="c_30" type="hidden">
		<input id="c_31" type="hidden">
		<input id="c_32" type="hidden">
		<input id="c_33" type="hidden">
		<input id="c_34" type="hidden">
		<input id="c_35" type="hidden">
		<input id="c_36" type="hidden">
		<input id="c_37" type="hidden">
		
		<input id="d_1" type="hidden">
		<input id="d_2" type="hidden">
		<input id="d_3" type="hidden">
		<input id="d_4" type="hidden">
		<input id="d_5" type="hidden">
		<input id="d_6" type="hidden">
		<input id="d_7" type="hidden">
		<input id="d_8" type="hidden">
		<input id="d_9" type="hidden">
		<input id="d_10" type="hidden">
		<input id="d_11" type="hidden">
		<input id="d_12" type="hidden">
		<input id="d_13" type="hidden">
		<input id="d_14" type="hidden">
		<input id="d_15" type="hidden">
		<input id="d_16" type="hidden">
		<input id="d_17" type="hidden">
		<input id="d_18" type="hidden">
		<input id="d_19" type="hidden">
		<input id="d_20" type="hidden">
		<input id="d_21" type="hidden">
		<input id="d_22" type="hidden">
		<input id="d_23" type="hidden">
		<input id="d_24" type="hidden">
		<input id="d_25" type="hidden">
		<input id="d_26" type="hidden">
		<input id="d_27" type="hidden">
		<input id="d_28" type="hidden">
		<input id="d_29" type="hidden">
		<input id="d_30" type="hidden">
		<input id="d_31" type="hidden">
		<input id="d_32" type="hidden">
		<input id="d_33" type="hidden">
		<input id="d_34" type="hidden">
		<input id="d_35" type="hidden">
		<input id="d_36" type="hidden">
		<input id="d_37" type="hidden">
		
		<input id="e_1" type="hidden">
		<input id="e_2" type="hidden">
		<input id="e_3" type="hidden">
		<input id="e_4" type="hidden">
		<input id="e_5" type="hidden">
		<input id="e_6" type="hidden">
		<input id="e_7" type="hidden">
		<input id="e_8" type="hidden">
		<input id="e_9" type="hidden">
		<input id="e_10" type="hidden">
		<input id="e_11" type="hidden">
		<input id="e_12" type="hidden">
		<input id="e_13" type="hidden">
		<input id="e_14" type="hidden">
		<input id="e_15" type="hidden">
		<input id="e_16" type="hidden">
		<input id="e_17" type="hidden">
		<input id="e_18" type="hidden">
		<input id="e_19" type="hidden">
		<input id="e_20" type="hidden">
		<input id="e_21" type="hidden">
		<input id="e_22" type="hidden">
		<input id="e_23" type="hidden">
		<input id="e_24" type="hidden">
		<input id="e_25" type="hidden">
		<input id="e_26" type="hidden">
		<input id="e_27" type="hidden">
		<input id="e_28" type="hidden">
		<input id="e_29" type="hidden">
		<input id="e_30" type="hidden">
		<input id="e_31" type="hidden">
		<input id="e_32" type="hidden">
		<input id="e_33" type="hidden">
		<input id="e_34" type="hidden">
		<input id="e_35" type="hidden">
		<input id="e_36" type="hidden">
		<input id="e_37" type="hidden">
		
		<input id="f_1" type="hidden">
		<input id="f_2" type="hidden">
		<input id="f_3" type="hidden">
		<input id="f_4" type="hidden">
		<input id="f_5" type="hidden">
		<input id="f_6" type="hidden">
		<input id="f_7" type="hidden">
		<input id="f_8" type="hidden">
		<input id="f_9" type="hidden">
		<input id="f_10" type="hidden">
		<input id="f_11" type="hidden">
		<input id="f_12" type="hidden">
		<input id="f_13" type="hidden">
		<input id="f_14" type="hidden">
		<input id="f_15" type="hidden">
		<input id="f_16" type="hidden">
		<input id="f_17" type="hidden">
		<input id="f_18" type="hidden">
		<input id="f_19" type="hidden">
		<input id="f_20" type="hidden">
		<input id="f_21" type="hidden">
		<input id="f_22" type="hidden">
		<input id="f_23" type="hidden">
		<input id="f_24" type="hidden">
		<input id="f_25" type="hidden">
		<input id="f_26" type="hidden">
		<input id="f_27" type="hidden">
		<input id="f_28" type="hidden">
		<input id="f_29" type="hidden">
		<input id="f_30" type="hidden">
		<input id="f_31" type="hidden">
		<input id="f_32" type="hidden">
		<input id="f_33" type="hidden">
		<input id="f_34" type="hidden">
		<input id="f_35" type="hidden">
		<input id="f_36" type="hidden">
		<input id="f_37" type="hidden">
	
		
		
			
			
	</div>
	<br><br>
	<jsp:include page="../footer.jsp" />
	
	<script type="text/javascript">
	function listdata() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".rawid").val();  //หลังclass form control
		//alert(selectedValue);
	 	if(selectedValue != 0){
	 		$.ajax({
				  url: "listData1",
				  data : {id:selectedValue}
				}).done(function(element) {
					var json = JSON.parse(element);
					
					
					$( "#price01" ).val(json.price);
				});
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
				
				$( "#a_1" ).val(json.dm);
				$( "#a_2" ).val( json.tdn);
				$( "#a_3" ).val( json.protein);
				$( "#a_4" ).val( json.nfc);
				$( "#a_5" ).val( json.uip);
				$( "#a_6" ).val( json.dip);
				$( "#a_7" ).val( json.ca);
				$( "#a_8" ).val( json.p);
				$( "#a_9" ).val( json.urea);
				$( "#a_10" ).val( json.cl);
				$( "#a_11" ).val( json.k);
				$( "#a_12" ).val( json.s);
				$( "#a_13" ).val( json.mg);
				$( "#a_14" ).val( json.zn);
				$( "#a_15" ).val( json.cu);
				$( "#a_16" ).val( json.mn);
				$( "#a_17" ).val( json.co);
				$( "#a_18" ).val( json.se);
				$( "#a_19" ).val( json.i);
				$( "#a_20" ).val( json.vitA);
				$( "#a_21" ).val( json.vitD);
				$( "#a_22" ).val( json.vitE);
				$( "#a_23" ).val( json.nel);
				$( "#a_24" ).val( json.nem);
				$( "#a_25" ).val( json.neg);
				$( "#a_26" ).val( json.ndf);
				$( "#a_27" ).val( json.ee);
				$( "#a_28" ).val( json.cp);
				$( "#a_29" ).val( json.cf);
				$( "#a_30" ).val( json.ash);
				$( "#a_31" ).val( json.nfe);
				$( "#a_32" ).val( json.adf);
				$( "#a_33" ).val( json.adl);
				$( "#a_34" ).val( json.de);
				$( "#a_35" ).val( json.me);
				$( "#a_36" ).val( json.na);
				$( "#a_37" ).val( json.fe);
				
				
				
				
			 
			});
		}
	}
	function listdata1() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".rawid1").val();  //หลังclass form control
		//alert(selectedValue);
	 	if(selectedValue != 0){
	 		$.ajax({
				  url: "listData1",
				  data : {id:selectedValue}
				}).done(function(element) {
					var json = JSON.parse(element);
					
					
					$( "#price02" ).val(json.price);
				});
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
			
				$( "#b_1" ).val(json.dm);
				$( "#b_2" ).val( json.tdn);
				$( "#b_3" ).val( json.protein);
				$( "#b_4" ).val( json.nfc);
				$( "#b_5" ).val( json.uip);
				$( "#b_6" ).val( json.dip);
				$( "#b_7" ).val( json.ca);
				$( "#b_8" ).val( json.p);
				$( "#b_9" ).val( json.urea);
				$( "#b_10" ).val( json.cl);
				$( "#b_11" ).val( json.k);
				$( "#b_12" ).val( json.s);
				$( "#b_13" ).val( json.mg);
				$( "#b_14" ).val( json.zn);
				$( "#b_15" ).val( json.cu);
				$( "#b_16" ).val( json.mn);
				$( "#b_17" ).val( json.co);
				$( "#b_18" ).val( json.se);
				$( "#b_19" ).val( json.i);
				$( "#b_20" ).val( json.vitA);
				$( "#b_21" ).val( json.vitD);
				$( "#b_22" ).val( json.vitE);
				$( "#b_23" ).val( json.nel);
				$( "#b_24" ).val( json.nem);
				$( "#b_25" ).val( json.neg);
				$( "#b_26" ).val( json.ndf);
				$( "#b_27" ).val( json.ee);
				$( "#b_28" ).val( json.cp);
				$( "#b_29" ).val( json.cf);
				$( "#b_30" ).val( json.ash);
				$( "#b_31" ).val( json.nfe);
				$( "#b_32" ).val( json.adf);
				$( "#b_33" ).val( json.adl);
				$( "#b_34" ).val( json.de);
				$( "#b_35" ).val( json.me);
				$( "#b_36" ).val( json.na);
				$( "#b_37" ).val( json.fe);
			
				
				
				
			});
		} 
	}
	function listdata2() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".rawid2").val();  //หลังclass form control
		//alert(selectedValue);
	 	if(selectedValue != 0){
	 		$.ajax({
				  url: "listData1",
				  data : {id:selectedValue}
				}).done(function(element) {
					var json = JSON.parse(element);
					
					
					$( "#price03" ).val(json.price);
				});
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
			
				$( "#c_1" ).val(json.dm);
				$( "#c_2" ).val( json.tdn);
				$( "#c_3" ).val( json.protein);
				$( "#c_4" ).val( json.nfc);
				$( "#c_5" ).val( json.uip);
				$( "#c_6" ).val( json.dip);
				$( "#c_7" ).val( json.ca);
				$( "#c_8" ).val( json.p);
				$( "#c_9" ).val( json.urea);
				$( "#c_10" ).val( json.cl);
				$( "#c_11" ).val( json.k);
				$( "#c_12" ).val( json.s);
				$( "#c_13" ).val( json.mg);
				$( "#c_14" ).val( json.zn);
				$( "#c_15" ).val( json.cu);
				$( "#c_16" ).val( json.mn);
				$( "#c_17" ).val( json.co);
				$( "#c_18" ).val( json.se);
				$( "#c_19" ).val( json.i);
				$( "#c_20" ).val( json.vitA);
				$( "#c_21" ).val( json.vitD);
				$( "#c_22" ).val( json.vitE);
				$( "#c_23" ).val( json.nel);
				$( "#c_24" ).val( json.nem);
				$( "#c_25" ).val( json.neg);
				$( "#c_26" ).val( json.ndf);
				$( "#c_27" ).val( json.ee);
				$( "#c_28" ).val( json.cp);
				$( "#c_29" ).val( json.cf);
				$( "#c_30" ).val( json.ash);
				$( "#c_31" ).val( json.nfe);
				$( "#c_32" ).val( json.adf);
				$( "#c_33" ).val( json.adl);
				$( "#c_34" ).val( json.de);
				$( "#c_35" ).val( json.me);
				$( "#c_36" ).val( json.na);
				$( "#c_37" ).val( json.fe);
			});
		} 
	}
	function listdata3() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".rawid3").val();  //หลังclass form control
		//alert(selectedValue);
	 	if(selectedValue != 0){
	 		$.ajax({
				  url: "listData1",
				  data : {id:selectedValue}
				}).done(function(element) {
					var json = JSON.parse(element);
					
					
					$( "#price04" ).val(json.price);
				});
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
			
				$( "#d_1" ).val(json.dm);
				$( "#d_2" ).val( json.tdn);
				$( "#d_3" ).val( json.protein);
				$( "#d_4" ).val( json.nfc);
				$( "#d_5" ).val( json.uip);
				$( "#d_6" ).val( json.dip);
				$( "#d_7" ).val( json.ca);
				$( "#d_8" ).val( json.p);
				$( "#d_9" ).val( json.urea);
				$( "#d_10" ).val( json.cl);
				$( "#d_11" ).val( json.k);
				$( "#d_12" ).val( json.s);
				$( "#d_13" ).val( json.mg);
				$( "#d_14" ).val( json.zn);
				$( "#d_15" ).val( json.cu);
				$( "#d_16" ).val( json.mn);
				$( "#d_17" ).val( json.co);
				$( "#d_18" ).val( json.se);
				$( "#d_19" ).val( json.i);
				$( "#d_20" ).val( json.vitA);
				$( "#d_21" ).val( json.vitD);
				$( "#d_22" ).val( json.vitE);
				$( "#d_23" ).val( json.nel);
				$( "#d_24" ).val( json.nem);
				$( "#d_25" ).val( json.neg);
				$( "#d_26" ).val( json.ndf);
				$( "#d_27" ).val( json.ee);
				$( "#d_28" ).val( json.cp);
				$( "#d_29" ).val( json.cf);
				$( "#d_30" ).val( json.ash);
				$( "#d_31" ).val( json.nfe);
				$( "#d_32" ).val( json.adf);
				$( "#d_33" ).val( json.adl);
				$( "#d_34" ).val( json.de);
				$( "#d_35" ).val( json.me);
				$( "#d_36" ).val( json.na);
				$( "#d_37" ).val( json.fe);
			});
		} 
	}
	function listdata4() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".rawid4").val();  //หลังclass form control
		//alert(selectedValue);
	 	if(selectedValue != 0){
	 		$.ajax({
				  url: "listData1",
				  data : {id:selectedValue}
				}).done(function(element) {
					var json = JSON.parse(element);
					
					
					$( "#price05" ).val(json.price);
				});
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
			
				$( "#e_1" ).val(json.dm);
				$( "#e_2" ).val( json.tdn);
				$( "#e_3" ).val( json.protein);
				$( "#e_4" ).val( json.nfc);
				$( "#e_5" ).val( json.uip);
				$( "#e_6" ).val( json.dip);
				$( "#e_7" ).val( json.ca);
				$( "#e_8" ).val( json.p);
				$( "#e_9" ).val( json.urea);
				$( "#e_10" ).val( json.cl);
				$( "#e_11" ).val( json.k);
				$( "#e_12" ).val( json.s);
				$( "#e_13" ).val( json.mg);
				$( "#e_14" ).val( json.zn);
				$( "#e_15" ).val( json.cu);
				$( "#e_16" ).val( json.mn);
				$( "#e_17" ).val( json.co);
				$( "#e_18" ).val( json.se);
				$( "#e_19" ).val( json.i);
				$( "#e_20" ).val( json.vitA);
				$( "#e_21" ).val( json.vitD);
				$( "#e_22" ).val( json.vitE);
				$( "#e_23" ).val( json.nel);
				$( "#e_24" ).val( json.nem);
				$( "#e_25" ).val( json.neg);
				$( "#e_26" ).val( json.ndf);
				$( "#e_27" ).val( json.ee);
				$( "#e_28" ).val( json.cp);
				$( "#e_29" ).val( json.cf);
				$( "#e_30" ).val( json.ash);
				$( "#e_31" ).val( json.nfe);
				$( "#e_32" ).val( json.adf);
				$( "#e_33" ).val( json.adl);
				$( "#e_34" ).val( json.de);
				$( "#e_35" ).val( json.me);
				$( "#e_36" ).val( json.na);
				$( "#e_37" ).val( json.fe);
			});
		} 
	}
	function listdata5() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".rawid5").val();  //หลังclass form control
		//alert(selectedValue);
	 	if(selectedValue != 0){
	 		$.ajax({
				  url: "listData1",
				  data : {id:selectedValue}
				}).done(function(element) {
					var json = JSON.parse(element);
					
					
					$( "#price06" ).val(json.price);
				});
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
				$( "#f_1" ).val(json.dm);
				$( "#f_2" ).val( json.tdn);
				$( "#f_3" ).val( json.protein);
				$( "#f_4" ).val( json.nfc);
				$( "#f_5" ).val( json.uip);
				$( "#f_6" ).val( json.dip);
				$( "#f_7" ).val( json.ca);
				$( "#f_8" ).val( json.p);
				$( "#f_9" ).val( json.urea);
				$( "#f_10" ).val( json.cl);
				$( "#f_11" ).val( json.k);
				$( "#f_12" ).val( json.s);
				$( "#f_13" ).val( json.mg);
				$( "#f_14" ).val( json.zn);
				$( "#f_15" ).val( json.cu);
				$( "#f_16" ).val( json.mn);
				$( "#f_17" ).val( json.co);
				$( "#f_18" ).val( json.se);
				$( "#f_19" ).val( json.i);
				$( "#f_20" ).val( json.vitA);
				$( "#f_21" ).val( json.vitD);
				$( "#f_22" ).val( json.vitE);
				$( "#f_23" ).val( json.nel);
				$( "#f_24" ).val( json.nem);
				$( "#f_25" ).val( json.neg);
				$( "#f_26" ).val( json.ndf);
				$( "#f_27" ).val( json.ee);
				$( "#f_28" ).val( json.cp);
				$( "#f_29" ).val( json.cf);
				$( "#f_30" ).val( json.ash);
				$( "#f_31" ).val( json.nfe);
				$( "#f_32" ).val( json.adf);
				$( "#f_33" ).val( json.adl);
				$( "#f_34" ).val( json.de);
				$( "#f_35" ).val( json.me);
				$( "#f_36" ).val( json.na);
				$( "#f_37" ).val( json.fe);
			});
		} 
	}
	
	//calculate
	function calcal(){
		
		
		//ดึงข้อมูล select
		var dm1 = $('#a_1').val();
		if (dm1 == null){
			dm1=0;
		}
		var tdn1 = $('#a_2').val();
		var protein1 = $('#a_3').val();
		var nfc1 = $('#a_4').val();
		var uip1 = $('#a_5').val();
		var dip1 = $('#a_6').val();
		var ca1 = $('#a_7').val();
		var p1 = $('#a_8').val();
		var urea1 = $('#a_9').val();
		var cl1 = $('#a_10').val();
		var k1 = $('#a_11').val();
		var s1 = $('#a_12').val();
		var mg1 = $('#a_13').val();
		var zn1 = $('#a_14').val();
		var cu1 = $('#a_15').val();
		var mn1 = $('#a_16').val();
		var co1 = $('#a_17').val();
		var se1 = $('#a_18').val();
		var i1 = $('#a_19').val();
		var vitA1 = $('#a_20').val();
		var vitD1 = $('#a_21').val();
		var vitE1 = $('#a_22').val();
		var nel1 = $('#a_23').val();
		var nem1 = $('#a_24').val();
		var neg1 = $('#a_25').val();
		var ndf1 = $('#a_26').val();
		var ee1 = $('#a_27').val();
		var cp1 = $('#a_28').val();
		var cf1 = $('#a_29').val();
		var ash1 = $('#a_30').val();
		var nfe1 = $('#a_31').val();
		var adf1 = $('#a_32').val();
		var adl1 = $('#a_33').val();
		var de1 = $('#a_34').val();
		var me1 = $('#a_35').val();
		var na1 = $('#a_36').val();
		var fe1 = $('#a_37').val();
		
		var dm2 = $('#b_1').val();
		var tdn2 = $('#b_2').val();
		var protein2 = $('#b_3').val();
		var nfc2 = $('#b_4').val();
		var uip2 = $('#b_5').val();
		var dip2 = $('#b_6').val();
		var ca2 = $('#b_7').val();
		var p2 = $('#b_8').val();
		var urea2 = $('#b_9').val();
		var cl2 = $('#b_10').val();
		var k2 = $('#b_11').val();
		var s2 = $('#b_12').val();
		var mg2 = $('#b_13').val();
		var zn2 = $('#b_14').val();
		var cu2 = $('#b_15').val();
		var mn2 = $('#b_16').val();
		var co2 = $('#b_17').val();
		var se2 = $('#b_18').val();
		var i2 = $('#b_19').val();
		var vitA2 = $('#b_20').val();
		var vitD2 = $('#b_21').val();
		var vitE2 = $('#b_22').val();
		var nel2 = $('#b_23').val();
		var nem2 = $('#b_24').val();
		var neg2 = $('#b_25').val();
		var ndf2 = $('#b_26').val();
		var ee2 = $('#b_27').val();
		var cp2 = $('#b_28').val();
		var cf2 = $('#b_29').val();
		var ash2 = $('#b_30').val();
		var nfe2 = $('#b_31').val();
		var adf2 = $('#b_32').val();
		var adl2 = $('#b_33').val();
		var de2 = $('#b_34').val();
		var me2 = $('#b_35').val();
		var na2 = $('#b_36').val();
		var fe2 = $('#b_37').val();
		
		var dm3 = $('#c_1').val();
		var tdn3 = $('#c_2').val();
		var protein3 = $('#c_3').val();
		var nfc3 = $('#c_4').val();
		var uip3 = $('#c_5').val();
		var dip3 = $('#c_6').val();
		var ca3 = $('#c_7').val();
		var p3 = $('#c_8').val();
		var urea3 = $('#c_9').val();
		var cl3 = $('#c_10').val();
		var k3 = $('#c_11').val();
		var s3 = $('#c_12').val();
		var mg3 = $('#c_13').val();
		var zn3 = $('#c_14').val();
		var cu3 = $('#c_15').val();
		var mn3 = $('#c_16').val();
		var co3 = $('#c_17').val();
		var se3 = $('#c_18').val();
		var i3 = $('#c_19').val();
		var vitA3 = $('#c_20').val();
		var vitD3 = $('#c_21').val();
		var vitE3 = $('#c_22').val();
		var nel3 = $('#c_23').val();
		var nem3 = $('#c_24').val();
		var neg3 = $('#c_25').val();
		var ndf3 = $('#c_26').val();
		var ee3 = $('#c_27').val();
		var cp3 = $('#c_28').val();
		var cf3 = $('#c_29').val();
		var ash3 = $('#c_30').val();
		var nfe3 = $('#c_31').val();
		var adf3 = $('#c_32').val();
		var adl3 = $('#c_33').val();
		var de3 = $('#c_34').val();
		var me3 = $('#c_35').val();
		var na3 = $('#c_36').val();
		var fe3 = $('#c_37').val();
		
		var dm4 = $('#d_1').val();
		var tdn4 = $('#d_2').val();
		var protein4 = $('#d_3').val();
		var nfc4 = $('#d_4').val();
		var uip4 = $('#d_5').val();
		var dip4 = $('#d_6').val();
		var ca4 = $('#d_7').val();
		var p4 = $('#d_8').val();
		var urea4 = $('#d_9').val();
		var cl4 = $('#d_10').val();
		var k4 = $('#d_11').val();
		var s4 = $('#d_12').val();
		var mg4 = $('#d_13').val();
		var zn4 = $('#d_14').val();
		var cu4 = $('#d_15').val();
		var mn4 = $('#d_16').val();
		var co4 = $('#d_17').val();
		var se4 = $('#d_18').val();
		var i4 = $('#d_19').val();
		var vitA4 = $('#d_20').val();
		var vitD4 = $('#d_21').val();
		var vitE4 = $('#d_22').val();
		var nel4 = $('#d_23').val();
		var nem4 = $('#d_24').val();
		var neg4 = $('#d_25').val();
		var ndf4 = $('#d_26').val();
		var ee4 = $('#d_27').val();
		var cp4 = $('#d_28').val();
		var cf4 = $('#d_29').val();
		var ash4 = $('#d_30').val();
		var nfe4 = $('#d_31').val();
		var adf4 = $('#d_32').val();
		var adl4 = $('#d_33').val();
		var de4 = $('#d_34').val();
		var me4 = $('#d_35').val();
		var na4 = $('#d_36').val();
		var fe4 = $('#d_37').val();
		
		var dm5 = $('#e_1').val();
		var tdn5 = $('#e_2').val();
		var protein5 = $('#e_3').val();
		var nfc5 = $('#e_4').val();
		var uip5 = $('#e_5').val();
		var dip5 = $('#e_6').val();
		var ca5 = $('#e_7').val();
		var p5 = $('#e_8').val();
		var urea5 = $('#e_9').val();
		var cl5 = $('#e_10').val();
		var k5 = $('#e_11').val();
		var s5 = $('#e_12').val();
		var mg5 = $('#e_13').val();
		var zn5 = $('#e_14').val();
		var cu5 = $('#e_15').val();
		var mn5 = $('#e_16').val();
		var co5 = $('#e_17').val();
		var se5 = $('#e_18').val();
		var i5 = $('#e_19').val();
		var vitA5 = $('#e_20').val();
		var vitD5 = $('#e_21').val();
		var vitE5 = $('#e_22').val();
		var nel5 = $('#e_23').val();
		var nem5 = $('#e_24').val();
		var neg5 = $('#e_25').val();
		var ndf5 = $('#e_26').val();
		var ee5 = $('#e_27').val();
		var cp5 = $('#e_28').val();
		var cf5 = $('#e_29').val();
		var ash5 = $('#e_30').val();
		var nfe5 = $('#e_31').val();
		var adf5 = $('#e_32').val();
		var adl5 = $('#e_33').val();
		var de5 = $('#e_34').val();
		var me5 = $('#e_35').val();
		var na5 = $('#e_36').val();
		var fe5 = $('#e_37').val();
		
		var dm6 = $('#f_1').val();
		var tdn6 = $('#f_2').val();
		var protein6 = $('#f_3').val();
		var nfc6 = $('#f_4').val();
		var uip6 = $('#f_5').val();
		var dip6 = $('#f_6').val();
		var ca6 = $('#f_7').val();
		var p6 = $('#f_8').val();
		var urea6 = $('#f_9').val();
		var cl6 = $('#f_10').val();
		var k6 = $('#f_11').val();
		var s6 = $('#f_12').val();
		var mg6 = $('#f_13').val();
		var zn6 = $('#f_14').val();
		var cu6 = $('#f_15').val();
		var mn6 = $('#f_16').val();
		var co6 = $('#f_17').val();
		var se6 = $('#f_18').val();
		var i6 = $('#f_19').val();
		var vitA6 = $('#f_20').val();
		var vitD6 = $('#f_21').val();
		var vitE6 = $('#f_22').val();
		var nel6 = $('#f_23').val();
		var nem6 = $('#f_24').val();
		var neg6 = $('#f_25').val();
		var ndf6 = $('#f_26').val();
		var ee6 = $('#f_27').val();
		var cp6 = $('#f_28').val();
		var cf6 = $('#f_29').val();
		var ash6 = $('#f_30').val();
		var nfe6 = $('#f_31').val();
		var adf6 = $('#f_32').val();
		var adl6 = $('#f_33').val();
		var de6 = $('#f_34').val();
		var me6 = $('#f_35').val();
		var na6 = $('#f_36').val();
		var fe6 = $('#f_37').val();
		
		var vita = $('#c999').val();
		var weight = $('#d999').val();
		if (vita == ""){
			vita=0;
		}
		//input
		var in1 = $('#in1').val();
		var in2 = $('#in2').val();
		var in3 = $('#in3').val();
		var in4 = $('#in4').val();
		var in5 = $('#in5').val();
		var in6 = $('#in6').val();
		var raw1 = $("#raw1").val(); 
		var raw2 = $("#raw2").val(); 
		var raw3 = $("#raw3").val(); 
		var raw4 = $("#raw4").val(); 
		var raw5 = $("#raw5").val(); 
		var raw6 = $("#raw6").val(); 
		//check input
		var MsgError=""; 
			if ((raw1 == 100000)&&(raw2 == 100001)&&(raw3 == 100002)&&(raw4 == 100003)&&(raw5 == 100004)&&(raw6 == 100005)){
				swal("ผิดพลาด", "กรุณาเลือกวัตถุดิบ", "error");
				MsgError+="555";
			}
			if (raw1 != 100000){
				if((raw1 == raw2)||(raw1 == raw3)||(raw1 == raw4)||(raw1 == raw5)||(raw1 == raw6)||(raw2 == raw3)||(raw2 == raw4)||(raw2 == raw5)||(raw2 == raw6)||(raw3 == raw4)||(raw3 == raw5)||(raw3 == raw6)||(raw4 == raw5)||(raw4 == raw6)||(raw5 == raw6)){
					swal("ผิดพลาด", "กรุณาตรวจสอบวัตถุดิบ", "error");
					MsgError+="555";
				  }
				 if(in1==""){
					swal("ผิดพลาด", "กรุณากรอกจำนวน", "error");
					MsgError+="555";
				}
				 if(in1!=""){
					 
				 }
				
			}
			if (raw2 != 100001){
				if((raw1 == raw2)||(raw1 == raw3)||(raw1 == raw4)||(raw1 == raw5)||(raw1 == raw6)||(raw2 == raw3)||(raw2 == raw4)||(raw2 == raw5)||(raw2 == raw6)||(raw3 == raw4)||(raw3 == raw5)||(raw3 == raw6)||(raw4 == raw5)||(raw4 == raw6)||(raw5 == raw6)){
					swal("ผิดพลาด", "กรุณาตรวจสอบวัตถุดิบ", "error");
					MsgError+="555";
				  }
				if(in2==""){
					swal("ผิดพลาด", "กรุณากรอกจำนวน", "error");
					MsgError+="555";
				}
			}	
			if (raw3 != 100002){
				if((raw1 == raw2)||(raw1 == raw3)||(raw1 == raw4)||(raw1 == raw5)||(raw1 == raw6)||(raw2 == raw3)||(raw2 == raw4)||(raw2 == raw5)||(raw2 == raw6)||(raw3 == raw4)||(raw3 == raw5)||(raw3 == raw6)||(raw4 == raw5)||(raw4 == raw6)||(raw5 == raw6)){
					swal("ผิดพลาด", "กรุณาตรวจสอบวัตถุดิบ", "error");
					MsgError+="555";
				  }	
				if(in3==""){
					swal("ผิดพลาด", "กรุณากรอกจำนวน", "error");
					MsgError+="555";
				}
			}
			if (raw4 != 100003){
				if((raw1 == raw2)||(raw1 == raw3)||(raw1 == raw4)||(raw1 == raw5)||(raw1 == raw6)||(raw2 == raw3)||(raw2 == raw4)||(raw2 == raw5)||(raw2 == raw6)||(raw3 == raw4)||(raw3 == raw5)||(raw3 == raw6)||(raw4 == raw5)||(raw4 == raw6)||(raw5 == raw6)){
					swal("ผิดพลาด", "กรุณาตรวจสอบวัตถุดิบ", "error");
					MsgError+="555";
				  }	
				if(in4==""){
					swal("ผิดพลาด", "กรุณากรอกจำนวน", "error");
					MsgError+="555";
				}
			}
			if (raw5 != 100004){
				if((raw1 == raw2)||(raw1 == raw3)||(raw1 == raw4)||(raw1 == raw5)||(raw1 == raw6)||(raw2 == raw3)||(raw2 == raw4)||(raw2 == raw5)||(raw2 == raw6)||(raw3 == raw4)||(raw3 == raw5)||(raw3 == raw6)||(raw4 == raw5)||(raw4 == raw6)||(raw5 == raw6)){
					swal("ผิดพลาด", "กรุณาตรวจสอบวัตถุดิบ", "error");
					MsgError+="555";
				  }	
				if(in5==""){
					swal("ผิดพลาด", "กรุณากรอกจำนวน", "error");
					MsgError+="555";
				}
			}
			if (raw6 != 100005){
				if((raw1 == raw2)||(raw1 == raw3)||(raw1 == raw4)||(raw1 == raw5)||(raw1 == raw6)||(raw2 == raw3)||(raw2 == raw4)||(raw2 == raw5)||(raw2 == raw6)||(raw3 == raw4)||(raw3 == raw5)||(raw3 == raw6)||(raw4 == raw5)||(raw4 == raw6)||(raw5 == raw6)){
					swal("ผิดพลาด", "กรุณาตรวจสอบวัตถุดิบ", "error");
					MsgError+="555";
				  }	
				if(in6==""){
					swal("ผิดพลาด", "กรุณากรอกจำนวน", "error");
					MsgError+="555";
				}
			}

			if(MsgError!=""){
				

			}
			else{
			swal("สำเร็จ", "คำนวณสำเร็จ", "success");
		//สูตร cp
		var a1 = (cp1*dm1)/100;
		var a2 = (cp2*dm2)/100;
		var a3 = (cp3*dm3)/100;
		var a4 = (cp4*dm4)/100;
		var a5 = (cp5*dm5)/100;
		var a6 = (protein6*dm6)/100;
		
		var a_1 = (a1*in1)/100;
		var a_2 = (a2*in2)/100;
		var a_3 = (a3*in3)/100;
		var a_4 = (a4*in4)/100;
		var a_5 = (a5*in5)/100;
		var a_6 = (a6*in6)/100;
		
		var sum1 = a_1+a_2+a_3+a_4+a_5+a_6;
		var sumcp = sum1.toFixed(2);
		
		//show cp
		$('.sh1').html(sumcp); 
		
		//เทียบมาตรฐาน โปรตีน
		var cp666 = $('#cp555').val();

		var cp01 = (sumcp/cp666)*100;
		var percp = cp01.toFixed(2);
		
		if (percp >= 100 ){
			$('.sh20').html(percp).css('color','green');
			
		}
		else if (percp < 100) {
			$('.sh20').html(percp).css('color','red');
		}
		
		//สูตร  tdn
		var b1 = (tdn1*dm1)/100;
		var b2 = (tdn2*dm2)/100;
		var b3 = (tdn3*dm3)/100;
		var b4 = (tdn4*dm4)/100;
		var b5 = (tdn5*dm5)/100;
		var b6 = (tdn6*dm6)/100;
		
		var b_1 = (b1*in1)/100;
		var b_2 = (b2*in2)/100;
		var b_3 = (b3*in3)/100;
		var b_4 = (b4*in4)/100;
		var b_5 = (b5*in5)/100;
		var b_6 = (b6*in6)/100;
		
		var sum2 = b_1+b_2+b_3+b_4+b_5+b_6;
		var sumtdn = sum2.toFixed(2);
		//show tdn
		$('.sh2').html(sumtdn); 
		
		//เทียบมาตรฐาน TDN
		var tdn666 = $('#tdn555').val();

		var tdn01 = (sumtdn/tdn666)*100;
		var pertdn = tdn01.toFixed(2);
		
		if (pertdn >= 100 ){
			$('.sh21').html(pertdn).css('color','green');
			
		}
		else if (pertdn < 100) {
			$('.sh21').html(pertdn).css('color','red');
		}
		
		//สูตร adf
		var d1 = (adf1*dm1)/100;
		var d2 = (adf2*dm2)/100;
		var d3 = (adf3*dm3)/100;
		var d4 = (adf4*dm4)/100;
		var d5 = (adf5*dm5)/100;
		var d6 = (adf6*dm6)/100;
		
		var d_1 = (d1*in1)/100;
		var d_2 = (d2*in2)/100;
		var d_3 = (d3*in3)/100;
		var d_4 = (d4*in4)/100;
		var d_5 = (d5*in5)/100;
		var d_6 = (d6*in6)/100;
		
		var sum3 = d_1+d_2+d_3+d_4+d_5+d_6;
		var sumadf = sum3.toFixed(2);
		//show adf
		$('.sh3').html(sumadf); 
		
		//เทียบมาตรฐาน adf
		var adf666 = $('#adf555').val();

		var adf01 = (sumadf/adf666)*100;
		var peradf = adf01.toFixed(2);
		
		if (peradf >= 100 ){
			$('.sh22').html(peradf).css('color','green');
			
		}
		else if (peradf < 100) {
			$('.sh22').html(peradf).css('color','red');
		}
		
		//สูตร nfc
		var f1 = (nfc1*dm1)/100;
		var f2 = (nfc2*dm2)/100;
		var f3 = (nfc3*dm3)/100;
		var f4 = (nfc4*dm4)/100;
		var f5 = (nfc5*dm5)/100;
		var f6 = (nfc6*dm6)/100;
		
		var f_1 = (f1*in1)/100;
		var f_2 = (f2*in2)/100;
		var f_3 = (f3*in3)/100;
		var f_4 = (f4*in4)/100;
		var f_5 = (f5*in5)/100;
		var f_6 = (f6*in6)/100;
		
		var sum4 = f_1+f_2+f_3+f_4+f_5+f_6;
		var sumnfc = sum4.toFixed(2);
		//show nfc
		$('.sh4').html(sumnfc); 
		
		//เทียบมาตรฐาน  nfc
		var nfc666 = $('#nfc555').val();

		var nfc01 = (sumnfc/nfc666)*100;
		var pernfc = nfc01.toFixed(2);
		
		if (pernfc >= 100 ){
			$('.sh23').html(pernfc).css('color','green');
			
		}
		else if (pernfc < 100) {
			$('.sh23').html(pernfc).css('color','red');
		}
		
		//สูตร dm
		var g1 = dm1;
		var g2 = dm2;
		var g3 = dm3;
		var g4 = dm4;
		var g5 = dm5;
		var g6 = dm6;
		
		var g_1 = (g1*in1)/100;
		var g_2 = (g2*in2)/100;
		var g_3 = (g3*in3)/100;
		var g_4 = (g4*in4)/100;
		var g_5 = (g5*in5)/100;
		var g_6 = (g6*in6)/100;
		
		var sum5 = g_1+g_2+g_3+g_4+g_5+g_6;
		var sumdm = sum5.toFixed(2);
		//show dm
		$('.sh5').html(sumdm);
		
		//เทียบมาตรฐาน  dm
		var dm666 = $('#dm555').val();

		var dm01 = (sumdm/dm666)*100;
		var perdm = dm01.toFixed(2);
		
		if (perdm >= 100 ){
			$('.sh24').html(perdm).css('color','green');
			
		}
		else if (perdm < 100) {
			$('.sh24').html(perdm).css('color','red');
		}
		
		//สูตร me
		var h1 = (me1*dm1)/100;
		var h2 = (me2*dm2)/100;
		var h3 = (me3*dm3)/100;
		var h4 = (me4*dm4)/100;
		var h5 = (me5*dm5)/100;
		var h6 = (me6*dm6)/100;
		
		var h_1 = (h1*in1);
		var h_2 = (h2*in2);
		var h_3 = (h3*in3);
		var h_4 = (h4*in4);
		var h_5 = (h5*in5);
		var h_6 = (h6*in6);
		
		var sum6 = h_1+h_2+h_3+h_4+h_5+h_6;
		var summe = sum6.toFixed(2);
		//show me
		$('.sh6').html(summe); 

		//เทียบมาตรฐาน  me
		var me666 = $('#me555').val();

		var me01 = (summe/me666)*100;
		var perme = me01.toFixed(2);
		
		if (perme >= 100 ){
			$('.sh25').html(perme).css('color','green');
			
		}
		else if (perme < 100) {
			$('.sh25').html(perme).css('color','red');
		}
		
		//สูตร nem
		var i1 = (nem1*dm1)/100;
		var i2 = (nem2*dm2)/100;
		var i3 = (nem3*dm3)/100;
		var i4 = (nem4*dm4)/100;
		var i5 = (nem5*dm5)/100;
		var i6 = (nem6*dm6)/100;
		
		var i_1 = (i1*in1);
		var i_2 = (i2*in2);
		var i_3 = (i3*in3);
		var i_4 = (i4*in4);
		var i_5 = (i5*in5);
		var i_6 = (i6*in6);
		
		var sum7 = i_1+i_2+i_3+i_4+i_5+i_6;
		var sumnem = sum7.toFixed(2);
		//show nem
		$('.sh7').html(sumnem); 
		
		//เทียบมาตรฐาน  nem
		var nem666 = $('#nem555').val();

		var nem01 = (sumnem/nem666)*100;
		var pernem = nem01.toFixed(2);
		
		if (pernem >= 100 ){
			$('.sh26').html(pernem).css('color','green');
			
		}
		else if (pernem < 100) {
			$('.sh26').html(pernem).css('color','red');
		}
		
		//สูตร neg
		var j1 = (neg1*dm1)/100;
		var j2 = (neg2*dm2)/100;
		var j3 = (neg3*dm3)/100;
		var j4 = (neg4*dm4)/100;
		var j5 = (neg5*dm5)/100;
		var j6 = (neg6*dm6)/100;
		
		var j_1 = (j1*in1)/100;
		var j_2 = (j2*in2)/100;
		var j_3 = (j3*in3)/100;
		var j_4 = (j4*in4)/100;
		var j_5 = (j5*in5)/100;
		var j_6 = (j6*in6)/100;
		
		var sum8 = (j_1+j_2+j_3+j_4+j_5+j_6);
		var sumneg = sum8.toFixed(2);
		//show neg
		$('.sh8').html(sumneg);
		
		//เทียบมาตรฐาน  neg
		var neg666 = $('#neg555').val();

		var neg01 = (sumneg/neg666)*100;
		var perneg = neg01.toFixed(2);
		
		if (perneg >= 100 ){
			$('.sh27').html(perneg).css('color','green');
			
		}
		else if (perneg < 100) {
			$('.sh27').html(perneg).css('color','red');
		}
		
		//สูตร ca
		var k1 = (ca1*dm1)/100;
		var k2 = (ca2*dm2)/100;
		var k3 = (ca3*dm3)/100;
		var k4 = (ca4*dm4)/100;
		var k5 = (ca5*dm5)/100;
		var k6 = (ca6*dm6)/100;
		
		var k_1 = (k1*in1)/100;
		var k_2 = (k2*in2)/100;
		var k_3 = (k3*in3)/100;
		var k_4 = (k4*in4)/100;
		var k_5 = (k5*in5)/100;
		var k_6 = (k6*in6)/100;
		
		var sum9 = (k_1+k_2+k_3+k_4+k_5+k_6)*1000;
		var sumca = sum9.toFixed(2);
		//show ca
		$('.sh9').html(sumca); 
		
		//เทียบมาตรฐาน  ca
		var ca666 = $('#ca555').val();

		var ca01 = (sumca/ca666)*100;
		var perca = ca01.toFixed(2);
		
		if (perca >= 100 ){
			$('.sh28').html(perca).css('color','green');
			
		}
		else if (perca < 100) {
			$('.sh28').html(perca).css('color','red');
		}
		
		//สูตร p
		var o1 = (p1*dm1)/100;
		var o2 = (p2*dm2)/100;
		var o3 = (p3*dm3)/100;
		var o4 = (p4*dm4)/100;
		var o5 = (p5*dm5)/100;
		var o6 = (p6*dm6)/100;
		
		var o_1 = (o1*in1)/100;
		var o_2 = (o2*in2)/100;
		var o_3 = (o3*in3)/100;
		var o_4 = (o4*in4)/100;
		var o_5 = (o5*in5)/100;
		var o_6 = (o6*in6)/100;
		
		var sum10 = (o_1+o_2+o_3+o_4+o_5+o_6)*1000;
		var sump = sum10.toFixed(2);
		//show p
		$('.sh10').html(sump); 
		
		//เทียบมาตรฐาน  p
		var p666 = $('#p555').val();

		var p01 = (sump/p666)*100;
		var perp = p01.toFixed(2);
		
		if (perp >= 100 ){
			$('.sh29').html(perp).css('color','green');
			
		}
		else if (perp < 100) {
			$('.sh29').html(perp).css('color','red');
		}
		
		//สูตร dip
		var q1 = (dip1*dm1)/100;
		var q2 = (dip2*dm2)/100;
		var q3 = (dip3*dm3)/100;
		var q4 = (dip4*dm4)/100;
		var q5 = (dip5*dm5)/100;
		var q6 = (dip6*dm6)/100;
		
		var q_1 = (q1*in1)/100;
		var q_2 = (q2*in2)/100;
		var q_3 = (q3*in3)/100;
		var q_4 = (q4*in4)/100;
		var q_5 = (q5*in5)/100;
		var q_6 = (q6*in6)/100;
		
		var sum11 = q_1+q_2+q_3+q_4+q_5+q_6;
		var sumdip = sum11.toFixed(2);
		//show dip
		$('.sh11').html(sumdip); 
		
		//เทียบมาตรฐาน  dip
		var dip666 = $('#dip555').val();

		var dip01 = (sumdip/dip666)*100;
		var perdip = dip01.toFixed(2);
		
		if (perdip >= 100 ){
			$('.sh30').html(perdip).css('color','green');
			
		}
		else if (perdip < 100) {
			$('.sh30').html(perdip).css('color','red');
		}
		
		//สูตร กินได้
		var x3 = (sumdm/weight)*100;
		var eat = x3.toFixed(2);
		//show กินได้
		$('.sh12').html(eat); 
		
		//show  นน แห้ง
		$('.sh13').html(sumdm); 
		
		//สูตรแป้ง
		var z2 = (sumnfc/sumdm)*100;
		var eatdie = z2.toFixed(2);
		//showแป้ง
		$('.sh14').html(eatdie); 
		
		//สูตร dippow
		var z4 = (sumnfc/sumdip)*100;
		var dippow = z4.toFixed(2);
		//show dippow
		$('.sh15').html(dippow); 
		
	
		//show nfn
		var z5 = 0;
		var nfn = z5.toFixed(2);
		$('.sh16').html(nfn); 
		
		//show adf
		var z6 = (sumadf/sumdm)*100;
		var adf = z6.toFixed(2);
		$('.sh17').html(adf); 
		
		
	}
	}
	</script>
	
</body>
</html>