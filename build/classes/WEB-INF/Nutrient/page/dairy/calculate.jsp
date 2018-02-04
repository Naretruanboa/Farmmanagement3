<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>คำนวณอาหารข้นราคาต่ำสุด</title>
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
							<p style="font-size: 28px; font-weight: 700; color: white;">คำนวณอาหารข้นราคาต่ำสุด</p>
						</div>
					</div>
				</div>
			</div>
			
		<div class=" row form-group">	
		<div class="col-md-4">
			<div class="panel panel-primary">
				<h4 style=" color: red;"> ข้อควรระวัง</h4>
				<label>&nbsp&nbsp&nbsp*** วัวเด็กไม่สามารถใช้ยูเรียในการผสมได้</label> <br>
				<label>&nbsp&nbsp&nbsp*** วัวโตห้ามใช้ยูเรียเกิน 2% ของน้ำหนักตัว</label>
		
			</div>
		</div>
		</div>
		
		
		<div class="col-md-7">
				<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 18px; color: white;">
							<i class="fa fa-cart-plus"></i>&nbsp;กำหนดน้ำหนักของวัตถุดิบ
						</h3>
					</div>
					<div class="panel-body">
					<form action="rawmaterialprice" method="POST"  id="rawmaterialprice" >	
								<center>
									<div class="row form-group"> 
											<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">
												<thead >
													
													<tr>
														<th>ชื่อวัตถุดิบ</th>
														<th>น้ำหนักต่ำสุด </th>
														<th>น้ำหนักสูงสุด  </th>
														<th width="120px">ปริมาณที่คำนวณได้</th>
														<th>ราคา(บาท/กก.)</th>
														
													</tr>
													
													<tr>
														<th>
														<select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
														<c:if test="${IDR[0] == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option>
														</c:if>
													<c:if test="${group.typeMaterial.id == 2}">		
													<c:if test="${IDR[0] != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
														</th>
														<th><input id="lb1" size="10" type="text" value="${ll[0] }" placeholder="0"><br></th>
														<th><input id="ub1" size="10" type="text" value="${uu[0] }" placeholder="100"><br></th>
														<th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
														<th><input readonly="true" id="price01" size="10" name="price01" type="text" value="${c[0] }"><br></th> 
														
														
														
													</tr>
													
													<tr>
														<th>
														<select class="form-control rawid1 " name="raw1" id="raw1" onchange="listdata1();">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
														<c:if test="${IDR[1] == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 2}">		
													<c:if test="${IDR[1] != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
														</th>
														<th><input id="lb2" size="10" type="text" value="${ll[1] }" placeholder="0"><br></th>
														<th><input id="ub2" size="10" type="text" value="${uu[1] }" placeholder="100"><br></th>
														<th><input readonly="true" id="sol2" size="10" name="sol2" type="text"value="${d[1] }" ><br></th>
														<th><input readonly="true" id="price02" size="10" name="price02" type="text" value="${c[1] }"><br></th>
														
														
													</tr>
													
													<tr>
														<th>
														<select class="form-control rawid2 " name="raw2" id="raw2" onchange="listdata2();">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
														<c:if test="${IDR[2] == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 2}">		
													<c:if test="${IDR[2] != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
														</th>
														<th><input id="lb3" size="10" type="text" value="${ll[2] }" placeholder="0"><br></th>
														<th><input id="ub3" size="10" type="text" value="${uu[2] }" placeholder="100"><br></th>
														<th><input readonly="true" id="sol3" size="10" name="sol3" type="text"value="${d[2] }" ><br></th>
														<th><input readonly="true" id="price03" size="10" name="price03" type="text"value="${c[2] }" ><br></th>
														
														
													</tr>
													
													<tr>
														<th>
														<select class="form-control rawid3 " name="raw3" id="raw3" onchange="listdata3();">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
														<c:if test="${IDR[3] == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 2}">		
													<c:if test="${IDR[3] != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
														</th>
														<th><input id="lb4" size="10" type="text" value="${ll[3] }" placeholder="0"><br></th>
														<th><input id="ub4" size="10" type="text" value="${uu[3] }" placeholder="100"><br></th>
														<th><input readonly="true" id="sol4" size="10" name="sol4" type="text"value="${d[3] }" ><br></th>
														<th><input readonly="true" id="price04" size="10" name="price04" type="text" value="${c[3] }"><br></th>
														
														
													</tr>
													
													<tr>
														<th>
														<select class="form-control rawid4 " name="raw4" id="raw4" onchange="listdata4();">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
														<c:if test="${IDR[4] == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 2}">		
													<c:if test="${IDR[4] != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
														</th>
														<th><input id="lb5" size="10" type="text" value="${ll[4] }" placeholder="0"><br></th>
														<th><input id="ub5" size="10" type="text" value="${uu[4] }" placeholder="100"><br></th>
														<th><input readonly="true" id="sol5" size="10" name="sol5" type="text"value="${d[4] }" ><br></th>
														<th><input readonly="true" id="price05" size="10" name="price05" type="text"value="${c[4] }"><br></th>
														
														
													</tr>
													
													<tr>
														<th>
														<select class="form-control rawid5 " name="raw5" id="raw5" onchange="listdata5();">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
														<c:if test="${IDR[5] == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
													<c:if test="${group.typeMaterial.id == 2}">		
													<c:if test="${IDR[5] != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
													</c:if>		
											</c:forEach>
										</select>
														</th>
														<th><input id="lb6" size="10" type="text" value="${ll[5] }" placeholder="0"><br></th>
														<th><input id="ub6" size="10" type="text" value="${uu[5] }" placeholder="100"><br></th>
														<th><input readonly="true" id="sol6" size="10" name="sol6" type="text"value="${d[5] }" ><br></th>
														<th><input readonly="true" id="price06" size="10" name="price06" type="text" value="${c[5] }"><br></th>
														
														
													</tr>									

												</thead> 
												
												
											</table>
											<input id="ee1" size="10" name="ee1" type="hidden" >  
											<input id="ee2" size="10" name="ee2" type="hidden" >  
										    <input id="ee3" size="10" name="ee3" type="hidden" >  
										    <input id="ee4" size="10" name="ee4" type="hidden" >  
										    <input id="ee5" size="10" name="ee5" type="hidden" >  
								    		<input id="ee6" size="10" name="ee6" type="hidden" > 
								    		<input id="IDR1" name="IDR1" type="hidden" value="${IDR[0] }">
											<input id="IDR2" name="IDR2" type="hidden" value="${IDR[1] }">
											<input id="IDR3" name="IDR3" type="hidden" value="${IDR[2] }">
											<input id="IDR4" name="IDR4" type="hidden" value="${IDR[3] }">
											<input id="IDR5" name="IDR5" type="hidden" value="${IDR[4] }">
											<input id="IDR6" name="IDR6" type="hidden" value="${IDR[5] }">
											<input id="hh1" name="hh1" size="10" type="hidden" value="${hh[0] }">
											<input id="hh2" name="hh2" size="10" type="hidden" value="${hh[1] }">
											<input id="hh3" name="hh3" size="10" type="hidden" value="${hh[2] }">
											<input id="hh4" name="hh4" size="10" type="hidden" value="${hh[3] }">
											<input id="hh5" name="hh5" size="10" type="hidden" value="${hh[4] }">
											<input id="hh6" name="hh6" size="10" type="hidden" value="${hh[5] }">
											<h5>ปริมาณรวม  : <input  readonly="true"  id="total1" name="total1" size="8" type="text"> กิโลกรัม &nbsp;&nbsp;</h5>
											<h5>ราคาเฉลี่ยรวม  : <input  readonly="true" id="price1" name="price1" size="8" type="text"> บาท/กิโลกรัม</h5>

									</div>
									
								</center>
									
								</form>
								</div>
				
				</div>		
			</div>
				
			<div class="col-md-5">
				<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 18px; color: white;">
							<i class="fa fa-cart-plus"></i>&nbsp;กำหนดคุณทางโภชนะวัตถุดิบ
						</h3>
					</div>
					<div class="panel-body">
					
								<center>
									<div class="row form-group"> 
											<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">
												<thead >
													
													<tr>

														<th>โภชนะ</th>
														<th>คุณค่าที่ต้องการ </th>
														<th>ค่าที่คำนวณได้ </th>
														
													</tr>
													
														<tr height="51.5" style="font-size: 18px">
														<th>วัตถุดิบแห้ง</th>
														<th><input id="h1" name="h1" size="10" type="text" value="${hh[0] }" placeholder="0"><br></th>
														<th><input readonly="true" id="dd1" size="10" name="dd1" type="text" ><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>โปรตีน</th>
														<th><input id="h2" name="h2" size="10" type="text" value="${hh[1] }" placeholder="0"><br></th>
														<th><input readonly="true" id="dd2" size="10" name="dd2" type="text" ><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>พลังงาน TDN</th>
														<th><input id="h3" name="3" size="10" type="text" value="${hh[2] }" placeholder="0"><br></th>
														<th><input readonly="true" id="dd3" size="10" name="dd3" type="text" ><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>เยื่อใย NDF</th>
														<th><input id="h4" name="h4" size="10" type="text" value="${hh[3] }" placeholder="0"><br></th>
														<th><input readonly="true" id="dd4" size="10" name="dd4" type="text" ><br></th>
														
														
													</tr>
													
													
													
													<tr height="51.5" style="font-size: 18px">
														<th>วิตามิน เอ</th>
														<th><input id="h5" name="h5"size="10" type="text" value="${hh[4] }" placeholder="0"><br></th>
														<th><input readonly="true" id="dd5" size="10" name="dd5" type="text" ><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>วิตามิน อี</th>
														<th><input id="h6" name="h6" size="10" type="text" value="${hh[5] }" placeholder="0"><br></th>
														<th><input readonly="true" id="dd6" size="10" name="dd6" type="text" ><br></th>
														
														
													</tr>
													
												</thead> 
												
												
											</table>
											
									</div>
									
								</center>
								
								</div>
				
				</div>		
			</div>
			
		
			<div class="col-md-12" align="center">
								<button class="btn btn-success" id="cen1" onclick="calcal()">ทำการคำนวณหาค่าปริมาณ</button>
								 &nbsp;
								<button class="btn btn-success" id="cen1" onclick="calcal1()">ทำการรวมค่าทางโภชนะ</button>
								<button type="button" class="btn btn-default btn-lg" id="addcalformula" onclick="addcalformula()">บันทึกสูตร</button>
								&nbsp;
							</div>
