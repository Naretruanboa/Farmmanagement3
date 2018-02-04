<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>คำนวณค่าโภชนะของโคเนื้อ</title>
<script language ="javascript">
function changeSrc(test){
var x=test.options[test.selectedIndex].value;
var x1 = "<c:url value='/img/form_kopun/"+x+".jpg'/>"
document.getElementById("myImage").src = x1;//.src
document.getElementById("myf").innerHTML = "แบบที่ " + x;
}
</script>

<script type="text/javascript">
function show(str)
{
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  } 
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getStandard?id="+str,true);	
xmlhttp.send();
}

</script>
</head>
<body>
<%
int i=1;
%>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
 <c:forEach items="${userlist}" var="p">
 	<c:if test="${p.privilege.id != 2 && p.privilege.id != 1}">
		<c:redirect url="index"/>
	</c:if>
 </c:forEach>
	<jsp:include page="../menu.jsp"/>
	
	
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

 <div class="row demo-row">
        <div class="col-xs-1"></div>
          
          
  <div class="example">
        <div class="row">
          <div class="col-md-12">
           <div class="panel">
            
              <ul id="myTab1" class="nav nav-pills nav-justified">
                <li class="active"><a href="#nrc" data-toggle="tab"><font size="5">NRC</font></a></li>
                <li><a href="#thai" data-toggle="tab"><font size="5">THAI</font></a></li>  
              </ul>
              

<div id="myTabContent" class="tab-content">
<!--NRC-->    
                <div class="tab-pane fade active in" id="nrc">
                <div class="example">
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
							<label class=" col-md-4" style="font-size: 20px;">พันธุ์โค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="cow1">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">พื้นเมือง</option>
											<option value="2">บราห์มัน</option>
											<option value="3">พันธุ์ผสม</option>
											<option value="4">พันธุ์ผสมBxC</option>
										</select>
							</div>
							<!-- <div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="button">มีข้อมูลอยู่ในระบบ</a>
							</div> -->
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">เพศ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="gender1">
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
								<input id="weight1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ(ก.ก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight1" type="text" class="form-control" onkeydown='return keyok(event)'/>
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
					<br><br><div class="panel-body" id="hi">
						<div class="row form-group" >
							<label id="t1" class=" col-md-4" style="font-size: 20px;" >คะแนนร่างกาย
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="type1">
											<option value="0">เลือกคะแนนร่างกาย</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
										</select>
							</div>
						</div>
						 
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label id="date" class=" col-md-4" style="font-size: 20px;">การกินอาหารหยาบ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="Type_eating1">
											<option value="0">เลือกการกินอาหาร</option>
											<option value="1">ตัดมา</option>
											<option value="2">แทะเล็บ</option>
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
									<div class="row form-group"> 
											<table  class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr>
														<th>ความต้องการโภชนะต่อวัน<br> </th>
														<th>วัตถุดิบแห้ง<br>(กก.)</th>
														<th>NEm<br>(เมกะแคล)</th>
														<th>NEg<br>(เมกะแคล)</th>
														<th>TDN<br>(กก.)</th>
														<th>โปรตีน<br>(กก.)</th>
														<th>ADF<br>(กก.)</th>
														<th>แคลเซียม<br>(กก.)</th>
														<th>ฟอสฟอรัส<br>(กก.)</th>
														<th>MP<br>(กก.)</th>
													</tr>
													<tr>
														<th>ความต้องการของโภชนะโค</th>
														<th class="DM1"></th>
														<th class="NEm1"></th>
														<th class="NEg1"></th>
														<th class="TDN1"></th>
														<th class="Protein1"></th>
														<th class="ADF1"></th>
														<th class="Ca1"></th>
														<th class="P1"></th>
														<th class="MP1"></th>
													</tr>
												</thead> 
												
												<tbody style="text-align: center;" id="lists"></tbody>
											</table>
											<!-- <label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
								: </label>
							<div class="col-md-1">
								<input  class="form-control" id="per1" placeholder="100%"/>
							</div> -->
									</div>
								</div>
							</div>
							
							<div class="row form-group">
							<div class="col-md-12" align="center">
								<button class="btn btn-success" onclick="cal1()">ทำการคำนวณ</button>
								<button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()"><a href='setrawmaterialbeef'>จัดสัดส่วนอาหารข้น</a></button>
								<!-- <button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()"><a href='calculatebeef'>จัดสัดส่วนอาหารข้นราคาต่ำสุด</a></button> -->
							</div>
							
						</div>
						
					</div>
			</div>
