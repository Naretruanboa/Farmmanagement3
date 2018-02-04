<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
	<link href="resources/css/animate.css" rel="stylesheet">
<meta charset="utf-8">
<title>คำนวณค่าโภชนะของโคนม</title>
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
							<p style="font-size: 26px; font-weight: 900; color: white;">หาค่าความต้องการทางโภชนะของโคนม</p>
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
                <li class="active"><a href="#clas" data-toggle="tab"><font size="5" >โครุ่น</font></a></li>
                <li><a href="#daily" data-toggle="tab"><font size="5" >โครีดนม</font></a></li>
                 <li><a href="#dry" data-toggle="tab"><font size="5" >โคแห้งนม</font></a></li>
                   <li><a href="#ox" data-toggle="tab"><font size="5" >โคผู้</font></a></li>
                
              </ul>
              

<div id="myTabContent" class="tab-content">
<!--โครุ่น-->    
                <div class="tab-pane fade active in" id="clas">
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
										<select class="form-control" id="breed">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">พันธุ์แท้ ขาวดำ</option>
											<option value="2">พันธุ์ผสม ขาวดำ</option>
										</select>
							</div>
							<!-- <div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="button">มีข้อมูลอยู่ในระบบ</a>
							</div> -->
						</div>	
						
							
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักโค (กก.)
								: </label>
							<div class="col-md-4">
								<input id="weight" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>					
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ (กก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">อายุโค (ปี)
								: </label>
							<div class="col-md-4">
								<input id="age" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group" >
						
							<label class="col-md-4" style="font-size: 20px;">การตั้งท้อง (วัน)
								: </label>
							<div class="col-md-4">
								<input id="pregnant" type="text" class="form-control" onkeydown='return keyok(event)'/>
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
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">หน่วยเยื่อใยอาหาร
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="t2" id="t2" class="form-control">
											<option value="0">เลือกหน่วยอาหาร</option>
											<option value="1">NDF</option>
											<option value="2">ADF</option>
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

							<div class="table-responsive">
								<div class="panel-body">
									<div class="row form-group">
										<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
											<thead style="color: black;">

											<tr>
												<th>ความต้องการโภชนะต่อวัน<br> </th>
												<th>วัตถุดิบแห้ง<br>(กก.)</th>
												<th>พลังงาน<br>(กก.)</th>
												<th>เยื่อใย <br>(กก.)</th>
												<th>โปรตีน<br>(กก.))</th>
												<th>บายพาสโปรตีน<br>(กก.)</th>
												<th>โปรตีนสลายตัว<br>(กก.)</th>
												<th>แคลเซียม<br>(กก.)</th>
												<th>ฟอสฟอรัส<br>(กก.)</th>
												<th>วิตามินเอ<br>(หน่วย UI.)</th>
											</tr>
											<tr>
												<th>ความต้องการของโภชนะโค</th>
												<th class="DM1"></th>
												<th class="TDN1"></th>
												<th class="NDF1"></th>
												<th class="Protein1"></th>
												<th class="UIP1"></th>
												<th class="DIP1"></th>
												<th class="Ca1"></th>
												<th class="P1"></th>
												<th class="VitA1"></th>
											</tr>
											</thead>

											<tbody style="text-align: center;" id="lists"></tbody>
										</table>
										<!-- 	<label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
								: </label>
							<div class="col-md-1">
								<input id="code" type="text" style="text-align: center" class="form-control" onkeydown='return keyok(event)'/>
							</div> -->
									</div>
								</div>
							</div>

							</div>
							
							<div class="row form-group">
							<div class="col-md-12" align="center">
								<button class="btn btn-success" onclick="cal1()">ทำการคำนวณ</button>
								<!-- <button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()">
								<a href="materials">เลือกวัตถุดิบ</a>
								</button> -->
								 <button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()">
								<a href="setrawmaterialdairy">จัดสัดส่วนอาหารราคาต่ำสุด</a>
								</button> 
							</div>
							
						</div>
					</div>
			</div>
</div>
</div>
				</div>
				</div>
				 
               
<!--โครีดนม-->                
                <div class="tab-pane fade" id="daily">
                <div class="example">
                <div class="container" style="color: black;">
		<div class="row form-group">
		<div class="panel-body">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							&nbsp;ข้อมูลพื้นฐานโค
						</h3>
					</div>
					<div class="panel-body">
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">พันธุ์โค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="breed1">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">พันธุ์แท้ ขาวดำ</option>
											<option value="2">พันธุ์ผสม ขาวดำ</option>
										</select>
							</div>
							<!-- <div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="button">มีข้อมูลอยู่ในระบบ</a>
							</div> -->
						</div>	
						
							
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักโค (กก.)
								: </label>
							<div class="col-md-4">
								<input id="weight1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>					
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ (กก.) : </label>
							<div class="col-md-4">
								<input id="addweight1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">อายุโค (ปี)
								: </label>
							<div class="col-md-4">
								<input id="age1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group" >
						
							<label class="col-md-4" style="font-size: 20px;">การตั้งท้อง (วัน)
								: </label>
							<div class="col-md-4">
								<input id="pregnant1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">ให้นมครั้งที่
								: </label>
							<div class="col-md-4">
								<input id="lactation1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">ให้นมวันละ(กก.)
								: </label>
							<div class="col-md-4">
								<input id="lactationperdays1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">ไขมันนม(%)
								: </label>
							<div class="col-md-4">
								<input id="fatmilk1" type="text" class="form-control" onkeydown='return keyok(event)'/>
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
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">หน่วยเยื่อใยอาหาร
										: </label>
									<div class="col-md-5" style="font-size: 20px;">
										<select name="t3" id="t3" class="form-control">
											<option value="0">เลือกหน่วยอาหาร</option>
											<option value="1">NDF</option>
											<option value="2">ADF</option>
										</select>
							</div>
						</div>
						 
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">การกินอาหารหยาบ
										: </label>
									<div class="col-md-5" style="font-size: 20px;">
										<select class="form-control" id="Type_eating1">
											<option value="0">เลือกการกินอาหาร</option>
											<option value="1">ตัดมา</option>
											<option value="2">แทะเล็บ</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">ความเครียดของโค
										: </label>
									<div class="col-md-5" style="font-size: 20px;">
										<select class="form-control" id="Strain1">
											<option value="0">เลือกอาการโค</option>
											<option value="1">ไม่มี</option>
											<option value="2">เริ่มหอบ</option>
											<option value="3">อ้าปาก</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">หน่วยพลังงาน
										: </label>
									<div class="col-md-5" style="font-size: 20px;">
										<select name="Unit_energy" id="Unit_energy1" class="form-control" >
											<option value="0">เลือกหน่วยพลังงาน</option>
											<option value="1">NEL</option>
											<option value="2">TDN</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-5" style="font-size: 20px;">ราคาน้ำนม (บาท/กก.) (%)
								: </label>
							<div class="col-md-5">
								<input id="price1" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-5" style="font-size: 20px;">ระยะเดินไปรีดนม(กม./วัน)
								: </label>
							<div class="col-md-5">
								<input id="Stage_walk1" type="text" class="form-control" onkeydown='return keyok(event)'/>รวมระยะทางไปกลับ
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
							<div class="table-responsive">
								<div class="panel-body">
									<div class="row form-group">
										<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
											<thead style="color: black;">

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
												<th class="DM2"></th>
												<th class="TDN2"></th>
												<th class="NDF2"></th>
												<th class="Protein2"></th>
												<th class="UIP2"></th>
												<th class="DIP2"></th>
												<th class="Ca2"></th>
												<th class="P2"></th>
												<th class="VitA2"></th>
											</tr>
											</thead>

											<tbody style="text-align: center;" id="lists"></tbody>
										</table>
										<!-- <label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
                            : </label>
                        <div class="col-md-1">
                            <input id="code" type="text" style="text-align: center" class="form-control" onkeydown='return keyok(event)'/>
                        </div> -->
									</div>
								</div>

							</div>

							</div>
							
							<div class="row form-group">
							<div class="col-md-12" align="center">
								<button class="btn btn-success" onclick="cal2()">ทำการคำนวณ</button>
								<!-- <button type="button" class="btn btn-default btn-lg" id="cen2" onclick="cen2()">
								<a href="materials">เลือกวัตถุดิบ</a>
								</button> -->
								<button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()">
								<a href="setrawmaterialdairy">จัดสัดส่วนอาหารราคาต่ำสุด</a>
								</button>
							</div>
							
						</div>
					</div>
			</div>
