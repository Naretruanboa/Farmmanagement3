<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>คำนวณอาหารข้นราคาต่ำสุดของโคนม</title>
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
											<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr>
														<th>ชื่อวัตถุดิบ</th>
														<th>น้ำหนักต่ำสุด </th>
														<th>น้ำหนักสูงสุด  </th>
														<th width="120px">ปริมาณที่คำนวณได้</th>
														<th>ราคา(บาท/กก.)</th>
														
													</tr>
												
											<!-- 	Request para int id =1
												Rawmaterial raw1 = rawmaterialservice.getRawmaterial(id);
												String nameraw1 = raw1.getName;
												nameraw1= รำละเอียด -->
													
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
														<th><input id="lb1" size="10" name="lb1" type="text" value="${ll[0] }"><br></th>
														<th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
														<%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
														<th>${d[0] } <br></th>
														<th><input id="price01" size="10" type="text" value="${c[0] }"><br></th> 
														<!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
														
														
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
														<th><input id="lb2" size="10" type="text" value="${ll[1] }"><br></th>
														<th><input id="ub2" size="10" type="text" value="${uu[1] }"><br></th>
														<th>${d[1] } <br></th>
														<th><input id="price02" size="10" type="text" value="${c[1] }"><br></th>
														
														
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
														<th><input id="lb3" size="10" type="text" value="${ll[2] }"><br></th>
														<th><input id="ub3" size="10" type="text" value="${uu[2] }"><br></th>
														<th>${d[2] } <br></th>
														<th><input id="price03" size="10" type="text"value="${c[2] }" ><br></th>
														
														
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
														<th><input id="lb4" size="10" type="text" value="${ll[3] }"><br></th>
														<th><input id="ub4" size="10" type="text" value="${uu[3] }"><br></th>
														<th>${d[3] }<br></th>
														<th><input id="price04" size="10" type="text" value="${c[3] }"><br></th>
														
														
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
														<th><input id="lb5" size="10" type="text" value="${ll[4] }"><br></th>
														<th><input id="ub5" size="10" type="text" value="${uu[4] }"><br></th>
														<th>${d[4] }<br></th>
														<th><input id="price05" size="10" type="text"value="${c[4] }"><br></th>
														
														
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
														<th><input id="lb6" size="10" type="text" value="${ll[5] }"><br></th>
														<th><input id="ub6" size="10" type="text" value="${uu[5] }"><br></th>
														<th>${d[5] }<br></th>
														<th><input id="price06" size="10" type="text" value="${c[5] }"><br></th>
														
														
													</tr>									

												</thead> 
												
												
											</table>
											
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
											<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr>

														<th>โภชนะ</th>
														<th>คุณค่าที่ต้องการ </th>
														<th>ค่าที่คำนวณได้ </th>
														
													</tr>
													
														<tr height="51.5" style="font-size: 18px">
														<th>วัตถุดิบแห้ง</th>
														<th><input id="h1" size="10" name="h1" type="text" value="${hh[0] }"><br></th>
														<th><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>โปรตีน</th>
														<th><input id="h2" size="10" type="text" value="${hh[1] }"><br></th>
														<th><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>TDN</th>
														<th><input id="h3" size="10" type="text" value="${hh[2] }"><br></th>
														<th><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>เยื่อใย NDF</th>
														<th><input id="h4" size="10" type="text" value="${hh[3] }"><br></th>
														<th><br></th>
														
														
													</tr>
													
													
													
													<tr height="51.5" style="font-size: 18px">
														<th>วิตามิน เอ</th>
														<th><input id="h5" size="10" type="text" value="${hh[4] }"><br></th>
														<th><br></th>
														
														
													</tr>
													
													<tr height="51.5" style="font-size: 18px">
														<th>วิตามิน อี</th>
														<th><input id="h6" size="10" type="text" value="${hh[5] }"><br></th>
														<th><br></th>
														
														
													</tr>
													
												</thead> 
												
												
											</table>
											
									</div>
									
								</center>
								
								</div>
				
				</div>		
			</div>
			
		
			<div class="col-md-12" align="center">
								<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
								<a href="setlistbeef">กลับ</a>
								 </button>
								 
								<button class="btn btn-success" id="cen1" onclick="calcal()">ทำการคำนวณ</button>
								 &nbsp;
								
								<button type="button" class="btn btn-default btn-lg" id="addcalformula" onclick="addcalformula()">บันทึกสูตร</a>
									</button>
								
							</div>
