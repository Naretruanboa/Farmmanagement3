<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>หาค่าความต้องการทางโภชนะของโคนม</title>
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
							<p style="font-size: 26px; font-weight: 900; color: white;">หาค่าความต้องการทางโภชนะของโคนม</p>
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
							<label class=" col-md-4" style="font-size: 20px;">ประเภทของโค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="t1" id="t1" class="form-control" >
											<option value="No">กรุณาเลือกชนิดโค</option>
											<option value="clas">โครุ่น</option>
											<option value="dairy">โครีดนม</option>
											<option value="dry">โคแห้งนม</option>
											<option value="ox">โคผู้</option>
										</select>
							</div>
							<div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="button">มีข้อมูลอยู่ในระบบ</a>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">พันธุ์โค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="breed">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">พันธุ์แท้ ขาวดำ</option>
											<option value="2">พันธุ์ผสม ขาวดำ</option>
										</select>
							</div>
							
						</div>	
						
							
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักโค (กก.)
								: </label>
							<div class="col-md-4">
								<input id="weight" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>						
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ (กก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
							
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">อายุโค (ปี)
								: </label>
							<div class="col-md-4">
								<input id="age" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
							
						</div>
						
						<div class="row form-group" id="a7">
						
							<label class="col-md-4" style="font-size: 20px;">การตั้งท้อง (วัน)
								: </label>
							<div class="col-md-4">
								<input id="pregnant1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a9">
						
							<label class="col-md-4" style="font-size: 20px;">การตั้งท้อง (วัน)
								: </label>
							<div class="col-md-4">
								<input id="pregnant2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a10">
						
							<label class="col-md-4" style="font-size: 20px;">การตั้งท้อง (วัน)
								: </label>
							<div class="col-md-4">
								<input id="pregnant3" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a1">
						
							<label class="col-md-4" style="font-size: 20px;">ให้นมครั้งที่
								: </label>
							<div class="col-md-4">
								<input id="lactation1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a8">
						
							<label class="col-md-4" style="font-size: 20px;">ให้นมครั้งที่
								: </label>
							<div class="col-md-4">
								<input id="lactation2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a2">
						
							<label class="col-md-4" style="font-size: 20px;">ให้นมวันละ (กก.)
								: </label>
							<div class="col-md-4">
								<input id="lactationPerDays" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a3">
						
							<label class="col-md-4" style="font-size: 20px;">ไขมันนม (%)
								: </label>
							<div class="col-md-4">
								<input id="fatmilk" type="text" class="form-control" onkeydown='return keyok(event)'/>
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
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">หน่วยเยื่อใยอาหาร
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="t2" id="t2" class="form-control">
											<option value="No">เลือกหน่วยอาหาร</option>
											<option value="ndf">NDF</option>
											<option value="adf">ADF</option>
										</select>
							</div>
						</div>
						 
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">การกินอาหารหยาบ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="Type_eating">
											<option value="0">เลือกการกินอาหาร</option>
											<option value="1">ตัดมา</option>
											<option value="2">แทะเล็บ</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">ความเครียดของโค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="Strain">
											<option value="0">เลือกอาการโค</option>
											<option value="1">ไม่มี</option>
											<option value="2">เริ่มหอบ</option>
											<option value="3">อ้าปาก</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group" id="a4">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">หน่วยพลังงาน
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="Unit_energy" id="Unit_energy1" class="form-control" >
											<option value="0">เลือกหน่วยพลังงาน</option>
											<option value="nel">NEL</option>
											<option value="tdn">TDN</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group" id="a11">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">หน่วยพลังงาน
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="Unit_energy" id="Unit_energy2" class="form-control" >
											<option value="0">เลือกหน่วยพลังงาน</option>
											<option value="nel">NEL</option>
											<option value="tdn">TDN</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group" id="a5">
						
							<label class="col-md-4" style="font-size: 20px;">ราคาน้ำนม (บาท/กก.) (%)
								: </label>
							<div class="col-md-4">
								<input id="price1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a12">
						
							<label class="col-md-4" style="font-size: 20px;">ราคาน้ำนม (บาท/กก.) (%)
								: </label>
							<div class="col-md-4">
								<input id="price2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a6">
						
							<label class="col-md-4" style="font-size: 20px;">ระยะเดินไปรีดนม(กม./วัน)
								: </label>
							<div class="col-md-4">
								<input id="Stage_walk1" type="text" class="form-control" onkeydown='return keyok(event)'/>รวมระยะทางไปกลับ
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group" id="a13">
						
							<label class="col-md-4" style="font-size: 20px;">ระยะเดินไปรีดนม(กม./วัน)
								: </label>
							<div class="col-md-4">
								<input id="Stage_walk2" type="text" class="form-control" onkeydown='return keyok(event)'/>รวมระยะทางไปกลับ
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						<br><br>
						
					</div>
					
				</div>
				
			</div>
			<div class="col-md-12">
						<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
							<div class="panel-heading">
								<h3 class="panel-title" style="font-size: 24px; color: white;">
									<i class="fa fa-cart-plus"></i>&nbsp;ความต้องการทางโภชนะ
								</h3>
							</div>
							<div class="panel-body">
								<center>
									<div class="row form-group"> 
											<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr>
														<th>ความต้องการโภชนะต่อวัน<br> </th>
														<th>วัตถุดิบแห้ง<br>(กก.)</th>
														<th>พลังงาน<br>(กก.)</th>
														<th>เยื่อใย<br>(กก.)</th>
														<th>โปรตีน<br>(กก.))</th>
														<th>บายพาสโปรตีน<br>(กก.)</th>
														<th>โปรตีนสลายตัว<br>(กก.)</th>
														<th>แคลเซียม<br>(กก.)</th>
														<th>ฟอสฟอรัส<br>(กก.)</th>
														<th>วิตามินเอ<br>(หน่วย UI.)</th>
													</tr>
													<tr>
														<th>ความต้องการของโภชนะโค</th>
														<th class="DM"></th>
														<th class="TDN"></th>
														<th class="NDF"></th>
														<th class="Protein"></th>
														<th class="UIP"></th>
														<th class="DIP"></th>
														<th class="Ca"></th>
														<th class="P"></th>
														<th class="VitA"></th>
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
								<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="setrawmaterialdairy">จัดสัดส่วนอาหาร
								</button>
							</div>
							
						</div>
					</div>
			</div>