</div>
		<!-- <form action="rawmaterialprice1" method="POST"  id="rawmaterialprice1"  > -->
		<input id="IDR1" type="hidden" value="${IDR[0] }">
		<input id="IDR2" type="hidden" value="${IDR[1] }">
		<input id="IDR3" type="hidden" value="${IDR[2] }">
		<input id="IDR4" type="hidden" value="${IDR[3] }">
		<input id="IDR5" type="hidden" value="${IDR[4] }">
		<input id="IDR6" type="hidden" value="${IDR[5] }">
		
		<input id="dm1" type="hidden" value="${gg[0] }">
		<input id="protein1" type="hidden" value="${gg[6] }">
		<input id="tdn1" type="hidden" value="${gg[12] }">
		<input id="ndf1" type="hidden" value="${gg[18] }">
		<input id="ca1" type="hidden" value="${gg[24] }">
		<input id="p1" type="hidden" value="${gg[30] }">
		<input id="vitA1" type="hidden" value="${gg[36] }">
		<input id="vitE1" type="hidden" value="${gg[42] }">
		
		<input id="dm2" type="hidden" value="${gg[1] }">
		<input id="protein2" type="hidden" value="${gg[7] }">
		<input id="tdn2" type="hidden" value="${gg[13] }">
		<input id="ndf2" type="hidden" value="${gg[19] }">
		<input id="ca2" type="hidden" value="${gg[25] }">
		<input id="p2" type="hidden" value="${gg[31] }">
		<input id="vitA2" type="hidden" value="${gg[37] }">
		<input id="vitE2" type="hidden" value="${gg[43] }">
		
		<input id="dm3" type="hidden" value="${gg[2] }">  
		<input id="protein3" type="hidden" value="${gg[8] }"> 
		<input id="tdn3" type="hidden" value="${gg[14] }"> 
		<input id="ndf3" type="hidden" value="${gg[20] }"> 
		<input id="ca3" type="hidden" value="${gg[26] }"> 
		<input id="p3" type="hidden" value="${gg[32] }"> 
		<input id="vitA3" type="hidden" value="${gg[38] }"> 
		<input id="vitE3" type="hidden" value="${gg[44] }"> 
		
		<input id="dm4" type="hidden" value="${gg[3] }"> 
		<input id="protein4" type="hidden" value="${gg[9] }"> 
		<input id="tdn4" type="hidden" value="${gg[15] }"> 
		<input id="ndf4" type="hidden" value="${gg[21] }"> 
		<input id="ca4" type="hidden" value="${gg[27] }"> 
		<input id="p4" type="hidden" value="${gg[33] }"> 
		<input id="vitA4" type="hidden" value="${gg[39] }"> 
		<input id="vitE4" type="hidden" value="${gg[45] }"> 
		
		<input id="dm5" type="hidden" value="${gg[4] }"> 
		<input id="protein5" type="hidden" value="${gg[10] }">
		<input id="tdn5" type="hidden" value="${gg[16] }">
		<input id="ndf5" type="hidden" value="${gg[22] }">
		<input id="ca5" type="hidden" value="${gg[28] }">
		<input id="p5" type="hidden" value="${gg[34] }">
		<input id="vitA5" type="hidden" value="${gg[40] }">
		<input id="vitE5" type="hidden" value="${gg[46] }">
		
		<input id="dm6" type="hidden" value="${gg[5] }">
		<input id="protein6" type="hidden" value="${gg[11] }">
		<input id="tdn6" type="hidden" value="${gg[17] }">
		<input id="ndf6" type="hidden" value="${gg[23] }">
		<input id="ca6" type="hidden" value="${gg[29] }">
		<input id="p6" type="hidden" value="${gg[35] }">
		<input id="vitA6" type="hidden" value="${gg[41] }">
		<input id="vitE6" type="hidden" value="${gg[47] }">