</div>
</div>
				</div>
				</div>
				 
               
<!-----------------THAI-->                
                <div class="tab-pane fade" id="thai">
                <div class="example">
                <div class="container" style="color: black;">
		<div class="row form-group">
		<div class="panel-body">
			<div class="col-md-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;ข้อมูลพื้นฐานโค
						</h3>
					</div>
					<div class="panel-body">
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">พันธุ์โค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="cow2">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">บราห์มัน</option>
											<option value="2">พื้นเมือง</option>
										</select>
							</div>
							<!-- <div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="button">มีข้อมูลอยู่ในระบบ</a>
							</div> -->
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">เพศ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="gender2">
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
								<input id="weight2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ(ก.ก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						
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
							<div class="panel-body" >
									<div class="row form-group"> 
											<table  class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
												<thead >
													
													<tr>
														<th>ความต้องการโภชนะต่อวัน<br> </th>
														<th>วัตถุดิบแห้ง<br>(กก.)</th>
														<th>ME<br>(เมกะแคล)</th>
														<th>TDN<br>(กก.)</th>
														<th>โปรตีน<br>(กก.)</th>
														<th>ADF<br>(กก.)</th>
														<th>แคลเซียม<br>(กก.)</th>
														<th>ฟอสฟอรัส<br>(กก.)</th>
													</tr>
													<tr>
														<th>ความต้องการของโภชนะโค</th>
														<th class="DM2"></th>
														<th class="ME2"></th>
														<th class="TDN2"></th>
														<th class="Protein2"></th>
														<th class="ADF2"></th>
														<th class="Ca2"></th>
														<th class="P2"></th>
													</tr>
												</thead> 
												
												<tbody style="text-align: center;" id="lists"></tbody>
											</table>
											<!-- <label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
								: </label>
							<div class="col-md-1">
								<input  class="form-control" id="per2" placeholder="100%"/>
							</div> -->
									</div>
								</div>
							</div>
							
							<div class="row form-group">
							<div class="col-md-12" align="center">
								<button class="btn btn-success" onclick="cal2()">ทำการคำนวณ</button>
								<button type="button" class="btn btn-default btn-lg" id="cen2" onclick="cen2()"><a href='setrawmaterialbeef'>จัดสัดส่วนอาหารข้น</a></button>
								<!-- <button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()"><a href='calculatebeef'>จัดสัดส่วนอาหารข้นราคาต่ำสุด</a></button> -->
							</div>
							
						</div>
						
					</div>
			</div>
</div>
</div>
				</div>
                </div>
 
 </div>
 
 </div>
 </div>
 </div>
 </div>         
          
          
          
          
          

 </div>                       
		<jsp:include page="../footer.jsp"/>
		
		
<script type="text/javascript">