</div>
</div>
	
		<jsp:include page="../footer.jsp" />
	
	<script type="text/javascript">
	function cal(){
		//รับinput พร้อมประกาศตัวแปร
		var t1 = $('#t1').val();
		var breed = $('#breed').val();
		var weight = $('#weight').val();
		var addweight = $('#addweight').val();
		var age = $('#age').val();
		var pregnant1 = $('#pregnant1').val();
		var pregnant2 = $('#pregnant2').val();
		var pregnant3 = $('#pregnant3').val();
		var lactation1 = $('#lactation1').val();
		var lactation2 = $('#lactation2').val();
		var lactationPerDays = $('#lactationPerDays').val();
		var fatmilk = $('#fatmilk').val();
		var Type_eating = $('#Type_eating').val();
		var Strain = $('#Strain').val();
		var Unit_energy1 = $('#Unit_energy1').val();
		var Unit_energy2 = $('#Unit_energy2').val();
		var price1 = $('#price1').val();
		var price2 = $('#price2').val();
		var Stage_walk1 = $('#Stage_walk1').val();
		var Stage_walk2 = $('#Stage_walk2').val();

		
		/* var DM	= (b);
		var TDN	= (breed+2);
		var NDF	= (breed+3);
		var Protein	= (breed+4);
		var UIP	= (breed+5);
		var DIP	= (breed+6);
		var Ca	= (breed+7);
		var P	= (breed+8);
		var VitA = (breed+9);  */


	/*  $('.DM').html((breed*1)+1);  
		$('.TDN').html((breed*1)+2);
		$('.NDF').html(breed+3);
		$('.Protein').html(breed+4);
		$('.UIP').html(breed+5);
		$('.DIP').html(breed+6);
		$('.Ca').html(breed+7);
		$('.P').html(breed+8);
		$('.VitA').html(breed+9); */ 
		
		/* $('#cen').html("<a href='setrawmaterialdairy?protein="+protein+"&tdn="+tdn+"'>นำไปจัดสัดส่วนอาหาร</a>"); */
		/* alert(Math.pow(cow,gender)); */
		
		
		//ไม่เลือก
		 if($('#t1').val() == 'No') {
			 $('.DM').html(null);
			 var DM	= ("");
			 
			 $('#cen').html("<a href='setrawmaterialdairy?DM="+DM+"'>นำไปจัดสัดส่วนอาหาร</a>");
		 }
		
		//โครุ่น		
		 if($('#t1').val() == 'clas') {			 
			 //พันธุ์แท้
			 if($('#breed').val() == '1') {
				 /*  //ประเภทการกิน ตัดมา
				 if($('#Type_eating').val() == '1') {
					 var tt1 = (Math.pow(weight,0.75));
					 var g28 = (0.086*tt1);
				 }
				//ประเภทการกิน แทะ
				 if($('#Type_eating').val() == '2') {
					var tt2 = (Math.pow(weight,0.75));
					 var g28 = ((0.086*tt2)+(0.00045*2*weight));
				 }
				 
				 //ความเครียด ไม่มี
				 if($('#Strain').val() == '1') {	 
					 var f28 = (1);
				 }
				//ความเครียด เริ่มหอบ
				if($('#Strain').val() == '2') {
					 var f28 = (1.07); 
				 }
				//ความเครียด อ้าปาก
				if($('#Strain').val() == '3') {
					 var f28 = (1.18);
				 }
				
				
				 var d35 = (d29/d33);
				 var d34 = (d28/d32);
				 var d28 = (g28*f28);
				 var d32 = (1.37*d31-0.138*e31+0.0105*f31-1.12);
				 var d29 = (f29);
				 var d33 = (1.42*d31-0.174*e31+0.0122*f31-1.65); 
				 
				 var d31 = (2*((d30-0.125)/(0.75-0.125)));
				 var tt3 = (Math.pow(d31,2));
				 var e31 = (tt3);
				 var tt4 = (Math.pow(d31,3));
				 var f31 = (tt4);
				 var tt5 = (Math.pow((d26/1000),1.119));
				 var f29 = (0.035*tt1*tt5+d26/1000);
				 var e29 = (0.045*tt1*tt5+d26/1000);
				 var d25 = (weight);
				 var d30 = (0.625);
				 var d26 = (addweight*1000); 
				 var d36 = ((d34*1)+(d35*1));
				 $('.DM').html(d36);	
				 */    
				 
			 	
			 	
			 	/* var DM	= ((breed*1)+66);
			 	$('#cen').html("<a href='setrawmaterialdairy?DM="+DM+"'>นำไปจัดสัดส่วนอาหาร</a>");  */
			 }
			 //พันธุ์ผสม
			 if($('#breed').val() == '2') {
				
				 
				 
			 	/* 
			 	$('.DM').html((breed*1)+99);
			 	var DM	= ((breed*1)+99);
			 	$('#cen').html("<a href='setrawmaterialdairy?DM="+DM+"'>นำไปจัดสัดส่วนอาหาร</a>"); */
			 }
		 }
		 //โครีดนม
		 if($('#t1').val() == 'dairy') {
			 var d29 = (weight);
			 var d33 = (addweight);
			 var d35 = (d29/d33);
			 
			 $('.DM').html(d35);
		 }
		 //โคแห้งนม
		 if($('#t1').val() == 'dry') {
			 $('.DM').html((breed*1)+88);
		 }
		//โคผู้
		 if($('#t1').val() == 'ox') {
			 $('.DM').html((breed*1)+99);
		 }
	}

	
	
	
	
	
	
	
	//ซ่อน,แสดงแต่ละประเภท
	$(function() {
	    $('#a1').hide();
	    $('#a2').hide();
	    $('#a3').hide();
	    $('#a4').hide();
	    $('#a5').hide();
	    $('#a6').hide();
	    $('#a7').hide();
	    $('#a8').hide();
	    $('#a9').hide();
	    $('#a10').hide();
	    $('#a11').hide();
	    $('#a12').hide();
	    $('#a13').hide();
	    

	    /* เป็นโครีดนม*/
	    $('#t1').change(function(){
	        if($('#t1').val() == 'dairy') {
	            $('#a1').show(); 
	            $('#a2').show();
	            $('#a3').show();
	            $('#a4').show(); 
	            $('#a5').show(); 
	            $('#a6').show(); 
	            $('#a7').show(); 	        
	        } else {
	            $('#a1').hide();
	            $('#a2').hide(); 
	            $('#a3').hide(); 
	            $('#a4').hide(); 
	            $('#a5').hide(); 
	            $('#a6').hide(); 
	            $('#a7').hide(); 	            
	        } 
	    });
	        
	    /* โครุ่น */	    
	    $('#t1').change(function(){
	        if($('#t1').val() == 'clas') {
	            $('#a9').show(); 
	        } else {
	            $('#a9').hide(); 
	        } 
	    });
	    
	    
	    /* โคแห้งนม */    
	    $('#t1').change(function(){
	        if($('#t1').val() == 'dry') {
	            $('#a8').show(); 
	            $('#a10').show();
	            $('#a11').show();
	            $('#a12').show();
	            $('#a13').show();   
	        } else {
	            $('#a8').hide(); 
	            $('#a10').hide();
	            $('#a11').hide();
	            $('#a12').hide();
	            $('#a13').hide();
	        } 
	    });
	    
	    //โคผู้
	    $('#t1').change(function(){
	        if($('#t1').val() == 'ox') { 
	        } else {
	           
	        } 
	    }); 
	    
	    //ไม่เลือก
	    $('#t1').change(function(){
	        if($('#t1').val() == 'No') {
	        } else {
	           
	        } 
	    }); 
	});
	
		</script>
	
</body>
</html>