</div>
		<!-- <form action="rawmaterialprice1" method="POST"  id="rawmaterialprice1"  > -->
		<input id="IDR1" type="hidden">
		<input id="IDR2" type="hidden">
		<input id="IDR3" type="hidden">
		<input id="IDR4" type="hidden">
		<input id="IDR5" type="hidden">
		<input id="IDR6" type="hidden">
		
		<input id="dm1" name="dm1" type="hidden" value="${gg[0] }">
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
function listdata6() { //เอาหน่วยที่ใช้ในคลังอออกมา
	
	var selectedValue = $(".rawid6").val();  //หลังclass form control
	//alert(selectedValue);
 	if(selectedValue != 0){
	$.ajax({
		  url: "listData1",
		  data : {id:selectedValue}
		}).done(function(element) {
			var json = JSON.parse(element);
			
			
			$( "#price07" ).val(json.price);
		});
	}  
	
}
function listdata7() { //เอาหน่วยที่ใช้ในคลังอออกมา
	
	var selectedValue = $(".rawid7").val();  //หลังclass form control
	//alert(selectedValue);
 	if(selectedValue != 0){
	$.ajax({
		  url: "listData1",
		  data : {id:selectedValue}
		}).done(function(element) {
			var json = JSON.parse(element);
			
			
			$( "#price08" ).val(json.price);
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
	
	var h1 = -h11;
	var h2 = -h22;
	var h3 = -h33;
	var h4 = -h44;
	var h5 = -h55;
	var h6 = -h66;
	
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
	/* var g =  [-0.899,-0.874,-0.885,-0.913,-0.911,-0.913,
	        	-0.122264,-0.072542,-0.41595,-0.22825,-0.180378,-0.059345,
	        	-0.67425,-0.71668,-0.7257,-0.6391,-0.87456,-0.67562,
	        	-0.169012,-0.112746,-0.128325,-0.462891,-0.379887,-0.491194,
	        	-0.0006293,-0.0003496,-0.003009,-0.0032868,-0.0014576,-0.0042911,
	        	-0.0160921,-0.0024472,-0.061065,-0.0042911,-0.005466,-0.0021912,
	        	0,-8.74,0,0,0,0,
	        	-0.59334,-0.2185,0,0,0,0,
	        	-1,-1,-1,-1,-1,-1]; */
	//var _g = JSON.stringify(g);
	$('#cen1').html("<a href='calculatedairywithParam?param="+price1+"&param="+price2+"&param="+price3+"&param="+price4+"&param="+price5+"&param="+price6+"&G="+g+"&dim=6&idR="+idr1+"&idR="+idr2+"&idR="+idr3+"&idR="+idr4+"&idR="+idr5+"&idR="+idr6+"&h="+h1+"&h="+h2+"&h="+h3+"&h="+h4+"&h="+h5+"&h="+h6+"&h=-100.0&lb="+lb1+"&lb="+lb2+"&lb="+lb3+"&lb="+lb4+"&lb="+lb5+"&lb="+lb6+"&ub="+ub1+"&ub="+ub2+"&ub="+ub3+"&ub="+ub4+"&ub="+ub5+"&ub="+ub6+"'>คำนวณ</a>");			
	
	/* $.ajax({
        dataType : "json",
        url :"calculatedairywithParam",
        headers : {
            'Accept' : 'application/json',
            'Content-Type' : 'application/json'
        },
        data : JSON.stringify(_g),
        type : 'GET',
        success : function(data) {
            //self.displayResults(data);
        },
        error : function(jqXHR,textStatus,errorThrown ){
            showPopupError('Error','error : ' + textStatus, 'ok');
        }
    }); */
}
	
$(document).on('click','#addcalformula',function(e){ //id of button
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
	
});
		</script>
	
</body>
</html>