//-------------------------------------------------------//
//คำนวณNRC
function cal1(){
	//รับinput พร้อมประกาศตัวแปร
	var cow = $('#cow1').val();
	var gender = $('#gender1').val();
	var weight = $('#weight1').val();
	var addweight = $('#addweight1').val();
	var type = $('#type1').val();
	var Type_eating = $('#Type_eating1').val();
	
	
	var MsgError=""; 
	if(cow==0){
		MsgError+="กรุณาเลือกสายพันธุ์\n";
	}
	if(gender==0){
		MsgError+="กรุณาเลือกเพศของวัว\n";
	}
	if(weight==""){
		MsgError+="กรุณากรอกน้ำหนักของวัว\n";
	}
	if(addweight==""){
		MsgError+="กรุณากรอกน้ำหนักเพิ่มวัวละของวัว\n";
	}
	if(type==0){
		MsgError+="กรุณาเลือกคะแนนร่างกายของวัว\n";
	}
	if(Type_eating==0){
		MsgError+="กรุณาเลือกประเภทการกินของวัว\n";
	}
	if(MsgError!=""){
		 swal("ไม่สามารถคำนวณได้", MsgError, "error");
	}else{
		swal("สำเร็จ", "คำนวณสำเร็จ", "success");
		
	
	/*-----------------------------------วัตถุดิบแห้ง-----------------------------------------------*/
    var b25 = (0.96*weight);
	var b65 = (Math.pow(b25,0.75)*(((0.2435*0.95)-(0.0466*Math.pow(0.95,2)))-0.0869));
	
	var d111 = b65.toFixed(2);


	/*---------------------------------------------------------------------------------------*/
	
	/*-------------------------------------NEm--------------------------------------------------*/
	var b55 = (0.8+((type-1)*0.05));
	
	if (cow == '1'){
		var b51 = (1.05);
	}
	else if (cow == '2'){
		var b51 = (0.9);
	}
	else if (cow == '3'){
		var b51 = (0.9);
	}
	else if (cow == '4'){
		var b51 = (0.95);
	}
	
	if(gender == '1'){
		var b54 = (1.15);
	}
	else if(gender == '2'){
		var b54 = (1);
	}
	
	var b56 = ((((0.077*Math.pow(b25,0.75))*b51)*b54)*b55);
	
	if( Type_eating == '1'){
		var b63 = b56;
	}
	
	if( Type_eating == '2'){
		var b63 = b56+(b56*0.1);
	}
	
	var d222 = b63.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	
	/*-------------------------------------NEg--------------------------------------------------*/
	
	var e26 = addweight*1000;
	var b31 = e26/1000;
	var b32 = 0.956*b31;
	
	if(cow == '1'){
		var c24 = 350;
	}
	else if(cow == '2'){
		var c24 = 350*1.05;
	}
	else if(cow == '3'){
		var c24 = 350*1.1;
	}
	else if(cow == '4'){
		var c24 = 350;
	}
	
	if(cow == '1'){
		var b24 = 550;
	}
	else if(cow == '2'){
		var b24 = 550*1.05;
	}
	else if(cow == '3'){
		var b24 = 550*1.1;
	}
	else if(cow == '4'){
		var b24 = 550;
	}
	
	if(gender == '1'){
		var b28 = b24;
	}
	else if (gender == '2') {
		var b28 = c24;
	}
	
	var b29 = (462/b28)*b25;
	var b30 = 0.891*b29;
	var b33 = 0.0635*Math.pow(b30,0.75)*Math.pow(b32,1.097);
	
	var d333 = b33.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*-------------------------------------TDN-------------------------------------------------*/
	
	var e29 = b33;
	var e41 = ((e29+1.01)/0.029)/100;
	var e28 = b63;
	var e40 = (((((e28+0.29)/0.029)/100)*b51)*b54)*b55;
	var e42 = e40+e41; 
	
	var d444 = e42.toFixed(2);
	/*---------------------------------------------------------------------------------------*/
	/*--------------------------------------------โปรตีน-------------------------------------------*/
	
	var b38 = 3.8*Math.pow(b25,0.75);
	var b35 = b30;
	var b34 = b31*(268-(29.4*(b33/b31)));
	
	if(b35 <= 300){
		var b36 = b34/(0.83-(b35*0.00114));
	}
	else{
		var b36 = b34/0.492;
	}
	
	var b39 = b36+b38;
	var b41 = b39/0.8;
	var b40 = b39/0.64;
	var b42 = (b40+b41)/2;
	var h12 = b42/1000;
	
	
	var d555 = h12.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*--------------------------------ADF-------------------------------------------------------*/
	
	var i12 = (21/100)*b65;
	var d666 = i12.toFixed(2);

	/*---------------------------------------------------------------------------------------*/
	/*-------------------------------CA--------------------------------------------------------*/
	
	var b43 = b34;
	var b44 = ((0.0154*weight)/0.5)+((b43*0.071)/0.5);
	var d777 = b44.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*-------------------------------P--------------------------------------------------------*/
	
	var b45 = ((0.016*e26)/0.68)+((b44*0.0451)/0.68);
	var d888 = b45.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*---------------------------------------------------------------------------------------*/
	
	var m12 = b39/1000;
	var d999 = m12.toFixed(2);
	
	//แป้ง
	var pow = (d111*20)/100;
	var nfc = pow.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	
	/*------------------------------ส่งไปอีกหน้า---------------------------------------------------------*/
	
	//มี b25
	//มี b51
	//มี b54
	//มี b55
	//มี b56
	//มี b57
	//มี b63
	//มี x12=b57
	
	/*---------------------------------------------------------------------------------------*/
	
	 $('.DM1').html(d111);
	 $('.NEm1').html(d222);
	 $('.NEg1').html(d333);
	 $('.TDN1').html(d444);
	 $('.Protein1').html(d555);
	 $('.ADF1').html(d666);
	 $('.Ca1').html(d777);
	 $('.P1').html(d888);
	 $('.MP1').html(d999);

		$('#cen1').html("<a href='setrawmaterialbeef?weight="+weight+"&wpD="+addweight+"&dm="+d111+"&nem="+d222+"&neg="+d333+"&tdn="+d444+"&protein="+d555+"&adf="+d666+"&ca="+d777+"&p="+d888+"&mp="+d999+"&nfc="+nfc+"&urea="+b63+"'>นำไปจัดสัดส่วนอาหาร</a>");	
	}
}