<br><br><br><br>
	
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
				$( "#nameraw1" ).val(json.rawMaterial.id);
			});
		
		$.ajax({
			  url: "listData",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
				
				$( "#IDR1" ).val(json.id);
				$( "#dm1" ).val(json.dm);
				$( "#protein1" ).val(json.protein);
				$( "#tdn1" ).val(json.tdn);
				$( "#ndf1" ).val(json.ndf);
				$( "#ca1" ).val(json.ca);
				$( "#p1" ).val(json.p);
				$( "#vitA1" ).val(json.vitA);
				$( "#vitE1" ).val(json.vitE);
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
				
				$( "#IDR2" ).val(json.id);
				$( "#dm2" ).val(json.dm);
				$( "#protein2" ).val(json.protein);
				$( "#tdn2" ).val(json.tdn);
				$( "#ndf2" ).val(json.ndf);
				$( "#ca2" ).val(json.ca);
				$( "#p2" ).val(json.p);
				$( "#vitA2" ).val(json.vitA);
				$( "#vitE2" ).val(json.vitE);
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
			
			$( "#IDR3" ).val(json.id);
			$( "#dm3" ).val(json.dm);
			$( "#protein3" ).val(json.protein);
			$( "#tdn3" ).val(json.tdn);
			$( "#ndf3" ).val(json.ndf);
			$( "#ca3" ).val(json.ca);
			$( "#p3" ).val(json.p);
			$( "#vitA3" ).val(json.vitA);
			$( "#vitE3" ).val(json.vitE);
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
			
			$( "#IDR4" ).val(json.id);
			$( "#dm4" ).val(json.dm);
			$( "#protein4" ).val(json.protein);
			$( "#tdn4" ).val(json.tdn);
			$( "#ndf4" ).val(json.ndf);
			$( "#ca4" ).val(json.ca);
			$( "#p4" ).val(json.p);
			$( "#vitA4" ).val(json.vitA);
			$( "#vitE4" ).val(json.vitE);
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
			
			$( "#IDR5" ).val(json.id);
			$( "#dm5" ).val(json.dm);
			$( "#protein5" ).val(json.protein);
			$( "#tdn5" ).val(json.tdn);
			$( "#ndf5" ).val(json.ndf);
			$( "#ca5" ).val(json.ca);
			$( "#p5" ).val(json.p);
			$( "#vitA5" ).val(json.vitA);
			$( "#vitE5" ).val(json.vitE);
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
			
			$( "#IDR6" ).val(json.id);
			$( "#dm6" ).val(json.dm);
			$( "#protein6" ).val(json.protein);
			$( "#tdn6" ).val(json.tdn);
			$( "#ndf6" ).val(json.ndf);
			$( "#ca6" ).val(json.ca);
			$( "#p6" ).val(json.p);
			$( "#vitA6" ).val(json.vitA);
			$( "#vitE6" ).val(json.vitE);
		});
	}  
	
}
 