</div>
</div>
				</div>
                </div>
                
<!--โคแห้งนม -->                
                <div class="tab-pane fade" id="dry">
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
										<select class="form-control" id="breed2">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">พันธุ์แท้ ขาวดำ</option>
											<option value="2">พันธุ์ผสม ขาวดำ</option>
										</select>
							</div>
							<!-- <div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="butยู่ในระบบ</a>
							</div> -->
						</div>	
						
							
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักโค (กก.)
								: </label>
							<div class="col-md-4">
								<input id="weight2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>					
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ (กก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">อายุโค (ปี)
								: </label>
							<div class="col-md-4">
								<input id="age2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group" >
						
							<label class="col-md-4" style="font-size: 20px;">การตั้งท้อง (วัน)
								: </label>
							<div class="col-md-4">
								<input id="pregnant2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">ให้นมครั้งที่
								: </label>
							<div class="col-md-4">
								<input id="lactation2" type="text" class="form-control" onkeydown='return keyok(event)'/>
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
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">หน่วยเยื่อใยอาหาร
										: </label>
									<div class="col-md-5" style="font-size: 20px;">
										<select name="t4" id="t4" class="form-control">
											<option value="0">เลือกหน่วยอาหาร</option>
											<option value="1">NDF</option>
											<option value="2">ADF</option>
										</select>
							</div>
						</div>
						 
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">การกินอาหารหยาบ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="Type_eating2">
											<option value="0">เลือกการกินอาหาร</option>
											<option value="1">ตัดมา</option>
											<option value="2">แทะเล็บ</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">ความเครียดของโค
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="Strain2">
											<option value="0">เลือกอาการโค</option>
											<option value="1">ไม่มี</option>
											<option value="2">เริ่มหอบ</option>
											<option value="3">อ้าปาก</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-5" style="font-size: 20px;">หน่วยพลังงาน
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="Unit_energy2" id="Unit_energy2" class="form-control" >
											<option value="0">เลือกหน่วยพลังงาน</option>
											<option value="1">NEL</option>
											<option value="2">TDN</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-5" style="font-size: 20px;">ราคาน้ำนม (บาท/กก.) (%)
								: </label>
							<div class="col-md-4">
								<input id="price2" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
							<div class="col-md-2">
							</div>
						
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-5" style="font-size: 20px;">ระยะเดินไปรีดนม(กม./วัน)
								: </label>
							<div class="col-md-4">
								<input id="Stage_walk2" type="text" class="form-control" onkeydown='return keyok(event)'/>รวมระยะทางไปกลับ
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
							<div class="table-responsive">
								<div class="panel-body">
									<div class="row form-group">
										<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
											<thead style="color: black;">

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
												<th class="DM3"></th>
												<th class="TDN3"></th>
												<th class="NDF3"></th>
												<th class="Protein3"></th>
												<th class="UIP3"></th>
												<th class="DIP3"></th>
												<th class="Ca3"></th>
												<th class="P3"></th>
												<th class="VitA3"></th>
											</tr>
											</thead>

											<tbody style="text-align: center;" id="lists"></tbody>
										</table>
										<!-- <label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
                            : </label>
                        <div class="col-md-1">
                            <input id="code" type="text" style="text-align: center" class="form-control" onkeydown='return keyok(event)'/>
                        </div> -->
									</div>
								</div>
							</div>

							</div>
							
							<div class="row form-group">
							<div class="col-md-12" align="center">
								<button class="btn btn-success" onclick="cal3()">ทำการคำนวณ</button>
								<!-- <button type="button" class="btn btn-default btn-lg" id="cen3" onclick="cen3()">
								<a href="materials">เลือกวัตถุดิบ</a>
								</button> -->
								<button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()">
								<a href="setrawmaterialdairy">จัดสัดส่วนอาหารราคาต่ำสุด</a>
								</button>
							</div>
							
						</div>
					</div>
			</div>
</div>
</div>
				</div>
                </div>
                
                
               
<!--โคผู้ ----------------------------------------------------------------------->           
                <div class="tab-pane fade" id="ox">
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
										<select class="form-control" id="breed3">
											<option value="0">เลือกพันธุ์โค</option>
											<option value="1">พันธุ์แท้ ขาวดำ</option>
											<option value="2">พันธุ์ผสม ขาวดำ</option>
										</select>
							</div>
							<!-- <div class="col-md-4" style="font-size: 20px;">
									<a href="../induc/breed" class="btn btn-success " 
									role="button">มีข้อมูลอยู่ในระบบ</a>
							</div> -->
						</div>	
						
							
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักโค (กก.)
								: </label>
							<div class="col-md-4">
								<input id="weight3" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>					
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">น้ำหนักเพิ่มวันละ (กก.)
								: </label>
							<div class="col-md-4">
								<input id="addweight3" type="text" class="form-control" onkeydown='return keyok(event)'/>
							</div>
						</div>
						
						<div class="row form-group">
						
							<label class="col-md-4" style="font-size: 20px;">อายุโค (ปี)
								: </label>
							<div class="col-md-4">
								<input id="age3" type="text" class="form-control" onkeydown='return keyok(event)'/>
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
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">หน่วยเยื่อใยอาหาร
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select name="t5" id="t5" class="form-control">
											<option value="0">เลือกหน่วยอาหาร</option>
											<option value="1">NDF</option>
											<option value="2">ADF</option>
										</select>
							</div>
						</div>
						 
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-4" style="font-size: 20px;">การกินอาหารหยาบ
										: </label>
									<div class="col-md-4" style="font-size: 20px;">
										<select class="form-control" id="Type_eating3">
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
										<select class="form-control" id="Strain3">
											<option value="0">เลือกอาการโค</option>
											<option value="1">ไม่มี</option>
											<option value="2">เริ่มหอบ</option>
											<option value="3">อ้าปาก</option>
										</select>
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


							<div class="table-responsive">
								<div class="panel-body">
									<div class="row form-group">
										<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
											<thead style="color: black;">

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
												<th class="DM4"></th>
												<th class="TDN4"></th>
												<th class="NDF4"></th>
												<th class="Protein4"></th>
												<th class="UIP4"></th>
												<th class="DIP4"></th>
												<th class="Ca4"></th>
												<th class="P4"></th>
												<th class="VitA4"></th>
											</tr>
											</thead>

											<tbody style="text-align: center;" id="lists"></tbody>
										</table>
										<!-- <label class="col-md-2" style="font-size: 20px;">ระดับให้เทียบกับมาตรฐาน
                            : </label>
                        <div class="col-md-1">
                            <input id="code" type="text" style="text-align: center" class="form-control" onkeydown='return keyok(event)'/>
                        </div> -->
									</div>
								</div>
							</div>


							</div>
							
							<div class="row form-group">
							<div class="col-md-12" align="center">
								<button class="btn btn-success" onclick="cal4()">ทำการคำนวณ</button>
								<!-- <button type="button" class="btn btn-default btn-lg" id="cen4" onclick="cen4()">
								<a href="materials">เลือกวัตถุดิบ</a>
								</button> -->
								<button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()">
								<a href="setrawmaterialdairy">จัดสัดส่วนอาหารราคาต่ำสุด</a>
								</button>
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

		<br>
		<jsp:include page="../footer.jsp"/>
		
	<script type="text/javascript">
	
	//คำนวณโครุ่น
	function cal1(){
		//รับinput พร้อมประกาศตัวแปร
		var breed = $('#breed').val();
		var weight = $('#weight').val();
		var addweight = $('#addweight').val();
		var age = $('#age').val();
		var pregnant = $('#pregnant').val();
		var t2 = $('#t2').val();
		var Type_eating = $('#Type_eating').val();
		var Strain = $('#Strain').val();
		var lactation = "";
		var lactationperdays = "";
		var fatmilk = "";
		var Unit_energy = "";
		var price = "";
		var stage_walk = "";
		
		var MsgError=""; 
		if(breed==0){
			MsgError+="กรุณาเลือกสายพันธุ์\n";
		}
		if(weight==""){
			MsgError+="กรุณากรอกน้ำหนักของวัว\n";
		}
		if(addweight==""){
			MsgError+="กรุณากรอกน้ำหนักที่เพิ่มต่อวันของวัว\n";
		}
		if(age==""){
			MsgError+="กรุณากรอกอายุของวัว\n";
		}
		if(pregnant==""){
			MsgError+="กรุณากรอกการตั้งท้องของวัว\n";
		}
		if(t2==0){
			MsgError+="กรุณาเลือกหน่วยเยื่อใยอาหาร\n";
		}
		if(Type_eating==0){
			MsgError+="กรุณาเลือกประเภทการกินของวัว\n";
		}
		if(Strain==0){
			MsgError+="กรุณาเลือกความเครียดของวัว\n";
		} 
		if(MsgError!=""){
			 swal("ไม่สามารถคำนวณได้", MsgError, "error");

		}
		 else{
			 swal("สำเร็จ", "คำนวณสำเร็จ", "success");
/* ---------------------------------------โครุ่น------------------------------------------------------ */
/*-----------------------------------วัตถุดิบแห้ง-----------------------------------------------*/
			 //ประเภทการกิน ตัดมา
			 if($('#Type_eating').val() == '1') {
				 var tt1 = (Math.pow(weight,0.75));
				 var g28 = (0.086*tt1);
			 }
			//ประเภทการกิน แทะ
			 if($('#Type_eating').val() == '2') {
				 var tt1 = (Math.pow(weight,0.75));
				var g28 = ((0.086*tt1)+(0.00045*2*weight));
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
			
			//พันธุ์ แท้
			if($('#breed').val() == '1') {
				 var d29 = (f29);
				 var d30 = (weight/800);
			 }
			
			
			//พันธุ์ ผสม
			if($('#breed').val() == '2') {
				 var d30 = (weight/600);
			 }
			 
			 var d26 = (addweight*1000); 
			 var d31 = (2.67-0.67*((d30-0.125)/(0.75-0.125)));
			 var tt3 = (Math.pow(d31,2));
			 var e31 = (tt3);
			 var tt4 = (Math.pow(d31,3));
			 var f31 = (tt4);
			 var tt5 = (Math.pow((d26/1000),1.119));
			 var f29 = ((0.035*tt1*tt5)+(d26/1000));
			 var e29 = ((0.045*tt1*tt5)+(d26/1000));
			 
				//พันธุ์ แท้
				if($('#breed').val() == '1') {
					 var d29 = (f29);
				 }
			 
			//พันธุ์ ผสม
				if($('#breed').val() == '2') {
					 var d29 = (e29);
				 }
			 
			 var d28 = (g28*f28);
			 var d32 = ((1.37*d31)-(0.138*e31)+(0.0105*f31)-1.12);
			 var d33 = ((1.42*d31)-(0.174*e31)+(0.0122*f31)-1.65); 
			 var d34 = (d28/d32);
			 var d35 = (d29/d33);

			 var d36 = ((d34*1)+(d35*1)); 
			 var d111 = d36.toFixed(2);
			 $('.DM1').html(d111);

			 /* แป้ง */
			 var pow = (d36*25)/100;
			 var d1010 = pow.toFixed(2);
			 
 /*--------------------------------------------------------------------------------------*/
 /*-----------------------------------พลังงานTDN-----------------------------------------------*/
 			var d37 = ((d31+0.45)/1.01);
 			var d40 =(0.0106*tt1);
 			var d38 =(d36*d37);
 			
 			//ตั้งท้องมากกว่า 220
 			if($('#pregnant').val() > '210') {
				 var d39 = ((d38/4.409)+d40);
			 }
 			//ตั้งท้องน้อยกว่า 220
 			if($('#pregnant').val() < '210') {
				 var d39 = ((d38/4.409));
			 }
 			var d222 = d39.toFixed(2);
			 $('.TDN1').html(d222);
  /*--------------------------------------------------------------------------------------*/
  /*-----------------------------------เยื่อใยNDFและADF-----------------------------------------------*/
 			
  			var g16 = ((28*d36)/100);
  			var g17 = ((21*d36)/100);
  			var d334 = g16.toFixed(2)
  			var d335 = g17.toFixed(2);
  			if(t2 == '1') {
  				var d333 = g16.toFixed(2);				
			}
  			
  			if(t2 == '2') {
  				var d333 = g17.toFixed(2);
  				
			} 			
  			 $('.NDF1').html(d333);
  			 
			
  /*--------------------------------------------------------------------------------------*/
  /*-----------------------------------โปรตีน-----------------------------------------------*/
 
  			var e65 = ((d36*0.12)*1000);
  			var a01 = (e65/1000);
  			var d444 = a01.toFixed(2);
			 $('.Protein1').html(d444);
  /*--------------------------------------------------------------------------------------*/
  /*-----------------------------------บายพาสโปรตีน-----------------------------------------------*/
 
  			var d26 = (addweight*1000);
  			var d45 = ((Math.pow(weight,0.6))*0.2);
  			var d46 = ((Math.pow(weight,0.5))*2.75);
  			var d54 = (6.25*(-31.86+(26.12*d39)));
  		//น้ำหนักเพิ่มวันละ=0
 			if(d26 == '0') {
				 var d51 = (0);
			 }
 		//น้ำหนักเพิ่มวันละ>0
 			if(d26 > '0') {
				 var d51 = ((211-26.2*(d29/(d26/1000)))*d26/1000);
			 }
 			var d67 = ((Math.pow(weight,0.7))*1.136);
  			var d44 = (d36-(d39*(1-0.08)));
  			var d48 = (d46/0.67);
  			var d47 = (d45/0.67);
  			var f49 = ((d47+d48)*1.1);
  			var e49 = (d47+d48);
  			var d56 = (d54*0.8);
  			var d52 = (d51/0.65);
  			var d68 = (d67/0.5);
  			var d50 = ((1000*d44)*0.09);
  			
  			if($('#age').val() < '2.5') {
				 var d49 = ((d47+d48)*1.2);
			}
  			
  			if($('#age').val() > '3.5') {
				 var d49 = (e49);
			}
  			if(($('#age').val() >= '2.5') & ($('#age').val() <= '3.5')) {
				 var d49 = (f49);
			} 
  			
  			var d57 = (d56*0.8);
  			
  			if($('#pregnant').val() > '210') {
				 var d53 = (d49+d50+d68+d52);
			 }
			//ตั้งท้องน้อยกว่า 220
			if($('#pregnant').val() < '210') {
				 var d53 = (d49+d50+d52);
			 }
  			
			var d58 = (d53-d57);
			var d59 = (d58/0.8);
			var a02 = (d59/1000);
			var d555 = a02.toFixed(2);
			 $('.UIP1').html(d555);
  /*--------------------------------------------------------------------------------------*/
   /*-----------------------------โปรตีนสลายตัว---------------------------------------------------------*/
   			 
   			var d55 = (d54/0.9);
   			var d60 = ((d55+d59)/(1+0.15));
   			var d61 = (0.15*d60);
   			var d62 = (d55-d61);
   			var a03 = (d62/1000);
   			var d666 = a03.toFixed(2);
   			 $('.DIP1').html(d666);
    /*--------------------------------------------------------------------------------------*/
     /*-----------------------------แคลเซียม---------------------------------------------------------*/
   			 
   			if($('#weight').val() < '250') {
				 var b110 = ((8+(0.0367*weight))+((0.00848*addweight)*1000));
			 }
    
   			if($('#weight').val() > '400') {
				 var b110 = ((25.4+(0.00092*weight))+((0.00361*addweight)*1000));
			 }
   
   			if(($('#weight').val() >= '250') & ($('#weight').val() <= '400')) {
				 var b110 = ((13.4+(0.0184*weight))+((0.00717*addweight)*1000));
			} 
   			var d777 = b110.toFixed(2);
   			 $('.Ca1').html(d777);
    /*--------------------------------------------------------------------------------------*/
     /*-----------------------------ฟอสฟอรัส---------------------------------------------------------*/
   			 
   			if($('#weight').val() < '250') {
				 var c110 = ((0.884+(0.05*weight))+((0.00486*addweight)*1000));
			 }
    
   			if($('#weight').val() > '400') {
				 var c110 = ((13.5+(0.00207*weight))+((0.00829*addweight)*1000));
			 }
   
   			if(($('#weight').val() >= '250') & ($('#weight').val() <= '400')) {
				 var c110 = ((7.27+(0.0215*weight))+((0.00602*addweight)*1000));
			} 
   			var d888 = c110.toFixed(2);
   			 $('.P1').html(d888);
    /*--------------------------------------------------------------------------------------*/
    /*-----------------------------ฟอสฟอรัส---------------------------------------------------------*/
   			 
   			var j15 = (weight*42.4);
   			var d999 = j15.toFixed(2);
   			 $('.VitA1').html(d999);
    /*--------------------------------------------------------------------------------------*/
   /*--------------------------------------------------------------------------------------*/
	
   	
   			$('#cen1').html("<a href='setrawmaterialdairy?weight="+weight+"&wpD="+addweight+"&dm="+d111+"&tdn="+d222+"&nel="+""+"&ndf="+d334+"&adf="+d335+"&protein="+d444+"&uip="+d555+"&dip="+d666+"&ca="+d777+"&p="+d888+"&vitA="+d999+"&nfc="+d1010+"&age="+age+"&pregnant="+pregnant+"&lactation="+lactation+"&lactationPerDays="+lactationperdays+"&fatMilk="+fatmilk+"&unitBond="+t2+"&typeEating="+Type_eating+"&strain="+Strain+"&unitEnergy="+Unit_energy+"&priceMilk="+price+"&stageWalk="+stage_walk+"&id="+1+"'>นำไปจัดสัดส่วนอาหาร</a>");			
						
		 }			
			
}	
	
	///คำนวณโครีดนม
	function cal2(){
		//รับinput พร้อมประกาศตัวแปร
		var breed = $('#breed1').val();
		var weight = $('#weight1').val();
		var addweight = $('#addweight1').val();
		var age = $('#age1').val();
		var pregnant = $('#pregnant1').val();
		var lactation = $('#lactation1').val();
		var lactationperdays = $('#lactationperdays1').val();
		var fatmilk = $('#fatmilk1').val();
		
		var t2 = $('#t3').val();
		var Type_eating = $('#Type_eating1').val();
		var Strain = $('#Strain1').val();
		var Unit_energy = $('#Unit_energy1').val();
		var price = $('#price1').val();
		var stage_walk = $('#Stage_walk1').val();
		
		var MsgError=""; 
		if(breed==0){
			MsgError+="กรุณาเลือกสายพันธุ์\n";
		}
		if(weight==""){
			MsgError+="กรุณากรอกน้ำหนักของวัว\n";
		}
		if(addweight==""){
			MsgError+="กรุณากรอกน้ำหนักที่เพิ่มต่อวันของวัว\n";
		}
		if(age==""){
			MsgError+="กรุณากรอกอายุของวัว\n";
		}
		if(pregnant==""){
			MsgError+="กรุณากรอกการตั้งท้องของวัว\n";
		}
		if(lactation==""){
			MsgError+="กรุณากรอกการให้นมครั้งที่ของวัว\n";
		}
		if(lactationperdays==""){
			MsgError+="กรุณากรอกการให้นมต่อวันของวัว\n";
		}
		if(fatmilk==""){
			MsgError+="กรุณากรอกไขมันนม\n";
		}
		if(t2==0){
			MsgError+="กรุณาเลือกหน่วยเยื่อใยอาหาร\n";
		}
		if(Type_eating==0){
			MsgError+="กรุณาเลือกประเภทการกินของวัว\n";
		}
		if(Strain==0){
			MsgError+="กรุณาเลือกความเครียดของวัว\n";
		} 
		if(Unit_energy==0){
			MsgError+="กรุณาเลือกหน่วยพลังงาน\n";
		}
		if(price==""){
			MsgError+="กรุณากรอกราคาน้ำนม\n";
		}
		if(stage_walk==""){
			MsgError+="กรุณากรอกระยะการเดินของวัว\n";
		}
		if(MsgError!=""){
			 swal("ไม่สามารถคำนวณได้", MsgError, "error");

		}else{
			swal("สำเร็จ", "คำนวณสำเร็จ", "success");
		/*--------------------------------โครีดนม------------------------------------------------------*/
		/*---------------------------------วัตถุดิบแห้ง----------------------------------------------------*/
		   
					
					
		var c95 = ((10*((Math.pow(weight,0.75))/(Math.pow(600,0.75))))*(0.74/(0.3512+(fatmilk*0.0962))));	
		var c96 = ((40*((Math.pow(weight,0.75))/(Math.pow(600,0.75))))*(0.74/(0.3512+(fatmilk*0.0962))));
		
		   			if(stage_walk > '0') {
				 		var d85 = (((stage_walk*0.00045)*weight)+(0.08*(Math.pow(weight,0.75))));
			 		}
		   			else {
		   				var d85 = (0.08*(Math.pow(weight,0.75)));
					}
		   			
		   			
		   			if(stage_walk > '0') {
				 		var d86 = ((((stage_walk*0.00045)*weight)+(0.08*(Math.pow(weight,0.75))))*1.1);
			 		}
		   			else{
					 	var d86 = ((0.08*(Math.pow(weight,0.75)))*1.1);
				 	}
		   			
		   			
		   			if(stage_walk > '0') {
				 		var d87 = ((((stage_walk*0.00045)*weight)+(0.08*(Math.pow(weight,0.75))))*1.2);
			 		}
		   			else {
					 	var d87 = ((0.08*(Math.pow(weight,0.75)))*1.2);
				 	}
		   			
		   			
		   			if(Type_eating == '1') {
					 	var e85 = (0);
				 	}
		   			else if(Type_eating == '2') {
					 	var e85 = (0.0012*weight);
				 	}
		    
		   			
		   			if(Strain == '1') {
					 	var a85 = (1);
				 	}
		   			else if(Strain == '2') {
					 	var a85 = (1.07);
				 	}
		   			else if(Strain == '3') {
					 	var a85 = (1.18);
				 	}
		   			
		   			
		   			if(lactation == '1') {
					 	var c85 = ((d87+e85)*a85);
				 	}
		   			
		   			else if(lactation == '2') {
					 	var c85 = ((d86+e85)*a85);
				 	}
		   			
		   			else {
					 	var c85 = ((d85+e85)*a85);
				 	}
		   			
		   			

		   			if(lactationperdays == 0) {
					 	var c97 = (1.25);
				 	}
		   			
		   			else if(lactationperdays < c95) {
					 	var c97 = (1.42);
				 	}
		   			else if(lactationperdays > c96) {
					 	var c97 = (1.72);
				 	}
		   			
		   			else if((lactationperdays >= c95) & (lactationperdays <= c96)){
					 	var c97 = (1.42+((0.01*(lactationperdays-c95))/((((Math.pow(weight,0.75)/Math.pow(600,0.75))*0.74)/(0.3512+(fatmilk*0.0962))))));
				 	}
		   			
		   			var e95 = ((c97+0.12)/2.45);
		   			var e94 = (((0.3512+(fatmilk*0.0962))*lactationperdays)/c97);
		   			
		   			if(pregnant > '210') {
						 var c99 = ((Math.pow(weight,0.75))*0.0106);
					 }
					//ตั้งท้องน้อยกว่า 220
					else if(pregnant < '210') {
						 var c99 = (0);
					 }
		   			
					var e96 = (c85/c97);
					var e100 = (2.26*addweight);
					var e99 = (e94*e95);
					var e98 = (c99);
					var e97 = (e95*e96);
					var e101 = (e97+e98+e99+e100);
					var e102 = (e101/e95);
					
					var d111 = e102.toFixed(2);
					$('.DM2').html(d111);
					
					/* แป้ง */
					 var pow = (e102*25)/100;
					 var d1010 = pow.toFixed(2);
		 /*--------------------------------------------------------------------------------------*/
		  /*------------------------------------------พลังงานNELและTDN--------------------------------------------*/
		  /* NEL */
		  console.log("Prgenant Point");
		  console.log(pregnant);
		  if(pregnant > '210') {
					 var c90 = (0.024*(Math.pow(weight,0.75)));
				 }
	
			if(pregnant < '210') {
					 var c90 = (0);
				 }
			
			if(addweight > '0') {
				 var c91 = (addweight*5.12);
			 }
			if(addweight == '0') {
				 var c91 = (addweight*4.92);
			 }
			
			var c89  = (lactationperdays*(0.3512+(fatmilk*0.0962)));
			var z555 = (c85+c89+c91+c90);
			
			var z556 = e101;
			//nel
			var zz1 = z555.toFixed(2);
			//tdn
			var zz2 = z556.toFixed(2); 
		//nel from choose nel	
		  if(Unit_energy == '1') {
			  
			  var d222 = z555.toFixed(2);
			  var d23 = z555.toFixed(2);
				 	}
		 
		 //tdn from choose tdn
		  if(Unit_energy == '2') {
			  var d222 = z556.toFixed(2);  
			  var d23 = z556.toFixed(2);
				 	}
		
		  $('.TDN2').html(d222);
		  /*--------------------------------------------------------------------------------------*/
		  /*----------------------------------------เยื่อใยNDF&ADF----------------------------------------------*/
		 var g16 = ((28*e102)/100);
		 var g17 = ((21*e102)/100);
		 var d334 = g16.toFixed(2);
		 var d335 = g17.toFixed(2);
		  if(t2 == '1') {
			  var d333 = g16.toFixed(2);
			}
  
  			if(t2 == '2') {
  			  var d333 = g17.toFixed(2);
			}
  
  			
  			$('.NDF2').html(d333);
		  /*--------------------------------------------------------------------------------------*/
		  /*----------------------------------------โปรตีน----------------------------------------------*/
		  
		  if(pregnant > '210') {
					 var h95 = (1.136*(Math.pow(weight,0.7)));
				 }
	
		  else if(pregnant < '210') {
					 var h95 = (0);
				 }
			
		 var c101 = (e101*(1-0.08));
		 var i93 = (d23/c97);
		 var i87 = ((((0.2*(Math.pow(weight,0.6)))+(2.75*(Math.pow(weight,0.5))))/0.67)*1.2);
		 var i86 = ((((0.2*(Math.pow(weight,0.6)))+(2.75*(Math.pow(weight,0.5))))/0.67)*1.1);
		 var i85 = ((((0.2*(Math.pow(weight,0.6)))+(2.75*(Math.pow(weight,0.5))))/0.67)*1);
		 var m91 = (6.25*(-30.93+(11.45*d23)));
		 var m93 = (m91*0.8);
		 var h93 = ((1000*(i93-c101))*0.09);
		 var h96 = (h95/0.5);
		 
		 if((addweight*256) < (-187.5)) {
			 	var h91 = (-187.5);
		 	}
		 
		 else if((addweight*256) > (-187.5)) {
			 	var h91 = (addweight*256);
		 	}
		 
		 
		 var h89 = ((((1.9+(0.4*fatmilk))/100)*(1000*lactationperdays))/0.7);
		
		 if(lactation == '1') {
			 var h85 = (i87);
		 }
		 
		 else if(lactation == '2') {
			 var h85 = (i86);
		 }
		 
		 else {
			 var h85 = (i85);
		 }
		 
		 var m94 = (m93*0.8);
		 var h94 = (h85+h89+h91+h93+h96);
		 var m95 = (h94-m94);
		 var m88 = (m95/0.8);
		 var m92 = (m91/0.9);
		 var k105 = (m88/0.33);
		 var m97 = ((m92+m88)/(1+0.15));
		 var c102 = (0.3512+(fatmilk*0.0962));
		 var c103 = ((Math.pow(weight,0.75))/(Math.pow(600,0.75)));
		 var c95 = ((10*c103)*(0.74/c102));
		 var c96 = ((40*c103)*(0.74/c102));
		 
		 if(lactationperdays == '0') {
			 var c97 = (1.25);
		 }
		 
		 else if(lactationperdays < c95) {
			 var c97 = (1.42);
		 }
		 
		 else if(lactationperdays < c96) {
			 var c97 = (1.72);
		 }
		 
		 var c92 = (c85+c89+c91+c90);
		 var i93 = (c92/c97);
		 
		 if(lactationperdays == 0) {
			 var k106 = ((12*10)*i93);
		 }
		 
		 else if(lactationperdays > 0) {
			 var k106 = (m97+(0.5*(k105-m97)));
		 }
		
		 var k111 = k106/1000
		 var d444 = k111.toFixed(2);
		 $('.Protein2').html(d444);
			
		  /*--------------------------------------------------------------------------------------*/
		  /*--------------------------------------บายพาสโปรตีน------------------------------------------------*/
		  
		  var m888= m88/1000;
		  var d555 = m888.toFixed(2);
			$('.UIP2').html(d555);

		  /*--------------------------------------------------------------------------------------*/
		  /*--------------------------------------------โปรตีนสลายตัว------------------------------------------*/
		  
		  var m98 = (0.15*m97);
		  var m89 = (m92-m98);
		  var m999 = m89/1000;
		  var d666 = m999.toFixed(2);
		  $('.DIP2').html(d666);
			 
		  /*--------------------------------------------------------------------------------------*/
		  /*---------------------------------------แคลเซียม-----------------------------------------------*/
		  
		  if(pregnant > '210') {
					 var d104 = ((1.23*weight)*0.0078);
				 }
		  if(pregnant < '210') {
				 var d104 = (0);
			 }
		  
		  var c81 = (lactationperdays*(0.4+(0.15*fatmilk)));
		  
		  if(lactation == '1') {
				 var c104 = (((((1.2*0.0154)*weight)+(1.22*c81))+d104)/380);
			 }
		  if(lactation == '2') {
				 var c104 = (((((1.1*0.0154)*weight)+(1.22*c81))+d104)/380);
			 }
		  else{
				 var c104 = (((((1*0.0154)*weight)+(1.22*c81))+d104)/380);
			 }
		 
		  var c111= c104*1000;
		  
		  var d777 = c111.toFixed(2);
		  
		  $('.Ca2').html(d777);
		 
		  /*--------------------------------------------------------------------------------------*/
		  /*-----------------------------------------ฟอสฟอรัส---------------------------------------------*/
		  
		  
		  if(pregnant > '210') {
					 var d105 = ((1.23*weight)*0.0047);
				 }
		  if(pregnant < '210') {
				 var d105 = (0);
			 }
		  
		  if(lactation == '1') {
				 var c105 = (((((1.2*0.0143)*weight)+(0.99*c81))+d104)/500);
			 }
		  
		  if(lactation == '2') {
				 var c105 = (((((1.1*0.0143)*weight)+(0.99*c81))+d104)/500);
			 }
		  
		  else{
				 var c105 = (((((1*0.0143)*weight)+(0.99*c81))+d104)/500);
			 }
		  
		  var c222 = c105*1000;
		  var d888 = c222.toFixed(2);
		  $('.P2').html(d888);

		  /*--------------------------------------------------------------------------------------*/
		   /*---------------------------------วิตามิน A-----------------------------------------------------*/
		   
		   var j15 = (weight*76);
		  
		   var d999 = j15.toFixed(2);
		   $('.VitA2').html(d999);
		    /*--------------------------------------------------------------------------------------*/
		 /*--------------------------------------------------------------------------------------*/
		   /* $('#cen2').html("<a href='setrawmaterialdairy?DM="+d111+"&TDN="+d222+"&NDF="+d333+"&Protein="+d444+"&UIP="+d555+"&DIP="+d666+"&Ca="+d777+"&P="+d888+"&VitA="+d999+"&NFC="+d1010+"'>นำไปจัดสัดส่วนอาหาร</a>");			
			 */
		   $('#cen2').html("<a href='setrawmaterialdairy?weight="+weight+"&wpD="+addweight+"&dm="+d111+"&tdn="+zz2+"&nel="+zz1+"&ndf="+d334+"&adf="+d335+"&protein="+d444+"&uip="+d555+"&dip="+d666+"&ca="+d777+"&p="+d888+"&vitA="+d999+"&nfc="+d1010+"&age="+age+"&pregnant="+pregnant+"&lactation="+lactation+"&lactationPerDays="+lactationperdays+"&fatMilk="+fatmilk+"&unitBond="+t2+"&typeEating="+Type_eating+"&strain="+Strain+"&unitEnergy="+Unit_energy+"&priceMilk="+price+"&stageWalk="+stage_walk+"&id="+2+"'>นำไปจัดสัดส่วนอาหาร</a>");
		}
	}
	
	///คำนวณโคแห้งนม
	function cal3(){
		//รับinput พร้อมประกาศตัวแปร
		var breed = $('#breed2').val();
		var weight = $('#weight2').val();
		var addweight = $('#addweight2').val();
		var age = $('#age2').val();
		var pregnant = $('#pregnant2').val();
		var lactation = $('#lactation2').val();
		var lactationperdays = (0);
		var fatmilk = (0);

		var t2 = $('#t4').val();
		var Type_eating = $('#Type_eating2').val();
		var Strain = $('#Strain2').val();
		var Unit_energy = $('#Unit_energy2').val();
		var price = $('#price2').val();
		var stage_walk = $('#Stage_walk2').val();
		
		var MsgError=""; 
		if(breed==0){
			MsgError+="กรุณาเลือกสายพันธุ์\n";
		}
		if(weight==""){
			MsgError+="กรุณากรอกน้ำหนักของวัว\n";
		}
		if(addweight==""){
			MsgError+="กรุณากรอกน้ำหนักที่เพิ่มต่อวันของวัว\n";
		}
		if(age==""){
			MsgError+="กรุณากรอกอายุของวัว\n";
		}
		if(pregnant==""){
			MsgError+="กรุณากรอกการตั้งท้องของวัว\n";
		}
		if(lactation==""){
			MsgError+="กรุณากรอกการให้นมครั้งที่ของวัว\n";
		}
		if(t2==0){
			MsgError+="กรุณาเลือกหน่วยเยื่อใยอาหาร\n";
		}
		if(Type_eating==0){
			MsgError+="กรุณาเลือกประเภทการกินของวัว\n";
		}
		if(Strain==0){
			MsgError+="กรุณาเลือกความเครียดของวัว\n";
		} 
		if(Unit_energy==0){
			MsgError+="กรุณาเลือกหน่วยพลังงาน\n";
		}
		if(price==""){
			MsgError+="กรุณากรอกราคาน้ำนม\n";
		}
		if(stage_walk==""){
			MsgError+="กรุณากรอกระยะการเดินของวัว\n";
		}
		if(MsgError!=""){
			 swal("ไม่สามารถคำนวณได้", MsgError, "error");

		}else{
			swal("สำเร็จ", "คำนวณสำเร็จ", "success");
		/*--------------------------------โคแห้งนม------------------------------------------------------*/
		/*---------------------------------วัตถุดิบแห้ง----------------------------------------------------*/
	
		var c95 = ((10*((Math.pow(weight,0.75))/(Math.pow(600,0.75))))*(0.74/(0.3512+(fatmilk*0.0962))));	
		var c96 = ((40*((Math.pow(weight,0.75))/(Math.pow(600,0.75))))*(0.74/(0.3512+(fatmilk*0.0962))));
		
		   			if(stage_walk > '0') {
				 		var d85 = (((stage_walk*0.00045)*weight)+(0.08*(Math.pow(weight,0.75))));
			 		}
		   			if(stage_walk == '0') {
					 	var d85 = (0.08*(Math.pow(weight,0.75)));
				 	}
		   			
		   			if(stage_walk > '0') {
				 		var d86 = ((((stage_walk*0.00045)*weight)+(0.08*(Math.pow(weight,0.75))))*1.1);
			 		}
		   			if(stage_walk == '0') {
					 	var d86 = ((0.08*(Math.pow(weight,0.75)))*1.1);
				 	}
		   			
		   			if(stage_walk > '0') {
				 		var d87 = ((((stage_walk*0.00045)*weight)+(0.08*(Math.pow(weight,0.75))))*1.2);
			 		}
		   			if(stage_walk == '0') {
					 	var d87 = ((0.08*(Math.pow(weight,0.75)))*1.2);
				 	}
		   			
		   			if(Type_eating == '1') {
					 	var e85 = (0);
				 	}
		   			if(Type_eating == '2') {
					 	var e85 = (0.0012*weight);
				 	}
		    
		   			if(Strain == '1') {
					 	var a85 = (1);
				 	}
		   			if(Strain == '2') {
					 	var a85 = (1.07);
				 	}
		   			if(Strain == '3') {
					 	var a85 = (1.18);
				 	}
		   			
		   			if(lactation == '1') {
					 	var c85 = ((d87+e85)*a85);
				 	}
		   			
		   			if(lactation == '2') {
					 	var c85 = ((d86+e85)*a85);
				 	}
		   			
		   			else{
					 	var c85 = ((d85+e85)*a85);
				 	}
		   			
		   			
		   			if(lactationperdays == '0') {
					 	var c97 = (1.25);
				 	}
		   			
		   			
		   			
		   			var e95 = ((c97+0.12)/2.45);
		   			var e94 = (((0.3512+(fatmilk*0.0962))*lactationperdays)/c97);
		   			
		   			if(pregnant > '210') {
						 var c99 = ((Math.pow(weight,0.75))*0.0106);
					 }
					//ตั้งท้องน้อยกว่า 220
					if(pregnant < '210') {
						 var c99 = (0);
					 }
		   			
					var e96 = (c85/c97);
					var e100 = (2.26*addweight);
					var e99 = (e94*e95);
					var e98 = (c99);
					var e97 = (e95*e96);
					var e101 = (e97+e98+e99+e100);
					var e102 = (e101/e95);
		
					var d111 = e102.toFixed(2);
					$('.DM3').html(d111);
					/* แป้ง */
					 var pow = (e102*25)/100;
					 var d1010 = pow.toFixed(2);
		 /*--------------------------------------------------------------------------------------*/
		  /*------------------------------------------พลังงานNELและTDN--------------------------------------------*/
		  /* NEL */
		  if(pregnant > '210') {
					 var c90 = (0.024*(Math.pow(weight,0.75)));
				 }
	
			if(pregnant < '210') {
					 var c90 = (0);
				 }
			
			if(addweight > '0') {
				 var c91 = (addweight*5.12);
			 }
			if(addweight == '0') {
				 var c91 = (addweight*4.92);
			 }
			
			var c89  = (lactationperdays*(0.3512+(fatmilk*0.0962)));
			var z555 = (c85+c89+c91+c90);
			var z556 = e101;
			
			 var zz1 = z555.toFixed(2);
			 var zz2 = z556.toFixed(2);
		  if(Unit_energy == '1') {
			 
			  var d222 = z555.toFixed(2);
			  var d23 = z555.toFixed(2);
				 	}
		 
		 /* TDN */
		  if(Unit_energy == '2') {
			  
			  var d222 = z556.toFixed(2);
			  var d23 = z556.toFixed(2);
				 	}
		  
		  
		  $('.TDN3').html(d222);
		  /*--------------------------------------------------------------------------------------*/
		  /*----------------------------------------เยื่อใยNDF&ADF----------------------------------------------*/
		  var g16 = ((28*e102)/100);
		  var g17 = ((21*e102)/100);
		  var d334 = g16.toFixed(2);
		  var d335 = g17.toFixed(2);
		  if(t2 == '1') {
			  var d333 = g16.toFixed(2);
			}
  
  			if(t2 == '2') {
  			  var d333 = g17.toFixed(2);	 
			}
  
  			
			 $('.NDF3').html(d333);
		  /*--------------------------------------------------------------------------------------*/
		  /*----------------------------------------โปรตีน----------------------------------------------*/
		   
		  if(pregnant > '210') {
					 var h95 = (1.136*(Math.pow(weight,0.7)));
				 }
	
		  else if(pregnant < '210') {
					 var h95 = (0);
				 }
			
		 var c101 = (e101*(1-0.08));
		 var i93 = (d23/c97);
		 var i87 = ((((0.2*(Math.pow(weight,0.6)))+(2.75*(Math.pow(weight,0.5))))/0.67)*1.2);
		 var i86 = ((((0.2*(Math.pow(weight,0.6)))+(2.75*(Math.pow(weight,0.5))))/0.67)*1.1);
		 var i85 = ((((0.2*(Math.pow(weight,0.6)))+(2.75*(Math.pow(weight,0.5))))/0.67)*1);
		 var m91 = (6.25*(-30.93+(11.45*d23)));
		 var m93 = (m91*0.8);
		 var h93 = ((1000*(i93-c101))*0.09);
		 var h96 = (h95/0.5);
		 
		 if((addweight*256) < (-187.5)) {
			 	var h91 = (-187.5);
		 	}
		 
		 else if((addweight*256) > (-187.5)) {
			 	var h91 = (addweight*256);
		 	}
		 
		 
		 var h89 = ((((1.9+(0.4*fatmilk))/100)*(1000*lactationperdays))/0.7);
		
		 if(lactation == '1') {
			 var h85 = (i87);
		 }
		 
		 else if(lactation == '2') {
			 var h85 = (i86);
		 }
		 
		 else{
			 var h85 = (i85);
		 }
		 
		 var m94 = (m93*0.8);
		 var h94 = (h85+h89+h91+h93+h96);
		 var m95 = (h94-m94);
		 var m88 = (m95/0.8);
		 var m92 = (m91/0.9);
		 var k105 = (m88/0.33);
		 var m97 = ((m92+m88)/(1+0.15));
		 var c102 = (0.3512+(fatmilk*0.0962));
		 var c103 = ((Math.pow(weight,0.75))/(Math.pow(600,0.75)));
		 var c95 = ((10*c103)*(0.74/c102));
		 var c96 = ((40*c103)*(0.74/c102));
		 
		 if(lactationperdays == '0') {
			 var c97 = (1.25);
		 }
		 
		 else if(lactationperdays < c95) {
			 var c97 = (1.42);
		 }
		 
		 else if(lactationperdays < c96) {
			 var c97 = (1.72);
		 }
		 
		 var c92 = (c85+c89+c91+c90);
		 var i93 = (c92/c97);
		 
		 if(lactationperdays == 0) {
			 var k106 = ((12*10)*i93);
		 }
		 
		 else if(lactationperdays > 0) {
			 var k106 = (m97+(0.5*(k105-m97)));
		 }

		 var k111 = k106/1000;
		 var d444 = k111.toFixed(2);
		 $('.Protein3').html(d444);
		  /*--------------------------------------------------------------------------------------*/
		  /*--------------------------------------บายพาสโปรตีน------------------------------------------------*/
		  
		  var m444 = m88/1000;
		  var d555 = m444.toFixed(2);
		  $('.UIP3').html(d555);
		  
		  /*--------------------------------------------------------------------------------------*/
		  /*--------------------------------------------โปรตีนสลายตัว------------------------------------------*/
		  
		  var m98 = (0.15*m97);
		  var m89 = (m92-m98);
		  
		  var m555 = m89/1000;
		  var d666 = m555.toFixed(2);
		  $('.DIP3').html(d666);
			 
		  /*--------------------------------------------------------------------------------------*/
		  /*---------------------------------------แคลเซียม-----------------------------------------------*/
		  
		  if(pregnant > '210') {
					 var d104 = ((1.23*weight)*0.0078);
				 }
		  if(pregnant < '210') {
				 var d104 = (0);
			 }
		  
		  var c81 = (lactationperdays*(0.4+(0.15*fatmilk)));
		  
		  if(lactation == '1') {
				 var c104 = (((((1.2*0.0154)*weight)+(1.22*c81))+d104)/380);
			 }
		  if(lactation == '2') {
				 var c104 = (((((1.1*0.0154)*weight)+(1.22*c81))+d104)/380);
			 }
		  else{
				 var c104 = (((((1*0.0154)*weight)+(1.22*c81))+d104)/380);
			 }
		 
		  
		  var c111 = c104*1000;
		  var d777 = c111.toFixed(2);
		  $('.Ca3').html(d777);
		 
		  /*--------------------------------------------------------------------------------------*/
		  /*-----------------------------------------ฟอสฟอรัส---------------------------------------------*/
		  
		  
		  if(pregnant > '210') {
					 var d105 = ((1.23*weight)*0.0047);
				 }
		  if(pregnant < '210') {
				 var d105 = (0);
			 }
		  
		  if(lactation == '1') {
				 var c105 = (((((1.2*0.0143)*weight)+(0.99*c81))+d104)/500);
			 }
		  
		  if(lactation == '2') {
				 var c105 = (((((1.1*0.0143)*weight)+(0.99*c81))+d104)/500);
			 }
		  
		  else{
				 var c105 = (((((1*0.0143)*weight)+(0.99*c81))+d104)/500);
			 }
		  
		  var c222 = c105*1000;
		  var d888 = c222.toFixed(2);
		  $('.P3').html(d888);

		  /*--------------------------------------------------------------------------------------*/
		   /*---------------------------------วิตามิน A-----------------------------------------------------*/
		   
		   var j15 = (weight*76);
		  
		   var d999 = j15.toFixed(2);
		   $('.VitA3').html(d999);
		    /*--------------------------------------------------------------------------------------*/
		 /*--------------------------------------------------------------------------------------*/
		   /* $('#cen3').html("<a href='setrawmaterialdairy?DM="+d111+"&TDN="+d222+"&NDF="+d333+"&Protein="+d444+"&UIP="+d555+"&DIP="+d666+"&Ca="+d777+"&P="+d888+"&VitA="+d999+"&NFC="+d1010+"'>นำไปจัดสัดส่วนอาหาร</a>");			
			 */
		   $('#cen3').html("<a href='setrawmaterialdairy?weight="+weight+"&wpD="+addweight+"&dm="+d111+"&tdn="+zz2+"&nel="+zz1+"&ndf="+d334+"&adf="+d335+"&protein="+d444+"&uip="+d555+"&dip="+d666+"&ca="+d777+"&p="+d888+"&vitA="+d999+"&nfc="+d1010+"&age="+age+"&pregnant="+pregnant+"&lactation="+lactation+"&lactationPerDays="+lactationperdays+"&fatMilk="+fatmilk+"&unitBond="+t2+"&typeEating="+Type_eating+"&strain="+Strain+"&unitEnergy="+Unit_energy+"&priceMilk="+price+"&stageWalk="+stage_walk+"&id="+3+"'>นำไปจัดสัดส่วนอาหาร</a>");		
		}
	}
	
	//คำนวณโคผู้
	function cal4(){
		//รับinput พร้อมประกาศตัวแปร
		var breed = $('#breed3').val();
		var weight = $('#weight3').val();
		var addweight = $('#addweight3').val();
		var age = $('#age3').val();
		var pregnant = (0);
		var lactation = "";
		var lactationperdays = "";
		var fatmilk = "";
		
		var t2 = $('#t5').val();
		var Type_eating = $('#Type_eating3').val();
		var Strain = $('#Strain3').val();
		var Unit_energy = "";
		var price = "";
		var stage_walk = "";
		
		var MsgError=""; 
		if(breed==0){
			MsgError+="กรุณาเลือกสายพันธุ์\n";
		}
		if(weight==""){
			MsgError+="กรุณากรอกน้ำหนักของวัว\n";
		}
		if(addweight==""){
			MsgError+="กรุณากรอกน้ำหนักที่เพิ่มต่อวันของวัว\n";
		}
		if(age==""){
			MsgError+="กรุณากรอกอายุของวัว\n";
		}
		if(t2==0){
			MsgError+="กรุณาเลือกหน่วยเยื่อใยอาหาร\n";
		}
		if(Type_eating==0){
			MsgError+="กรุณาเลือกประเภทการกินของวัว\n";
		}
		if(Strain==0){
			MsgError+="กรุณาเลือกความเครียดของวัว\n";
		} 
		if(MsgError!=""){
			 swal("ไม่สามารถคำนวณได้", MsgError, "error");

		}else{
			swal("สำเร็จ", "คำนวณสำเร็จ", "success");
/* ---------------------------------------โคผู้------------------------------------------------------ */
/*-----------------------------------วัตถุดิบแห้ง-----------------------------------------------*/
			 if(Type_eating == '1') {
				 var tt1 = (Math.pow(weight,0.75));
				 var g28 = (0.086*tt1);
			 }
			//ประเภทการกิน แทะ
			else if(Type_eating == '2') {
				 var tt1 = (Math.pow(weight,0.75));
				 var g28 = ((0.086*tt1)+(0.00045*2*weight));
			 }
			 
			 //ความเครียด ไม่มี
			 if(Strain == '1') {	 
				 var f28 = (1);
			 }
			//ความเครียด เริ่มหอบ
			else if(Strain == '2') {
				 var f28 = (1.07); 
			 }
			//ความเครียด อ้าปาก
			else if(Strain == '3') {
				 var f28 = (1.18);
			 }
			
			//พันธุ์ แท้
			if(breed == '1') {
				 var d29 = (f29);
				 var d30 = (weight/1000);
			 }
			
			
			//พันธุ์ ผสม
			else if(breed == '2') {
				 var d30 = (weight/800);
			 }
			 
			 var d26 = (addweight*1000); 
			 var d31 = (2.67-0.67*((d30-0.125)/(0.75-0.125)));
			 var tt3 = (Math.pow(d31,2));
			 var e31 = (tt3);
			 var tt4 = (Math.pow(d31,3));
			 var f31 = (tt4);
			 var tt5 = (Math.pow((d26/1000),1.097));
			 var f29 = ((0.025*tt1*tt5)+(d26/1000));
			 var e29 = ((0.035*tt1*tt5)+(d26/1000));
			 
				//พันธุ์ แท้
				if(breed == '1') {
					 var d29 = (f29);
				 }
			 
			//พันธุ์ ผสม
				else if(breed == '2') {
					 var d29 = (e29);
				 }
			 
			 var d28 = (g28*f28);
			 var d32 = ((((1.37*d31)-(0.138*e31))+(0.0105*f31))-1.12);
			 var d33 = ((1.42*d31)-(0.174*e31)+(0.0122*f31)-1.65); 
			 var d34 = (d28/d32);
			 var d35 = (d29/d33);

			 var d36 = ((d34*1)+(d35*1)); 
			 
			 var d111 = d36.toFixed(2);
			 
			 /* แป้ง */
			 var pow = (d36*25)/100;
			 var d1010 = pow.toFixed(2); 
			 
			 $('.DM4').html(d111);
			 
 /*--------------------------------------------------------------------------------------*/
 /*-----------------------------------พลังงานTDN-----------------------------------------------*/
 			
			var d37 = ((d31+0.45)/1.01);
 			var d40 =(0.0106*tt1);
 			var d38 =(d36*d37);
 			
 			//ตั้งท้องมากกว่า 220
 			if(pregnant > '210') {
				 var d39 = ((d38/4.409)+d40);
			 }
 			//ตั้งท้องน้อยกว่า 220
 			else {
				 var d39 = ((d38/4.409));
			 }
 			
 			var d222 = d39.toFixed(2);
 			$('.TDN4').html(d222);
 
  /*--------------------------------------------------------------------------------------*/
  /*-----------------------------------เยื่อใยNDFและADF-----------------------------------------------*/
 			var g16 = ((28*d36)/100);
 			var g17 = ((21*d36)/100);
 			var d334 = g16.toFixed(2);
 			var d335 = g17.toFixed(2);
  			if(t2 == '1') {
  				var d333 = g16.toFixed(2);
			}
  
  			if(t2 == '2') {
  				var d333 = g17.toFixed(2); 
			}
  
  			
  			$('.NDF4').html(d333);
  /*--------------------------------------------------------------------------------------*/
	/*-----------------------------------โปรตีน-----------------------------------------------*/
			 
	  			var e65 = ((d36*0.12)*1000);
	  			var a01 = (e65/1000);
	  			
	  			var d444 = a01.toFixed(2);
	  			$('.Protein4').html(d444);
	  /*--------------------------------------------------------------------------------------*/
	  /*-----------------------------------บายพาสโปรตีน-----------------------------------------------*/
	 
	  			var d26 = (addweight*1000);
	  			var d45 = ((Math.pow(weight,0.6))*0.2);
	  			var d46 = ((Math.pow(weight,0.5))*2.75);
	  			var d54 = (6.25*(-31.86+(26.12*d39)));
	  		//น้ำหนักเพิ่มวันละ=0
	 			if(d26 == '0') {
					 var d51 = (0);
				 }
	 		//น้ำหนักเพิ่มวันละ>0
	 			if(d26 > '0') {
					 var d51 = ((211-26.2*(d29/(d26/1000)))*d26/1000);
				 }
	 			var d67 = ((Math.pow(weight,0.7))*1.136);
	  			var d44 = (d36-(d39*(1-0.08)));
	  			var d48 = (d46/0.67);
	  			var d47 = (d45/0.67);
	  			var f49 = ((d47+d48)*1.1);
	  			var e49 = (d47+d48);
	  			var d56 = (d54*0.8);
	  			var d52 = (d51/0.65);
	  			var d68 = (d67/0.5);
	  			var d50 = ((1000*d44)*0.09);
	  			
	  			if(age < '2.5') {
					 var d49 = ((d47+d48)*1.2);
				}
	  			
	  			if(age > '3.5') {
					 var d49 = (e49);
				}
	  			if((age >= '2.5') & (age <= '3.5')) {
					 var d49 = (f49);
				} 
	  			
	  			var d57 = (d56*0.8);
	  			
	  			if(pregnant > '210') {
					 var d53 = (d49+d50+d68+d52);
				 }
				//ตั้งท้องน้อยกว่า 220
				if(pregnant < '210') {
					 var d53 = (d49+d50+d52);
				 }
	  			
				var d58 = (d53-d57);
				var d59 = (d58/0.8);
				var a02 = (d59/1000);
				
				var d555 = a02.toFixed(2);
				$('.UIP4').html(d555);
	  /*--------------------------------------------------------------------------------------*/
	   /*-----------------------------โปรตีนสลายตัว---------------------------------------------------------*/
	   			 
	   			var d55 = (d54/0.9);
	   			var d60 = ((d55+d59)/(1+0.15));
	   			var d61 = (0.15*d60);
	   			var d62 = (d55-d61);
	   			var a03 = (d62/1000);
	   
	   			var d666 = a03.toFixed(2);
	   			$('.DIP4').html(d666);
	    /*--------------------------------------------------------------------------------------*/
	    
	   			
	     /*-----------------------------แคลเซียม---------------------------------------------------------*/
	   			 
	   			if(weight < '250') {
					 var b110 = ((8+(0.0367*weight))+((0.00848*addweight)*1000));
				 }
	    
	   			if(weight > '400') {
					 var b110 = ((25.4+(0.00092*weight))+((0.00361*addweight)*1000));
				 }
	   
	   			if((weight >= '250') & (weight <= '400')) {
					 var b110 = ((13.4+(0.0184*weight))+((0.00717*addweight)*1000));
				} 
	   			
	   			var d777 = b110.toFixed(2);
	   			$('.Ca4').html(d777);
	    /*--------------------------------------------------------------------------------------*/
	     /*-----------------------------ฟอสฟอรัส---------------------------------------------------------*/
	   			 
	   			if(weight < '250') {
					 var c110 = ((0.884+(0.05*weight))+((0.00486*addweight)*1000));
				 }
	    
	   			if(weight > '400') {
					 var c110 = ((13.5+(0.00207*weight))+((0.00829*addweight)*1000));
				 }
	   
	   			if((weight >= '250') & (weight <= '400')) {
					 var c110 = ((7.27+(0.0215*weight))+((0.00602*addweight)*1000));
				} 

	   			var d888 = c110.toFixed(2);
	   			$('.P4').html(d888);
	    /*--------------------------------------------------------------------------------------*/
	    /*-----------------------------ฟอสฟอรัส---------------------------------------------------------*/
	   			 
	   			var j15 = (weight*42.4);
	    
	   			var d999 = j15.toFixed(2);
	   			$('.VitA4').html(d999);
	    /*--------------------------------------------------------------------------------------*/
	   /*--------------------------------------------------------------------------------------*/
	   				
	   /* $('#cen4').html("<a href='setrawmaterialdairy?DM="+d111+"&TDN="+d222+"&NDF="+d333+"&Protein="+d444+"&UIP="+d555+"&DIP="+d666+"&Ca="+d777+"&P="+d888+"&VitA="+d999+"&NFC="+d1010+"'>นำไปจัดสัดส่วนอาหาร</a>");			
		 */
	   			$('#cen4').html("<a href='setrawmaterialdairy?weight="+weight+"&wpD="+addweight+"&dm="+d111+"&tdn="+d222+"&nel="+""+"&ndf="+d334+"&adf="+d335+"&protein="+d444+"&uip="+d555+"&dip="+d666+"&ca="+d777+"&p="+d888+"&vitA="+d999+"&nfc="+d1010+"&age="+age+"&pregnant="+pregnant+"&lactation="+lactation+"&lactationPerDays="+lactationperdays+"&fatMilk="+fatmilk+"&unitBond="+t2+"&typeEating="+Type_eating+"&strain="+Strain+"&unitEnergy="+Unit_energy+"&priceMilk="+price+"&stageWalk="+stage_walk+"&typeid="+4+"&statusid="+breed+"'>นำไปจัดสัดส่วนอาหาร</a>");		
		}		
	}
	
	
	function keyok(id){
		
	}
	</script>

</body>
</html>