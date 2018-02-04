<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>หาค่าความต้องการทางโภชนะของโคเนื้อ</title>
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
					<div class="col-md-4">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 26px; font-weight: 900; color: white;">หาค่าความต้องการทางโภชนะของโคเนื้อ</p>
						</div>
					</div>
				</div>
			</div>
		</div>
			
		<div class="container" style="color: black;">	
		<div class="row form-group">
		<div class="panel-body">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;ข้อมูลพื้นฐานโค
						</h3>
					</div>
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">คำนวณความต้องการแบบ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="type" id="type" class="form-control" >
											<option value="No">เลือกการคำนวณ</option>
											<option value="NRC">NRC</option>
											<option value="THAI">THAI</option>
										</select>
												
							</div>
							
							<div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success" 
									  role="button">มีข้อมูลอยู่ในระบบ</a>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">พันธุ์โค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="cow">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">บราห์มัน</option>
											<option value="2">พื้นเมือง</option>
											<option value="3">พันธุ์ผสม</option>
										</select>
							</div>
						</div>	
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">เพศ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="gender">
											<option value="0">เลือกเพศ</option>
											<option value="1">เพศผู้</option>
											<option value="2">เพศเมีย</option>
										</select>
							</div>
						</div>	
							
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักโค(ก.ก.)
								: </label>
							<div class="col-md-4">
								<input id="weight" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						</div>
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ(ก.ก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						</div>
						</div>
						</div>
					</div>
					
					
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"
							style="font-size: 24px">
							<!-- <i class="fa fa-calculator"></i> -->&nbsp;ข้อมูลอื่นๆ
						</h3>
					</div>
					<br><br>
					<div class="panel-body" id="hi">
						<div class="row form-group" >
							<label id="t1" class=" col-md-4" style="font-size: 20px;" >คะแนนร่างกาย
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="type1">
											<option value="d0">เลือกคะแนนร่างกาย</option>
											<option value="d1">1</option>
											<option value="d2">2</option>
											<option value="d3">3</option>
											<option value="d4">4</option>
											<option value="d5">5</option>
											<option value="d6">6</option>
											<option value="d7">7</option>
											<option value="d8">8</option>
											<option value="d9">9</option>
										</select>
							</div>
						</div>
						 
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label id="date" class=" col-md-4" style="font-size: 20px;">การกินอาหารหยาบ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control">
											<option value="e0">เลือกการกินอาหาร</option>
											<option value="e1">ตัดมา</option>
											<option value="e2">แทะเล็บ</option>
										</select>
							</div>
							<br><br><br><br>
						</div>
					</div>
				</div>
				<div id="txt"></div>
			</div>

			
			
			<div class="col-md-12">
						<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
							<div class="panel-heading">
								<h3 class="panel-title" style="font-size: 24px; color: white;">
									<i class="fa fa-cart-plus"></i>&nbsp;ความต้องการทางโภชนะ
								</h3>
							</div>
							<div class="panel-body" >
								<center>
									<div class="row form-group"> 
											<table  class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr>
														<th>ความต้องการโภชนะต่อวัน<br> </th>
														<th>วัตถุดิบแห้ง<br>(กก.)</th>
														<th id="me">ME<br>(เมกะแคล)</th>
														<th id="nem">NEm<br>(เมกะแคล)</th>
														<th id="neg">NEg<br>(เมกะแคล)</th>
														<th>TDN<br>(กก.)</th>
														<th>โปรตีน<br>(กก.)</th>
														<th>ADF<br>(กก.)</th>
														<th>แคลเซียม<br>(กก.)</th>
														<th>ฟอสฟอรัส<br>(กก.)</th>
														<th id="mp">MP<br>(กก.)</th>
													</tr>
													<tr>
														<th>ความต้องการของโภชนะโค</th>
														<th ></th>
														<th class="d2"></th>
														<th class="d1"></th>
														<th id="nem2"></th>
														<th id="neg2"></th>
														<th></th>
														<th></th>
														<th></th>
														<th></th>
														<th id="mp2"></th>
													</tr>
												</thead> 
												
												<tbody style="text-align: center;" id="lists"></tbody>
											</table>
											<label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
								: </label>
							<div class="col-md-1">
								<input id="code" type="text" style="text-align: center" class="form-control" onkeydown='return keyok(event)'/>
							</div>
									</div>
								</center>
								</div>
							</div>
							
							<div class="row form-group">
							<div class="col-md-offset-5 col-md-12">
								<button class="btn btn-success" onclick="cal()">ทำการคำนวณ</button>
								<button class="btn btn-success" onclick="test()">Test</button>
								<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()"><a href='setrawmaterialbeef'>นำไปจัดสัดส่วนอาหาร</a></button>
							</div>
							
						</div>
						
					</div>
			</div>
</div>
</div>
	
	
<jsp:include page="../footer.jsp" />	
	<script>

	function cal(){
		var cow = $('#cow').val();
		var gender = $('#gender').val();
		var weight = $('#weight').val();
		var weight1 = parseFloat(weight);
		var addweight = $('#addweight').val();
		$('#cen').html("<a href='setrawmaterialbeef?weight="+weight1+"&wpD="+addweight+"'>นำไปจัดสัดส่วนอาหาร</a>");
		/* alert(Math.pow(cow,gender)); */
	}
	function test(){
		var w = $('#weight').val();
		var _w = $('#addweight').val();
		
	$.ajax({
		method:'GET',
		url:'test',
		data:{id1:w,id2:_w}
	}).done(function(txt){
		$('#txt').html(txt);
	});
	}
	
	//ซ่อน
	$(function() {
	    $('#hi').hide();
	    $('#nem').hide();
	    $('#nem2').hide();
	    $('#neg').hide();
	    $('#neg2').hide();
	    $('#mp').hide();
	    $('#mp2').hide();
	    $('#me').hide();
	    $('#me2').hide();
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#hi').show(); 
	        } else {
	            $('#hi').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#nem').show(); 
	        } else {
	            $('#nem').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#nem2').show(); 
	        } else {
	            $('#nem2').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#neg').show(); 
	        } else {
	            $('#neg').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#neg2').show(); 
	        } else {
	            $('#neg2').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#mp').show(); 
	        } else {
	            $('#mp').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'NRC') {
	            $('#mp2').show(); 
	        } else {
	            $('#mp2').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'THAI') {
	            $('#me').show(); 
	        } else {
	            $('#me').hide(); 
	        } 
	    });
	    
	    $('#type').change(function(){
	        if($('#type').val() == 'THAI') {
	            $('#me2').show(); 
	        } else {
	            $('#me2').hide(); 
	        } 
	    });
	    
	    
	});
		</script>
	
</body>
</html>