function calcal(){
				 
	
	var price1 = $('#price01').val();
	var price2 = $('#price02').val();
	var price3 = $('#price03').val();
	var price4 = $('#price04').val();
	var price5 = $('#price05').val();
	var price6 = $('#price06').val();
		
	
	var lb1 = $('#lb1').val();
	var lb2 = $('#lb2').val();
	var lb3 = $('#lb3').val();
	var lb4 = $('#lb4').val();
	var lb5 = $('#lb5').val();
	var lb6 = $('#lb6').val();
	
	var ub1 = $('#ub1').val();
	var ub2 = $('#ub2').val();
	var ub3 = $('#ub3').val();
	var ub4 = $('#ub4').val();
	var ub5 = $('#ub5').val();
	var ub6 = $('#ub6').val();
	
	
	var h11 = $('#h1').val();
	var h22 = $('#h2').val();
	var h33 = $('#h3').val();
	var h44 = $('#h4').val();
	var h55 = $('#h5').val();
	var h66 = $('#h6').val();
	var h77 = $('#h7').val();
	var h88 = $('#h8').val();
	
	var h1 = -1*h11;
	var h2 = -1*h22;
	var h3 = -1*h33;
	var h4 = -1*h44;
	var h5 = -1*h55;
	var h6 = -1*h66;
	
	var dm1 = $('#dm1').val(); 
	var protein1 = $('#protein1').val(); 
	var tdn1 = $('#tdn1').val(); 
	var ndf1 = $('#ndf1').val(); 
	var ca1 = $('#ca1').val(); 
	var p1 = $('#p1').val(); 
	var vitA1 = $('#vitA1').val(); 
	var vitE1 = $('#vitE1').val();
	
	var dm2 = $('#dm2').val(); 
	var protein2 = $('#protein2').val(); 
	var tdn2 = $('#tdn2').val(); 
	var ndf2 = $('#ndf2').val(); 
	var ca2 = $('#ca2').val(); 
	var p2 = $('#p2').val(); 
	var vitA2 = $('#vitA2').val(); 
	var vitE2 = $('#vitE2').val();
	
	var dm3 = $('#dm3').val(); 
	var protein3 = $('#protein3').val(); 
	var tdn3 = $('#tdn3').val(); 
	var ndf3 = $('#ndf3').val(); 
	var ca3 = $('#ca3').val(); 
	var p3 = $('#p3').val(); 
	var vitA3 = $('#vitA3').val(); 
	var vitE3 = $('#vitE3').val();
	
	var dm4 = $('#dm4').val(); 
	var protein4 = $('#protein4').val(); 
	var tdn4 = $('#tdn4').val(); 
	var ndf4 = $('#ndf4').val(); 
	var ca4 = $('#ca4').val(); 
	var p4 = $('#p4').val(); 
	var vitA4 = $('#vitA4').val(); 
	var vitE4 = $('#vitE4').val();
	
	var dm5 = $('#dm5').val(); 
	var protein5 = $('#protein5').val(); 
	var tdn5 = $('#tdn5').val(); 
	var ndf5 = $('#ndf5').val(); 
	var ca5 = $('#ca5').val(); 
	var p5 = $('#p5').val(); 
	var vitA5 = $('#vitA5').val(); 
	var vitE5 = $('#vitE5').val();
	
	var dm6 = $('#dm6').val(); 
	var protein6 = $('#protein6').val(); 
	var tdn6 = $('#tdn6').val(); 
	var ndf6 = $('#ndf6').val(); 
	var ca6 = $('#ca6').val(); 
	var p6 = $('#p6').val(); 
	var vitA6 = $('#vitA6').val(); 
	var vitE6 = $('#vitE6').val();
	
	var idr1 = $('#IDR1').val();
	var idr2 = $('#IDR2').val();
	var idr3 = $('#IDR3').val();
	var idr4 = $('#IDR4').val();
	var idr5 = $('#IDR5').val();
	var idr6 = $('#IDR6').val();
	if(idr1==""){
		idr1=0;
	}
	if(idr2==""){
		idr2=0;
	}
	if(idr3==""){
		idr3=0;
	}
	if(idr4==""){
		idr4=0;
	}
	if(idr5==""){
		idr5=0;
	}
	if(idr6==""){
		idr6=0;
	}	
	if(price1==""){
		price1=0;
	}
	if(price2==""){
		price2=0;
	}
	if(price3==""){
		price3=0;
	}
	if(price4==""){
		price4=0;
	}
	if(price5==""){
		price5=0;
	}
	if(price6==""){
		price6=0;
	} 
	
	if(lb1==""){
		lb1=0;
	}
	if(lb2==""){
		lb2=0;
	}
	if(lb3==""){
		lb3=0;
	}
	if(lb4==""){
		lb4=0;
	}
	if(lb5==""){
		lb5=0;
	}
	if(lb6==""){
		lb6=0;
	} 
	
	if(ub1==""){
		ub1=0;
	}
	if(ub2==""){
		ub2=0;
	}
	if(ub3==""){
		ub3=0;
	}
	if(ub4==""){
		ub4=0;
	}
	if(ub5==""){
		ub5=0;
	}
	if(ub6==""){
		ub6=0;
	} 
	
	if(h11==""){
		h11=0;
	}
	if(h22==""){
		h22=0;
	}
	if(h33==""){
		h33=0;
	}
	if(h44==""){
		h44=0;
	}
	if(h55==""){
		h55=0;
	}
	if(h66==""){
		h66=0;
	}
	///////////////////////
	
	if((idr1==0)&&(idr2==0)&&(idr3==0)&&(idr4==0)&&(idr5==0)&&(idr6==0)){
		swal("คำนวณไม่สำเร็จ","กรุณาเลือกวัตถุดิบ", "error");
	}else{
		if (idr1 != 0){
			if((idr1 == idr2)||(idr1 == idr3)||(idr1 == idr4)||(idr1 == idr5)||(idr1 == idr6)){
				swal("ผิดพลาด", "ไม่สามารถเลือกวัตถุดิบซ้ำได้", "error");
				MsgError+="555";
			  }
			 if(ub1==""){
				swal("ผิดพลาด", "กรุณากรอกน้ำหนักสูงสุด", "error");
				MsgError+="555";
			}
		}
		
		if (idr2 != 0){
			if((idr2 == idr1)||(idr2 == idr3)||(idr2 == idr4)||(idr2 == idr5)||(idr2 == idr6)){
				swal("ผิดพลาด", "ไม่สามารถเลือกวัตถุดิบซ้ำได้", "error");
				MsgError+="555";
			  }
			 if(ub2==""){
				swal("ผิดพลาด", "กรุณากรอกน้ำหนักสูงสุด", "error");
				MsgError+="555";
			}
		}
		
		if (idr3 != 0){
			if((idr3 == idr1)||(idr3 == idr2)||(idr3 == idr4)||(idr3 == idr5)||(idr3 == idr6)){
				swal("ผิดพลาด", "ไม่สามารถเลือกวัตถุดิบซ้ำได้", "error");
				MsgError+="555";
			  }
			 if(ub3==""){
				swal("ผิดพลาด", "กรุณากรอกน้ำหนักสูงสุด", "error");
				MsgError+="555";
			}
		}
		
		if (idr4 != 0){
			if((idr4 == idr1)||(idr4 == idr2)||(idr4 == idr3)||(idr4 == idr5)||(idr4 == idr6)){
				swal("ผิดพลาด", "ไม่สามารถเลือกวัตถุดิบซ้ำได้", "error");
				MsgError+="555";
			  }
			 if(ub4==""){
				swal("ผิดพลาด", "กรุณากรอกน้ำหนักสูงสุด", "error");
				MsgError+="555";
			}
		}
		
		if (idr5 != 0){
			if((idr5 == idr1)||(idr5 == idr2)||(idr5 == idr3)||(idr5 == idr4)||(idr5 == idr6)){
				swal("ผิดพลาด", "ไม่สามารถเลือกวัตถุดิบซ้ำได้", "error");
				MsgError+="555";
			  }
			 if(ub5==""){
				swal("ผิดพลาด", "กรุณากรอกน้ำหนักสูงสุด", "error");
				MsgError+="555";
			}
		}
		
		if (idr6 != 0){
			if((idr6 == idr1)||(idr6 == idr2)||(idr6 == idr3)||(idr6 == idr4)||(idr6 == idr5)){
				swal("ผิดพลาด", "ไม่สามารถเลือกวัตถุดิบซ้ำได้", "error");
				MsgError+="555";
			  }
			 if(ub6==""){
				swal("ผิดพลาด", "กรุณากรอกน้ำหนักสูงสุด", "error");
				MsgError+="555";
			}
		}
		
	
	//////////////////
	
	var dm01= -(dm1/100);
	var dm02= -(dm2/100);
	var dm03= -(dm3/100);
	var dm04= -(dm4/100);
	var dm05= -(dm5/100);
	var dm06= -(dm6/100);

	
	var protein01= -((protein1*dm1)/10000);
	var protein02= -((protein2*dm2)/10000);
	var protein03= -((protein3*dm3)/10000);
	var protein04= -((protein4*dm4)/10000);
	var protein05= -((protein5*dm5)/10000);
	var protein06= -((protein6*dm6)/10000);
	
	
	var tdn01= -((tdn1*dm1)/10000);
	var tdn02= -((tdn2*dm2)/10000);
	var tdn03= -((tdn3*dm3)/10000);
	var tdn04= -((tdn4*dm4)/10000);
	var tdn05= -((tdn5*dm5)/10000);
	var tdn06= -((tdn6*dm6)/10000);
	
	var ndf01= -((ndf1*dm1)/10000);
	var ndf02= -((ndf2*dm2)/10000);
	var ndf03= -((ndf3*dm3)/10000);
	var ndf04= -((ndf4*dm4)/10000);
	var ndf05= -((ndf5*dm5)/10000);
	var ndf06= -((ndf6*dm6)/10000);
	
	var vitA01= -((vitA1*dm1)/10);
	var vitA02= -((vitA2*dm2)/10);
	var vitA03= -((vitA3*dm3)/10);
	var vitA04= -((vitA4*dm4)/10);
	var vitA05= -((vitA5*dm5)/10);
	var vitA06= -((vitA6*dm6)/10);
	
	var vitE01= -((vitE1*dm1)/10000);
	var vitE02= -((vitE2*dm2)/10000);
	var vitE03= -((vitE3*dm3)/10000);
	var vitE04= -((vitE4*dm4)/10000);
	var vitE05= -((vitE5*dm5)/10000);
	var vitE06= -((vitE6*dm6)/10000);
	
	
	var g = [dm01,dm02,dm03,dm04,dm05,dm06,
	         protein01,protein02,protein03,protein04,protein05,protein06,
	         tdn01,tdn02,tdn03,tdn04,tdn05,tdn06,
	         ndf01,ndf02,ndf03,ndf04,ndf05,ndf06,
	         vitA01,vitA02,vitA03,vitA04,vitA05,vitA06,
	         vitE01,vitE02,vitE03,vitE04,vitE05,vitE06,
	         -1,-1,-1,-1,-1,-1]; 
	
	$('#cen1').html("<a href='calculatedairywithParam?param="+price1+"&param="+price2+"&param="+price3+"&param="+price4+"&param="+price5+"&param="+price6+"&G="+g+"&dim=6&idR="+idr1+"&idR="+idr2+"&idR="+idr3+"&idR="+idr4+"&idR="+idr5+"&idR="+idr6+"&h="+h1+"&h="+h2+"&h="+h3+"&h="+h4+"&h="+h5+"&h="+h6+"&h=-100.0&lb="+lb1+"&lb="+lb2+"&lb="+lb3+"&lb="+lb4+"&lb="+lb5+"&lb="+lb6+"&ub="+ub1+"&ub="+ub2+"&ub="+ub3+"&ub="+ub4+"&ub="+ub5+"&ub="+ub6+"'>ทำการคำนวณหาค่าปริมาณ</a>");			
	
	}
	
}
	