//คำนวณTHAI
function cal2(){
	//รับinput พร้อมประกาศตัวแปร
	var cow = $('#cow2').val();
	var gender = $('#gender2').val();
	var weight = $('#weight2').val();
	var addweight = $('#addweight2').val();
	

	var MsgError=""; 
	if(cow==0){
		MsgError+="กรุณาเลือกสายพันธุ์\n";
	}
	if(gender==0){
		MsgError+="กรุณาเลือกเพศของวัว\n";
	}
	if(weight==""){
		MsgError+="กรุณากรอกน้ำหนักของวัว\n";
	}
	if(addweight==""){
		MsgError+="กรุณากรอกน้ำหนักเพิ่มวัวละของวัว\n";
	}
	if(MsgError!=""){
		 swal("ไม่สามารถคำนวณได้", MsgError, "error");
	}else{
		swal("สำเร็จ", "คำนวณสำเร็จ", "success");
	
	/*-----------------------------------วัตถุดิบแห้ง-----------------------------------------------*/
	
	var j47 = weight;
	var j48 = (0.02887*j47)-0.5778;
	var d111 = j48.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*---------------------------------ME------------------------------------------------------*/
	
	
	var j25 = weight;
	var j26 = addweight*1000;
	var j27 = Math.pow(j25,0.75);
	var j28 = j26/j27;
	
	if(cow == '1'){
		var j29 = 483.6+(31.37*j28);
	}
	else if (cow == '2') {
		
		var j29 = 486.19+(22.67*j28);

	}
	
	var j30 = j29/1000;
	var j31 = j27*j30;
	var j32 = j31/4.184;
	
	var d222 = j32.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*----------------------------TDN-----------------------------------------------------------*/
	
	var j33 = j32/0.82;
	var j34 = j33/4.409;
	
	var d333 = j34.toFixed(2);
	/*---------------------------------------------------------------------------------------*/
	/*-----------------------------โปรตีน----------------------------------------------------------*/
	
	var j41 = j28;
	var j40 = j27;
	
	if(cow == '1'){
		var j42 = 5.0262+(0.3808*j41);
	}
	else if (cow == '2') {
		
		var j42 = 4.52+(0.56*j41);

	}
	
	var j43 = j42*j40;
	var j44 = j43/1000;
	
	var d444 = j44.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*--------------------------------ADF-------------------------------------------------------*/
	
	var i12 = (21/100)*j48;
	var d555 = i12.toFixed(2);

	/*---------------------------------------------------------------------------------------*/
	/*-------------------------------CA--------------------------------------------------------*/
	
	var e26 = addweight*1000;
	var b25 = (0.96*weight);
	
	if(cow == '1'){
		var c24 = 350;
	}
	else if(cow == '2'){
		var c24 = 350*1.05;
	}
	else if(cow == '3'){
		var c24 = 350*1.1;
	}
	else if(cow == '4'){
		var c24 = 350;
	}
	
	if(cow == '1'){
		var b24 = 550;
	}
	else if(cow == '2'){
		var b24 = 550*1.05;
	}
	else if(cow == '3'){
		var b24 = 550*1.1;
	}
	else if(cow == '4'){
		var b24 = 550;
	}
	
	if(gender == '1'){
			var b28 = b24;
		}
		else if (gender == '2') {
			var b28 = c24;
		}
	var b29 = (462/b28)*b25;
	var b30 = 0.891*b29;
	var b31 = e26/1000;
	var b32 = 0.956*b31;


	var b33 = 0.0635*Math.pow(b30,0.75)*Math.pow(b32,1.097);
	var b34 = b31*(268-(29.4*(b33/b31)));
	
	var b43 = b34;
	var b44 = ((0.0154*weight)/0.5)+((b43*0.071)/0.5);
	var d666 = b44.toFixed(2);
	
	/*---------------------------------------------------------------------------------------*/
	/*-------------------------------P--------------------------------------------------------*/
	
	var b45 = ((0.016*e26)/0.68)+((b44*0.0451)/0.68);
	var d777 = b45.toFixed(2);
	
	//แป้ง
	var pow = (d111*20)/100;
	var nfc = pow.toFixed(2);
	
	/*-------------------------------DIP--------------------------------------------------------*/
	
	var b25 = 0.96*weight;
	var e26 = addweight*1000;
	var e30 = weight/600;
	var e31 = 2.67-(0.67*((e30-0.125)/(0.75-0.125)));
	var b66 = Math.pow(b25,0.75)*(((0.1493*0.95)-(0.046*Math.pow(0.95,2)))-0.0196);
	var e37 = (e31+0.45)/1.01;
	var e36 = b66;
	var e38 = e36*e37;
	var e39 = e38/4.409;
	var e54 = 6.25*(-31.86+(26.12*e39));
	var e56 = e54*0.8;
	var e57 = e56*0.8;
	
	var b28 = 550;
	var b27 = 462;
	var b31 = e26/1000;
	var b29 = (b27/b28)*b25;
	var b32 = 0.956*b31;
	var b30 = 0.891*b29;
	var b33 = (0.0635*Math.pow(b30,0.75))*Math.pow(b32,1.097);
	var e29 = b33;
	var e46 = 2.75*Math.pow(weight,0.5);
	var e45 = 0.2*Math.pow(weight,0.6);
	var e51 = ((211-(26.2*(e29/(e26/1000))))*(e26/1000));
	var e44 = e36-(e39*(1-0.08));
	var e48 = e46/0.67;
	var e47 = e45/0.67;
	var e52 = e51/0.65;
	var e50 = (1000*e44)*0.09;
	var e49 = e47+e48;
	var e53 = e49+e50+e52;
	var e58 = e53-e57;
	var e59 = e58/0.8;
	var e55 = e54/0.9;
	var e60 = (e55+e59)/1.15;
	var e61 = 0.15*e60;
	var e62 = e55-e61;
	var l12 = e62/1000;
	var l18 = l12*1
	var dip = l18.toFixed(2);


	
	/*---------------------------------------------------------------------------------------*/
	 $('.DM2').html(d111);
	 $('.ME2').html(d222);
	 $('.TDN2').html(d333);
	 $('.Protein2').html(d444);
	 $('.ADF2').html(d555);
	 $('.Ca2').html(d666);
	 $('.P2').html(d777);
	 
	 $('#cen2').html("<a href='setrawmaterialbeef?weight="+weight+"&wpD="+addweight+"&dm="+d111+"&me="+d222+"&tdn="+d333+"&protein="+d444+"&adf="+d555+"&ca="+d666+"&p="+d777+"&nfc="+nfc+"&dip="+dip+"'>นำไปจัดสัดส่วนอาหาร</a>");
	}
	
}

</script>
</body>
</html>