function calcal1(){
	var price1 = $('#price01').val();
	var price2 = $('#price02').val();
	var price3 = $('#price03').val();
	var price4 = $('#price04').val();
	var price5 = $('#price05').val();
	var price6 = $('#price06').val();
	
	var dm1 = $('#dm1').val(); 
	var protein1 = $('#protein1').val(); 
	var tdn1 = $('#tdn1').val(); 
	var ndf1 = $('#ndf1').val(); 
	var ca1 = $('#ca1').val(); 
	var p1 = $('#p1').val(); 
	var vitA1 = $('#vitA1').val(); 
	var vitE1 = $('#vitE1').val();
	
	var dm2 = $('#dm2').val(); 
	var protein2 = $('#protein2').val(); 
	var tdn2 = $('#tdn2').val(); 
	var ndf2 = $('#ndf2').val(); 
	var ca2 = $('#ca2').val(); 
	var p2 = $('#p2').val(); 
	var vitA2 = $('#vitA2').val(); 
	var vitE2 = $('#vitE2').val();
	
	var dm3 = $('#dm3').val(); 
	var protein3 = $('#protein3').val(); 
	var tdn3 = $('#tdn3').val(); 
	var ndf3 = $('#ndf3').val(); 
	var ca3 = $('#ca3').val(); 
	var p3 = $('#p3').val(); 
	var vitA3 = $('#vitA3').val(); 
	var vitE3 = $('#vitE3').val();
	
	var dm4 = $('#dm4').val(); 
	var protein4 = $('#protein4').val(); 
	var tdn4 = $('#tdn4').val(); 
	var ndf4 = $('#ndf4').val(); 
	var ca4 = $('#ca4').val(); 
	var p4 = $('#p4').val(); 
	var vitA4 = $('#vitA4').val(); 
	var vitE4 = $('#vitE4').val();
	
	var dm5 = $('#dm5').val(); 
	var protein5 = $('#protein5').val(); 
	var tdn5 = $('#tdn5').val(); 
	var ndf5 = $('#ndf5').val(); 
	var ca5 = $('#ca5').val(); 
	var p5 = $('#p5').val(); 
	var vitA5 = $('#vitA5').val(); 
	var vitE5 = $('#vitE5').val();
	
	var dm6 = $('#dm6').val(); 
	var protein6 = $('#protein6').val(); 
	var tdn6 = $('#tdn6').val(); 
	var ndf6 = $('#ndf6').val(); 
	var ca6 = $('#ca6').val(); 
	var p6 = $('#p6').val(); 
	var vitA6 = $('#vitA6').val(); 
	var vitE6 = $('#vitE6').val();
	
	var sol1 = $('#sol1').val(); 
	var sol2 = $('#sol2').val();
	var sol3 = $('#sol3').val();
	var sol4 = $('#sol4').val(); 
	var sol5 = $('#sol5').val();
	var sol6 = $('#sol6').val();
	
	var MsgError0=""; 
	MsgError0+="กรุณาทำการคำนวณหาค่าปริมาณก่อน";
	if(sol1==""){
		
		swal("คำนวณไม่สำเร็จ",MsgError0, "error");
	}else{
		
	
	//calucate
	dm1=dm1*-1;dm2=dm2*-1;dm3=dm3*-1;dm4=dm4*-1;dm5=dm5*-1;dm6=dm6*-1;
	protein1=protein1*-1;protein2=protein2*-1;protein3=protein3*-1;protein4=protein4*-1;protein5=protein5*-1;protein6=protein6*-1;
	tdn1=tdn1*-1; tdn2=tdn2*-1; tdn3=tdn3*-1; tdn4=tdn4*-1; tdn5=tdn5*-1; tdn6=tdn6*-1;
	ndf1=ndf1*-1; ndf2=ndf2*-1; ndf3=ndf3*-1; ndf4=ndf4*-1; ndf5=ndf5*-1; ndf6=ndf6*-1; 
	ca1=ca1*-1; ca2=ca2*-1; ca3=ca3*-1; ca4=ca4*-1; ca5=ca5*-1; ca6=ca6*-1; 
	p1=p1*-1; p2=p2*-1; p3=p3*-1; p4=p4*-1; p5=p5*-1; p6=p6*-1; 
	vitA1=vitA1*-1; vitA2=vitA2*-1; vitA3=vitA3*-1; vitA4=vitA4*-1; vitA5=vitA5*-1; vitA6=vitA6*-1; 
	vitE1=vitE1*-1; vitE2=vitE2*-1; vitE3=vitE3*-1; vitE4=vitE4*-1; vitE5=vitE5*-1; vitE6=vitE6*-1; 

	
	var sum1 = ((sol1*dm1)+(sol2*dm2)+(sol3*dm3)+(sol4*dm4)+(sol5*dm5)+(sol6*dm6));
	var sum2 = ((sol1*protein1)+(sol2*protein2)+(sol3*protein3)+(sol4*protein4)+(sol5*protein5)+(sol6*protein6));
	var sum3 = ((sol1*tdn1)+(sol2*tdn2)+(sol3*tdn3)+(sol4*tdn4)+(sol5*tdn5)+(sol6*tdn6));
	var sum4 = ((sol1*ndf1)+(sol2*ndf2)+(sol3*ndf3)+(sol4*ndf4)+(sol5*ndf5)+(sol6*ndf6));
	var sum5 = ((sol1*ca1)+(sol2*ca2)+(sol3*ca3)+(sol4*ca4)+(sol5*ca5)+(sol6*ca6));
	var sum6 = ((sol1*p1)+(sol2*p2)+(sol3*p3)+(sol4*p4)+(sol5*p5)+(sol6*p6));
	var sum7 = ((sol1*vitA1)+(sol2*vitA2)+(sol3*vitA3)+(sol4*vitA4)+(sol5*vitA5)+(sol6*vitA6));
	var sum8 = ((sol1*vitE1)+(sol2*vitE2)+(sol3*vitE3)+(sol4*vitE4)+(sol5*vitE5)+(sol6*vitE6));
	
	var sumvalue = (sol1*1)+(sol2*1)+(sol3*1)+(sol4*1)+(sol5*1)+(sol6*1);	
	var pc1 = (sol1*price1)/100;
	var pc2 = (sol2*price2)/100;
	var pc3 = (sol3*price3)/100;
	var pc4 = (sol4*price4)/100;
	var pc5 = (sol5*price5)/100;
	var pc6 = (sol6*price6)/100;
	var sumprice = pc1+pc2+pc3+pc4+pc5+pc6;
	var MsgError=""; 
	MsgError+="ปริมาณรวมควรไม่เกิน 100 กิโลกรัม\n หรือคุณค่าทางโภชนะยังไม่พอ กรุณาเลือกวัตถุดิบใหม่ \nหรือลดค่าคุณค่าที่ต้องการ";
	if(sumvalue>=105){
		swal("คำนวณไม่สำเร็จ",MsgError, "error");
	}else
		swal("สำเร็จ", "ทำการรวมสำเร็จ", "success"); 
	var result1 = sum1.toFixed(2);
	var result2 = sum2.toFixed(2);
	var result3 = sum3.toFixed(2);
	var result4 = sum4.toFixed(2);
	var result5 = sum5.toFixed(2);
	var result6 = sum6.toFixed(2);
	/*var result7 = sum7.toFixed(2);
	var result8 = sum8.toFixed(2);
	var result9 = sum9.toFixed(2);
	var result10 = sumvalue.toFixed(2);
	var result11 = sumprice.toFixed(2); */
	$( "#dd1" ).val(result1);
	$( "#dd2" ).val(result2);
	$( "#dd3" ).val(result3);
	$( "#dd4" ).val(result4);
	$( "#dd5" ).val(result5);
	$( "#dd6" ).val(result6);
	$( "#dd7" ).val((sum7));
	$( "#dd8" ).val((sum8));
	$( "#ee1" ).val(result1);
	$( "#ee2" ).val(result2);
	$( "#ee3" ).val(result3);
	$( "#ee4" ).val(result4);
	$( "#ee5" ).val(result5);
	$( "#ee6" ).val(result6);
	$( "#ee7" ).val((sum7));
	$( "#ee8" ).val((sum8));
	$( "#total1" ).val((sumvalue));
	$( "#price1" ).val((sumprice));
	}
	
}
	
$(document).on('click','#addcalformula',function(e){ //id of button
	var sol1 = $('#sol1').val(); 
	var MsgError=""; 
	MsgError+="กรุณาทำการรวมค่าทางโภชนะก่อน";
	if(sol1==""){
		
		swal("คำนวณไม่สำเร็จ",MsgError, "error");
	}else{
		$.ajax({
		url:"savecal", //send to controller
		method:"POST",
		cache : false,
		data:$("#rawmaterialprice").serialize() //idform
	}).fail(function() {
		 swal("สำเร็จ", "บันทึกสำเร็จ", "success");
	}); 
	
	e.preventDefault(); 
	}
});

/* $(document).on('click','#addcalformula',function(e){ //id of button
	$.ajax({
	url:"savecal", //send to controller
	method:"POST",
	cache : false,
	data:$("#rawmaterialprice").serialize() //idform
}).done(function(s){
	swal({  title: "สำเร็จ",   
		text: "บันทึกเรียบร้อยแล้ว!", 
		type: "success",   
		showCancelButton: false,   
		confirmButtonText: "OK!",   
		closeOnConfirm: false }, 
		
		function(){   
			location.reload();
			});
}).fail(function() {
	 swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
}); 

e.preventDefault(); 

}); */
		</script>
	
</body>
</html>