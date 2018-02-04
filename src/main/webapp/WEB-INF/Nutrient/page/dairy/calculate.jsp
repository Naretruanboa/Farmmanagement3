<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<title>คำนวณอาหารข้นราคาต่ำสุด</title>
<style>
	.table-responsive.hill {
		max-height: 300px;
	}
	.fixed{
  top:0;
  position:fixed;
  width:auto;
  display:none;
  border:none;
}
body{
  font:1.2em normal Arial,sans-serif;
  color:#34495E;
}

h1{
  text-align:center;
  text-transform:uppercase;
  letter-spacing:-2px;
  font-size:2.5em;
  margin:20px 0;
}

.container{
  width:90%;
  margin:auto;
}

table{
  border-collapse:collapse;
  width:100%;
}

.blue{
  border:2px solid #1ABC9C;
}

.blue thead{
  background:#1ABC9C;
}

.purple{
  border:2px solid #9B59B6;
}

.purple thead{
  background:#9B59B6;
}

thead {
  color:black;
}

th,td{
  text-align:center;
  padding:5px 0;
}

tbody tr:nth-child(even){
  background:#ECF0F1;
}

tbody tr td:hover{
background:#BDC3C7;
  color:black;
}

.fixed{
  top:0;
  position:fixed;
  width:auto;
  display:none;
  border:none;
}

.scrollMore{
  margin-top:600px;
}

.up{
  cursor:pointer;
}
	
</style>
</head>
<body>

<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>

	

<%int i=1; %>

<jsp:include page="../menu.jsp"/>
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
					 <div align="right">
						<br>
						<label style=" color: red;"> ข้อควรระวัง</label>
						<label>&nbsp&nbsp&nbsp*** วัวเด็กไม่สามารถใช้ยูเรียในการผสมได้</label>
						<label>&nbsp&nbsp&nbsp*** วัวโตห้ามใช้ยูเรียเกิน 2% ของน้ำหนักตัว</label>
					 </div>
				</div>
		 </div>

<%--------------------------------------------------------------------------------------------------------------%>

			  <div class="col-md-12">
				
					 <div class="panel panel-primary">
						 <div class="panel-heading">
							 <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
						 </div>
						 <div class="table-responsive">
							 <div class="panel-body">
								 <br>
								
		<table class="table table-striped table-hover" cellspacing="0" cellpadding="0" border="0" width="auto">
  <tr>
    <td>
       <table class="table table-striped table-hover" cellspacing="0" cellpadding="0" border="0" width="auto" >
         <tr >
           								 <th width="11%">ชื่อวัติถุดิบ</th>
										 <th width="7%">วัตถุดิบเเห้ง(%)</th>
										 <th width="7%">โปรตีน(%)</th>
										 <th width="7.2%">TDN</th>
										 <th width="7.2%">NDF</th>
										 <th width="7.2%">ADF</th>
										 <th width="7.2%">แคลเซียม(%)</th>
										 <th width="7%">ฟอสฟอรัส(%)</th>
										 <th width="6.8%">แป้ง(%)</th>
										 <th>%บายพาสโปรตีน</th>
										 <th width="6.8%">%โปรตีนสลายตัว</th>
										 <th>วิตามิน เอ (IU/กก.)</th> 
										 <th>วิตามิน อี (IU/กก.)</th>
         </tr>
       </table>
    </td>
  </tr>
  <tr>
    <td>
       <div style="width:auto; height:200px; overflow:auto;">
         <table class="table table-striped table-hover" cellspacing="0" cellpadding="0" border="0" width="auto" id="addtabel_po">
           <tbody></tbody>
         </table>  
       </div>
    </td>
  </tr>
</table>
								 <div class="row form-group" id="page" align="center"></div>
						 </div>
							
					 </div>
			  </div>

				 <%--------------------------------------------- รับค่าวัตถุดิบเเละแสดงราคา วัตถุดิบ แต่ล่ะ ชนิด ---------------------------------------------------%>
		<div class="col-md-7">
				<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 18px; color: white;">
							<i class="fa fa-cart-plus"></i>&nbsp;กำหนดน้ำหนักของวัตถุดิบ
						</h3>
					</div>
					<div class="table-responsive">
						<div class="panel-body">
							<form action="rawmaterialprice" method="POST"  id="rawmaterialprice" >
								<center>
									<div class="row form-group">
										<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" 
										border="0" bordercolor="#BDBDBD" id="addtabel" >
											<thead >
											<tr>
												<th>ชื่อวัตถุดิบ</th>
												<th>น้ำหนักต่ำสุด </th>
												<th>น้ำหนักสูงสุด  </th>
												<th width="120px">ปริมาณที่คำนวณได้</th>
												<th>ราคา(บาท/กก.)</th>
											</tr>
											</thead>
										</table>							
										<input id="ee1" size="10" name="ee1" type="hidden" >
										<input id="ee2" size="10" name="ee2" type="hidden" >
										<input id="ee3" size="10" name="ee3" type="hidden" >
										<input id="ee4" size="10" name="ee4" type="hidden" >
										<input id="ee5" size="10" name="ee5" type="hidden" >
										<input id="ee6" size="10" name="ee6" type="hidden" >
										<input id="IDR1" name="IDR1" type="hidden" value="${IDR[id] }">
										<input id="hh1" name="hh1" size="10" type="hidden" value="${hh[id] }">
									</div>
								</center>

							</form>
						</div>
					</div>

				</div>
				
				<button type="button" onclick='addtabelvi();addtabelpo()'>Add few more Rows!</button>
				<button type="button" onclick='subtable()'>Sub Table </button>
				
			</div>

 <!-- รับค่าโภชน  ที่ี users ต้องการ -->

			<div class="col-md-5">
				<div class="panel panel-primary"
							style="font-size: 18px; color: black;">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 18px; color: white;">
							<i class="fa fa-cart-plus"></i>&nbsp;กำหนดคุณทางโภชนะวัตถุดิบ
						</h3>
					</div>
					<div class="table-responsive">

						<div class="panel-body table-responsive">

							<center>
								<div class="row form-group">
									<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;"
									 border="0" bordercolor="#BDBDBD"  >
										<thead >

										<tr>
											<th>โภชนะ</th>
											<!-- <th>น้ำหนักต่ำสุด </th> -->
											<th>ปริมาณที่ต้องการ</th>
											<th>ค่าที่คำนวณได้ </th>
										</tr>

										<!-- เปลี่ยนจาก hh -> hu -->
										<tr height="51.5" style="font-size: 18px">
											<th>วัตถุดิบแห้ง(%)</th>
											<%-- <th><input id="low_po0" size="10" type="text" value="${hu[0] }" placeholder="0"><br></th> --%>
											<th><input id="high_po0" size="10" type="text" value="${hh[0] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd0" size="10" name="dd1" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>โปรตีน(%)</th>
											<%-- <th><input id="low_po1" size="10" type="text" value="${hu[1] }" placeholder="0"><br></th> --%>
											<th><input id="high_po1" size="10" type="text" value="${hh[1] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd1" size="10" name="dd2" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>พลังงาน TDN</th>
											<%-- <th><input id="low_po2" size="10" type="text" value="${hu[2] }" placeholder="0"><br></th> --%>
											<th><input id="high_po2" size="10" type="text" value="${hh[2] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd2" size="10" name="dd3" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>เยื่อใย NDF</th>
											<%-- <th><input id="low_po3" size="10" type="text" value="${hu[3] }" placeholder="0"><br></th> --%>
											<th><input id="high_po3" size="10" type="text" value="${hh[3] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd3" size="10" name="dd4" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>ADF</th>
											<%-- <th><input id="low_po4" size="10" type="text" value="${hu[4] }" placeholder="0"><br></th> --%>
											<th><input id="high_po4" size="10" type="text" value="${hh[4] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd4" size="10" name="dd4" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>แคลเซียม(%)</th>
											<%-- <th><input id="low_po5" size="10" type="text" value="${hu[5] }" placeholder="0"><br></th> --%>
											<th><input id="high_po5" size="10" type="text" value="${hh[5] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd5" size="10" name="dd4" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>ฟอสฟอรัส(%)</th>
											<%-- <th><input id="low_po6" size="10" type="text" value="${hu[6] }" placeholder="0"><br></th> --%>
											<th><input id="high_po6" size="10" type="text" value="${hh[6] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd6" size="10" name="dd4" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>แป้ง(%)</th>
											<%-- <th><input id="low_po7" size="10" type="text" value="${hu[7] }" placeholder="0"><br></th> --%>
											<th><input id="high_po7" size="10" type="text" value="${hh[7] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd7" size="10" name="dd4" type="text" ><br></th>

										</tr>

										<%-- <tr height="51.5" style="font-size: 16px">
											<th>%บายพาสโปรตีน</th>
											<th><input id="low_po8" size="10" type="text" value="${hu[8] }" placeholder="0"><br></th>
											<th><input id="high_po8" size="10" type="text" value="${hh[8] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd8" size="10" name="dd4" type="text" ><br></th>
										</tr>

										<tr height="51.5" style="font-size: 18px">
											<th>%โปรตีนสลายได้</th>
											<th><input id="low_po9" size="10" type="text" value="${hu[9] }" placeholder="0"><br></th>
											<th><input id="high_po9" size="10" type="text" value="${hh[9] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd9" size="10" name="dd4" type="text" ><br></th>
										</tr> --%>

										<tr height="51.5" style="font-size: 18px">
											<th>วิตามิน เอ</th>
											<%-- <th><input id="low_po10" size="10" type="text" value="${hu[10] }" placeholder="0"><br></th> --%>
											<th><input id="high_po10" size="10" type="text" value="${hh[10] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd10" size="10" name="dd5" type="text" ><br></th>
										</tr>
										
										<tr height="51.5" style="font-size: 18px">
											<th>วิตามิน อี</th>
											<%-- <th><input id="low_po11" size="10" type="text" value="${hu[11] }" placeholder="0"><br></th> --%>
											<th><input id="high_po11" size="10" type="text" value="${hh[11] }" placeholder="100"><br></th>
											<th><input readonly="true" id="dd11" size="10" name="dd6" type="text" ><br></th>
										</tr>
										
										</thead>
										
											<%-- <th><input id="low_po11" size="10" type="number" value="${hu[11] }" placeholder="0"><br></th>
											<th><input id="high_po11" size="10" type="number" max="100" value="${hh[11] }" placeholder="100"><br></th> --%>

									</table>
									<h5>ปริมาณรวม  : <input  readonly="true"  id="total1" name="total1" size="8" type="text"> กิโลกรัม &nbsp;&nbsp;</h5>
									<h5>ราคาเฉลี่ยรวม  : <input  readonly="true" id="price1" name="price1" size="8" type="text"> บาท/กิโลกรัม</h5>
								</div>
							</center>
						</div>
					</div>
				</div>
					<div class="col-md-12" align="center">
						<button class="btn btn-success" id="calraw_sum" onclick="cal_quantity()">ทำการคำนวณหาค่าปริมาณ</button>
						&nbsp;
						<!-- <button class="btn btn-success" id="cen1" onclick="cal_Nutrition()">ทำการรวมค่าทางโภชนะ</button> -->
						<button type="button" class="btn btn-default btn-lg" id="addcalformula" onclick="addcalformula()">บันทึกสูตร</button>
						&nbsp;
					</div>
			</div>

</div>

	
	<jsp:include page="../footer.jsp" />
	
	
  <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

	<script type="text/javascript">
	
	var mat_arr = [];
	var mat_arr_each = [];

	var id_list_mat_po = 0;
	var id_list_mat = 0;
	var select_arr = [];
	
	var list_rawid = [];
	var list_rawid_buffer = [];
	var list_rawid_sp = [];
	
	var list_priceid = [];
	
	var raw_optimize;

	var test_arr = `<c:forEach items="${rawlist}" var="group">
		<c:if test="${group.typeMaterial.id == 2}">
			<c:if test="${IDR[id] != group.id }">
				[${group.id},"${group.name}"],
			</c:if>
		</c:if>
	</c:forEach>`;
	test_arr = test_arr.replace(/\s+/g, '');
	test_arr = test_arr.slice(0,-1);
	list_rawid = JSON.parse("["+test_arr+"]");
	list_rawid_buffer = JSON.parse("["+test_arr+"]");
	
	
/* 	$.ajax({
		url: "helloJson",
		type: "post",
		contentType: "application/json",
		data: JSON.stringify({"param": [555, 666]}),
		dataType: "json",
		success:function(kk) {
			console.log(kk);
		}
	}); */
	
//$('#cen1').html("<a href='calculatedairywithParam?param="+price[i]+"&G="+arr_sum+"&dim="+[i]+"&idR="+id_r[i]+"&h="+high_po[i]+"&h=-100.0&lb="+low_raw[i]+"&ub="+high_raw[i]+"'>ทำการคำนวณหาค่าปริมาณ</a>");
	var sum_optimize = 0; 
	var price_cal = [];
	var sum_price_cal = 0;
	var sumraw_sh_po_dm = 0;
	var sumraw_sh_po_protein = 0;
	var sumraw_sh_po_tdn = 0;
	var sumraw_sh_po_ndf = 0;
	var sumraw_sh_po_adf = 0;
	var sumraw_sh_po_ca = 0;
	var sumraw_sh_po_p = 0;
	var sumraw_sh_po_nfc = 0;
	var sumraw_sh_po_uip = 0;
	var sumraw_sh_po_dip = 0;
	var sumraw_sh_po_vitA= 0;
	var sumraw_sh_po_vitE = 0;
	
	var raw_sh_po = [];
	$(document).on('click','#calraw_sum',function(e){ //id of button
		var data = cal_quantity();
	
		/* var result_sum = {"param":price,"G":arr_sum,"dim":price.length,"idR":id_r,"h":high_po,"lb":low_raw,"ub":high_raw}; */
		var result_sum = {"param":data[0],"gg":data[1],"dim":data[2],"idr":data[3],"height":data[4],"lb":data[5],"ub":data[6]};
		$.ajax({
			url:"helloJson", //send to controller
			method:"POST",
			contentType: "application/json",
			data: JSON.stringify(result_sum),
			dataType: "json",
			success:function (callback) {
				console.log("callback_f : ",callback);
				
				sum_optimize=0;
					raw_optimize =  callback.result;
					console.log("ค่าวัตถุดิบ_optimize : ",raw_optimize);
					MsgError = "";
					MsgError+="ปริมาณรวมควรไม่เกิน 100 กิโลกรัม\n หรือคุณค่าทางโภชนะยังไม่พอ กรุณาเลือกวัตถุดิบใหม่ \nหรือลดค่าคุณค่าที่ต้องการ";
					for(var i=0;i<raw_optimize.length;i++){
						sum_optimize += raw_optimize[i];
						if(sum_optimize > 101){
							swal("คำนวณไม่สำเร็จ",MsgError, "error");
						}else
							swal("สำเร็จ", "ทำการรวมสำเร็จ", "success");
						}
					console.log("ผลรวมน้ำหนัก 100 : ",sum_optimize);
					$( "#total1" ).val((sum_optimize));
					var data=cal_quantity();
					var price = data[0];
					var arr_sum = data[1];
					console.log("price :",price);
					console.log("arr_sum_po:",arr_sum);
					
					sum_price_cal=0;
					//ราคาเฉลี่ยวัตถุดิ	
					for (var j=0; j<raw_optimize.length; j++){
						sum_price_cal += (raw_optimize[j]*price[j])/100;
						//console.log("Show_pcal",sum_price_cal[j]);
					}
						//sum_price_cal += price_cal[j] ;	
						console.log("ราคาเฉลี่ยรวม : ",sum_price_cal);
					$( "#price1" ).val((sum_price_cal));
					
					for (var i=0; i< raw_optimize.length; i++) {				
						$("#solve"+(i+1)).val(Math.round(raw_optimize[i]));
						//console.log("solve:",raw_optimize[i]);
					}
					
					sumraw_sh_po_dm=0;
					// sum raw_optimize && dm
					for (var i=0; i< raw_optimize.length; i++) {
							var raw_dm =[];
							raw_dm[i] = parseFloat($('#dm'+(i+1)).val());
							console.log("raw_sh_po dm:",raw_sh_po[i+1]); 
							sumraw_sh_po_dm += (Math.round(raw_optimize[i])*(raw_dm[i]))/100;
					}
					
					sumraw_sh_po_protein=0;
					// sum raw_optimize && protein	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_protein=[];
						raw_protein[i] = parseFloat($('#protein'+(i+1)).val());
						sumraw_sh_po_protein += (Math.round(raw_optimize[i])*(raw_protein[i]))/100;
					}
					
					sumraw_sh_po_tdn=0;
					// sum raw_optimize && tdn	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_tdn=[];
						raw_tdn[i] = parseFloat($('#tdn'+(i+1)).val());
						sumraw_sh_po_tdn += (Math.round(raw_optimize[i])*(raw_tdn[i]))/100;
					}
					
					sumraw_sh_po_ndf=0;
					// sum raw_optimize && ndf	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_ndf=[];
						raw_ndf[i] = parseFloat($('#ndf'+(i+1)).val());
						sumraw_sh_po_ndf += (Math.round(raw_optimize[i])*(raw_ndf[i]))/100;
					}
					
					sumraw_sh_po_adf=0;
					// sum raw_optimize && adf	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_adf=[];
						raw_adf[i] = parseFloat($('#adf'+(i+1)).val());
						sumraw_sh_po_adf += (Math.round(raw_optimize[i])*(raw_adf[i]))/100;
					}
					
					sumraw_sh_po_ca=0;
					// sum raw_optimize && ca	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_ca=[];
						raw_ca[i] = parseFloat($('#ca'+(i+1)).val());
						sumraw_sh_po_ca += (Math.round(raw_optimize[i])*(raw_ca[i]))/100;
					}
					
					sumraw_sh_po_p=0;
					// sum raw_optimize && p	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_p=[];
						raw_p[i] = parseFloat($('#p'+(i+1)).val());
						sumraw_sh_po_p += (Math.round(raw_optimize[i])*(raw_p[i]))/100;
					}
					
					sumraw_sh_po_nfc=0;
					// sum raw_optimize && nfc	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_nfc=[];
						raw_nfc[i] = parseFloat($('#NFC'+(i+1)).val());
						sumraw_sh_po_nfc += (Math.round(raw_optimize[i])*(raw_nfc[i]))/100;
					}
					
					sumraw_sh_po_uip=0;
					// sum raw_optimize && uip	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_uip=[];
						raw_uip[i] = parseFloat($('#UIP'+(i+1)).val());
						sumraw_sh_po_uip += (Math.round(raw_optimize[i])*(raw_uip[i]))/100;
					}
					
					sumraw_sh_po_dip = 0;
					// sum raw_optimize && dip	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_dip=[];
						raw_dip[i] = parseFloat($('#DIP'+(i+1)).val());
						sumraw_sh_po_dip += (Math.round(raw_optimize[i])*(raw_dip[i]))/100;
					}
					
					sumraw_sh_po_vitA = 0;
					// sum raw_optimize && vitA	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_vitA=[];
						raw_vitA[i] = parseFloat($('#vitA'+(i+1)).val());
						sumraw_sh_po_vitA += (Math.round(raw_optimize[i])*(raw_vitA[i]))*10;
					}
					
					sumraw_sh_po_vitE = 0;
					// sum raw_optimize && vitE	
					for(var i=0; i< raw_optimize.length; i++){
						var raw_vitE=[];
						raw_vitE[i] = parseFloat($('#vitE'+(i+1)).val());
						sumraw_sh_po_vitE += (Math.round(raw_optimize[i])*(raw_vitE[i]))/100;
					}
					
					
					//console.log("sumraw_sh_po_dm:",sumraw_sh_po_dm);
					$("#dd0").val(sumraw_sh_po_dm);
					$("#dd1").val(sumraw_sh_po_protein);
					$("#dd2").val(sumraw_sh_po_tdn);
					$("#dd3").val(sumraw_sh_po_ndf);
					$("#dd4").val(sumraw_sh_po_adf);
					$("#dd5").val(sumraw_sh_po_ca);
					$("#dd6").val(sumraw_sh_po_p);
					$("#dd7").val(sumraw_sh_po_nfc);
					$("#dd8").val(sumraw_sh_po_uip);
					$("#dd9").val(sumraw_sh_po_dip);
					$("#dd10").val(sumraw_sh_po_vitA);
					$("#dd11").val(sumraw_sh_po_vitE);
					
					/* for (var i=0; i< raw_optimize.length; i++) {				
						$("#dd"+(i+1)).val((raw_optimize[i]));
						console.log("solve:",raw_optimize[i]);
					}
					 */
					
				
			}
		});
		/* $.ajax({url: "listoptimize",data : {id:selectedValue}}).done(function(element) {
			var json = JSON.parse(element);
			$( "#solve_r"+id ).val(json.);
		}) */
		
		
	});
	
	//console.log("Optimize_raw : ",raw_optimize);
	
	function selectmat(id){
		var arrsum = {"id":0,"protein":0.0,"tdn":0.0,"nfc":0,"dm":0,"uip":0,"dip":0,"ca":0.0,"p":0.0,"urea":0.0,"cl":0.0,"k":0.0,"s":0.0,"mg":0.0,"zn":0.0,"cu":0.0,"mn":0.0,"co":0.0,"se":0.0,"i":0.0,"vitA":0.0,"vitD":0.0,"vitE":0.0,"nel":0,"nem":0,"neg":0,"ndf":0.0,"ee":0.0,"cp":0.0,"cf":0.0,"ash":0.0,"nfe":0.0,"adf":0.0,"adl":0.0,"de":0.0,"me":0.0,"na":0.0,"fe":0.0};
		mat_arr[id] = arrsum;
		select_arr[id] = '';
		mat_arr_each[id] = [0, 'เลือกวัตถุดิบ', arrsum];
        var str = `<select class="form-control rawid " name="raw`+id+`" id="raw`+id+`" onchange="listdata(`+id+`)" ><option value="0" id="opt` + id + `_0">เลือกวัตถุดิบ</option>`;
        if (id == 1) {
            for (var i=0; i<list_rawid.length; i++) {
                str += `<option value="` + list_rawid[i][0] + `" id="opt` + id + `_` + list_rawid[i][0] + `">` + list_rawid[i][1] + `</option>`;
            }
        }else {
            for (var j = 0; j < list_rawid.length; j++) {
                var has = false;
                if (mat_arr_each.length > 0){
                    for (var i=1; i<mat_arr_each.length; i++) {
                        if (mat_arr_each[i][0] == list_rawid[j][0])
                            has = true;
                    }
				}
				if (!has){
                    str += `<option value="` + list_rawid[j][0] + `" id="opt` + id + `_` + list_rawid[j][0] + `">` + list_rawid[j][1] + `</option>`;
				}
            }
        }
		
		str += `</select>`;
		return str;
	}

	/*`<select class="form-control rawid " name="raw`+id+`" id="raw`+id+`" onchange="listdata(`+id+`)" >
		<option value="0">เลือกวัตถุดิบ</option>
		 <c:forEach items="${rawlist}" var="group">
			<c:if test="${IDR[id] == group.id }">
				<option value="${group.id}" selected="selected" >${group.name}</option></c:if>
			<c:if test="${group.typeMaterial.id == 2}">
				<c:if test="${IDR[id] != group.id }">
					<option value="${group.id }" id="opt`+id+`_${group.id}">
						${group.name}	
					</option>
				</c:if>
			</c:if>
		</c:forEach> 
	</select>`;*/
	

    function onSelect(id) {
        var value = $('#test_' + id).val();
        var text = $('#opt_' + id + '_' + value).html();
        var data = mat_arr_each[id][2];
        mat_arr_each[id] = [];
        mat_arr_each[id] = [value, text, data];
        console.log(mat_arr_each[id]);
        onChange();
        
    }

	function onChange() {
		
        for (var k=1; k<mat_arr_each.length; k++) {
            var str = `<option value="0" id="opt` + k + `_0">เลือกวัตถุดิบ</option>`;
            for (var j=0; j<list_rawid.length; j++) {
                var has = false;
                if (mat_arr_each.length > 0) {
                    for (var i=1; i<mat_arr_each.length; i++) {
                        if (mat_arr_each[i][0] == list_rawid[j][0])
                            has = true;
                    }
                    if (mat_arr_each[k][0] == list_rawid[j][0])
                        str += `<option value="` + list_rawid[j][0] + `" id="opt` + k + `_` + list_rawid[j][0] + `" selected>` + list_rawid[j][1] + `</option>`;
                }
                if (!has) {
                 	   str += `<option value="` + list_rawid[j][0] + `" id="opt` + k + `_` + list_rawid[j][0] + `">` + list_rawid[j][1] + `</option>`;
                }
            }
            $('#raw' + k).html(str);
        }
    }
	
	function inputdatamat(id, cell){
		if (cell==1){
			return `<input id="low_raw`+id+`" size="10" type="text" value="${ll[id] }" placeholder="0">`;
		}
		if (cell==2){
			return `<input id="high_raw`+id+`" size="10" type="text" value="${uu[id] }" placeholder="100">`;
		}
		if (cell==3){
			return `<input readonly="true" id="solve`+id+`" size="10"  type="text"value="${d[id] }" >`;
		}
		if (cell==4){
			return `<input readonly="true" id="price0`+id+`" size="10"  type="text" value="${c[id] }">`;
		}
	}
	
	function addtabelvi() {
		if(id_list_mat<15){
		    var table = document.getElementById("addtabel");
		    var header = table.createTHead();
		    var row = header.insertRow(-1);
		    var cell1 = row.insertCell(0);
		    var cell2 = row.insertCell(1);
		    var cell3 = row.insertCell(2);
		    var cell4 = row.insertCell(3);
		    var cell5 = row.insertCell(4);
		    var id = ++id_list_mat;
		    cell1.innerHTML = '<b>' + selectmat(id) + '</b>';
		    cell2.innerHTML = '<b>' + inputdatamat(id,1) + '</b>';
		    cell3.innerHTML = '<b>' + inputdatamat(id,2) + '</b>';
		    cell4.innerHTML = '<b>' + inputdatamat(id,3) + '</b>';
		    cell5.innerHTML = '<b>' + inputdatamat(id,4) + '</b>';
		    
		//      if (mat_arr_each.length > 0) {
		// 	var plus = 0;
		// 		for (var i =1; i<mat_arr_each.length; i++) {
		// 		plus += mat_arr_each[i][2].ca;
		// 			console.log(mat_arr_each[i][1],": ",mat_arr_each[i][2]);
		// 	}
		// 		console.log('CA: ', Math.round(plus));
		// } 
			
		}
   }
	
	function inputdatapo(id, cell){
		if (cell==0){
			return `<input readonly="true" id="name`+id+`" size="25" name="name`+id+`"  type="text">`;
		}
		if(cell==1){
			return `<input readonly="true" id="dm`+id+`" size="15" name="dm`+id+`" type="text">`;
		}
		if(cell==2){
			return `<input readonly="true" id="protein`+id+`" size="15" name="protein`+id+`" type="text">`;
		}
		if(cell==3){
			return `<input readonly="true" id="tdn`+id+`" size="15" name="tdn`+id+`" type="text">`;
		}
		if(cell==4){
			return `<input readonly="true" id="ndf`+id+`" size="15" name="ndf`+id+`" type="text">`;
		}
		if(cell==5){
			return `<input readonly="true" id="adf`+id+`" size="15" name="adf`+id+`" type="text">`;
		}
		if(cell==6){
			return `<input readonly="true" id="ca`+id+`" size="15" name="ca`+id+`" type="text">`;
		}
		if(cell==7){
			return `<input readonly="true" id="p`+id+`" size="15" name="p`+id+`" type="text">`;
		}
		if(cell==8){
			return `<input readonly="true" id="NFC`+id+`" size="15" name="NFC`+id+`" type="text">`;
		}
		if(cell==9){
			return `<input readonly="true" id="UIP`+id+`" size="15" name="UIP`+id+`" type="text">`;
		}
		if(cell==10){
			return `<input readonly="true" id="DIP`+id+`" size="15" name="DIP`+id+`" type="text">`;
		}
		if(cell==11){
			return `<input readonly="true" id="vitA`+id+`" size="20" name="vitA`+id+`">`;
		}
		if(cell==12){
			return `<input readonly="true" id="vitE`+id+`" size="20" name="vitE`+id+`">`;
		}
	}
	
	//เพิ่มปริมาณการเลือกวัตถุดิบ
	function addtabelpo() {
		if(id_list_mat_po<15){
	    var table = document.getElementById("addtabel_po").getElementsByTagName('tbody')[0];
	    //var header = table.createTBody();
	    //var row = header.insertRow(-1);
	    var row = table.insertRow(-1);
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    var cell4 = row.insertCell(3);
	    var cell5 = row.insertCell(4);
	    var cell6 = row.insertCell(5);
	    var cell7 = row.insertCell(6);
	    var cell8 = row.insertCell(7);
	    var cell9 = row.insertCell(8);
	    var cell10 = row.insertCell(9);
	    var cell11 = row.insertCell(10);
	    var cell12 = row.insertCell(11);
	    var cell13 = row.insertCell(12);
	   
	    var id = ++id_list_mat_po;
	    cell1.innerHTML = '<b>' + inputdatapo(id,0) + '</b>';
	    cell2.innerHTML = '<b>' + inputdatapo(id,1) + '</b>';
	    cell3.innerHTML = '<b>' + inputdatapo(id,2) + '</b>';
	    cell4.innerHTML = '<b>' + inputdatapo(id,3) + '</b>';
	    cell5.innerHTML = '<b>' + inputdatapo(id,4) + '</b>';
	    cell6.innerHTML = '<b>' + inputdatapo(id,5) + '</b>';
	    cell7.innerHTML = '<b>' + inputdatapo(id,6) + '</b>';
	    cell8.innerHTML = '<b>' + inputdatapo(id,7) + '</b>';
	    cell9.innerHTML = '<b>' + inputdatapo(id,8) + '</b>';
	    cell10.innerHTML = '<b>' + inputdatapo(id,9) + '</b>';
	    cell11.innerHTML = '<b>' + inputdatapo(id,10) + '</b>';
	    cell12.innerHTML = '<b>' + inputdatapo(id,11) + '</b>';
	    cell13.innerHTML = '<b>' + inputdatapo(id,12) + '</b>';
		}
   }
	
	function makeItNull (id) {
		
		mat_arr_each[id][0] = 0;
		mat_arr_each[id][1] = 'เลือกวัตถุดิบ';
		
		mat_arr_each[id][2].dm = 0;
		mat_arr_each[id][2].protein = 0;
		mat_arr_each[id][2].tdn = 0;
		mat_arr_each[id][2].ndf = 0;
		mat_arr_each[id][2].ca = 0;
		mat_arr_each[id][2].p = 0;
		mat_arr_each[id][2].vitA =0;
		mat_arr_each[id][2].vitE =0;
		mat_arr_each[id][2].adf =0;
		mat_arr_each[id][2].nfc =0;
		mat_arr_each[id][2].uip =0;
		mat_arr_each[id][2].dip =0;
	}
	
	function subtable(){
		if(id_list_mat>1){
		var id = id_list_mat--;
		var table = document.getElementById("addtabel");
			table.deleteRow(id);
		    id = id_list_mat_po--;
		var table = document.getElementById("addtabel_po");
			table.deleteRow(id-1);	
			var arrsum = {"id":0,"protein":0.0,"tdn":0.0,"nfc":0,"dm":0,"uip":0,"dip":0,"ca":0.0,"p":0.0,"urea":0.0,"cl":0.0,"k":0.0,"s":0.0,"mg":0.0,"zn":0.0,"cu":0.0,"mn":0.0,"co":0.0,"se":0.0,"i":0.0,"vitA":0.0,"vitD":0.0,"vitE":0.0,"nel":0,"nem":0,"neg":0,"ndf":0.0,"ee":0.0,"cp":0.0,"cf":0.0,"ash":0.0,"nfe":0.0,"adf":0.0,"adl":0.0,"de":0.0,"me":0.0,"na":0.0,"fe":0.0};
			makeItNull(id);
			var json = arrsum;
			$( "#IDR"+id ).val(json.id);
			$( "#dm"+id ).val(json.dm);
			$( "#protein"+id ).val(json.protein);
			$( "#tdn"+id ).val(json.tdn);
			$( "#ndf"+id ).val(json.ndf);
			$( "#ca"+id ).val(json.ca);
			$( "#p"+id ).val(json.p);
			$( "#vitA"+id ).val(json.vitA);
			$( "#vitE"+id ).val(json.vitE);
			$( "#adf"+id ).val(json.adf);
			$( "#NFC"+id ).val(json.nfc); 	/* แป้ง */
			$( "#UIP"+id ).val(json.uip); 	/*บายโปรตีน*/
			$( "#DIP"+id ).val(json.dip); 
		}
	}
	
	function toShow(id) {
		var arrsum = {"id":0,"protein":0.0,"tdn":0.0,"nfc":0,"dm":0,"uip":0,"dip":0,"ca":0.0,"p":0.0,"urea":0.0,"cl":0.0,"k":0.0,"s":0.0,"mg":0.0,"zn":0.0,"cu":0.0,"mn":0.0,"co":0.0,"se":0.0,"i":0.0,"vitA":0.0,"vitD":0.0,"vitE":0.0,"nel":0,"nem":0,"neg":0,"ndf":0.0,"ee":0.0,"cp":0.0,"cf":0.0,"ash":0.0,"nfe":0.0,"adf":0.0,"adl":0.0,"de":0.0,"me":0.0,"na":0.0,"fe":0.0};
			arrsum.dm = mat_arr[id].dm;
			arrsum.protein = mat_arr[id].protein;
			arrsum.tdn = mat_arr[id].tdn;
			arrsum.ndf = mat_arr[id].ndf;
			arrsum.ca = mat_arr[id].ca;
			arrsum.p = mat_arr[id].p;
			arrsum.vitA = mat_arr[id].vitA;
			arrsum.vitE = mat_arr[id].vitE;
			arrsum.adf = mat_arr[id].adf;
			arrsum.nfc = mat_arr[id].nfc;
			arrsum.uip = mat_arr[id].uip;
			arrsum.dip = mat_arr[id].dip;
		var json = arrsum;
		$('#name'+id).val(select_arr[id]);
		$( "#IDR"+id ).val(json.id);
		$( "#dm"+id ).val(json.dm);
		$( "#protein"+id ).val(json.protein);
		$( "#tdn"+id ).val(json.tdn);
		$( "#ndf"+id ).val(json.ndf);
		$( "#ca"+id ).val(json.ca);
		$( "#p"+id ).val(json.p);
		$( "#vitA"+id ).val(json.vitA);
		$( "#vitE"+id ).val(json.vitE);
		$( "#adf"+id ).val(json.adf);
		$( "#NFC"+id ).val(json.nfc); 	/* แป้ง */
		$( "#UIP"+id ).val(json.uip); 	/*บายโปรตีน*/
		$( "#DIP"+id ).val(json.dip); 
	}
	

function listdata(id) { //เอาหน่วยที่ใช้ในคลังอออกมา

	var selectedValue = $("#raw"+id).val();  //หลังclass form control
    var text = $('#opt' + id + '_' + selectedValue).html();
    

 	if(selectedValue != 0){

		var name = $("#opt" + id + "_" + selectedValue).html();
		select_arr[id] = name;//name.replace(/\s+/g, '');
		
		$.ajax({url: "listData1",data : {id:selectedValue}}).done(function(element) {
			var json = JSON.parse(element);
			$( "#price0"+id ).val(json.price);
			$( "#nameraw0"+id ).val(json.rawMaterial.id);
			
		});

		
		$.ajax({url: "listData",data : {id:selectedValue}}).done(function(element) {
			var json = JSON.parse(element);
			mat_arr[id] = json;
			mat_arr_each[id][2] = json;
			toShow(id);
		    mat_arr_each[id] = [];
		    mat_arr_each[id] = [selectedValue, text, json];
		    
		});

	} else {
		select_arr[id] = '';
		$( "#price0"+id ).val("");
		$( "#nameraw0"+id ).val("");
		makeItNull(id);
		toShow(id);
	}
 	
 	setTimeout(function(){
 		onChange();
 		cal_quantity();
 	}, 300);
}

function cal_quantity() {
	var price = [];
	var low_raw = [];
	var high_raw =[];
	var low_po = [];
	var high_po = [];
	var id_r = [];	
	var data = [];
	
	 //create price
	for (var i=1; i<= id_list_mat; i++) {
		if ($('#price0'+i).val() == '')
			price[i-1] = 0;
		else
			price[i-1] = parseFloat($('#price0'+i).val());
	}
	
	//create low_raw
	for (var i=1; i<= id_list_mat; i++){
		if ($('#low_raw'+i).val() == '')
			low_raw[i-1] = 0;
		else
			low_raw[i-1] = $('#low_raw'+i).val();
	}
	//create high_raw
	for (var i=1; i<= id_list_mat; i++){
		if ($('#high_raw'+i).val() == '')
			high_raw[i-1] = 0;
		else
			high_raw[i-1] = $('#high_raw'+i).val();

	}
	
	
	//create low_po
	for (var i=1; i<= id_list_mat; i++){
		if ($('#low_po'+i).val() == '')
			low_po[i-1] = 0;
		else
			low_po[i-1] = $('#low_po'+i).val();
	}
	//create high_po
	for (var i=0; i<12; i++){
		if ($('#high_po'+i).val() == '')
			high_po[i] = 0;
		else
			high_po[i] = $('#high_po'+i).val();
	} 
	//create id_r
	for (var i=1; i<= id_list_mat; i++){
		if (mat_arr_each[1][2].id == '')
			id_r[i-1] = 0;
		else
			id_r[i-1] = mat_arr_each[i][2].id;
	} 
	
	//console.log(mat_arr_each[1][2].id);
	
	// make dm, protein, ... , vitE into data
	for (var i=1; i<=id_list_mat; i++) {
		data[i] = [];
		for (var j=0; j<12; j++) {
			// dm
			if (j == 0) data[i][j] = -(mat_arr_each[i][2].dm/100);
			// protein
			if (j == 1) data[i][j] = -(mat_arr_each[i][2].protein/100);
			// tdn
			if (j == 2) data[i][j] = -(mat_arr_each[i][2].tdn/100);
			// ndf
			if (j == 3) data[i][j] = -(mat_arr_each[i][2].ndf/100);
			// adf
			if (j == 4) data[i][j] = -(mat_arr_each[i][2].adf/100);
			// ca
			if (j == 5) data[i][j] = -(mat_arr_each[i][2].ca/100);
			// p
			if (j == 6) data[i][j] = -(mat_arr_each[i][2].p/100);
			// nfc
			if (j == 7) data[i][j] = -(mat_arr_each[i][2].nfc/100);
			// uip
			if (j == 8) data[i][j] = -(mat_arr_each[i][2].uip/100);
			// dip
			if (j == 9) data[i][j] = -(mat_arr_each[i][2].dip/100);
			// vitA
			if (j == 10) data[i][j] = -(mat_arr_each[i][2].vitA/10000);
			// vitE
			if (j == 11) data[i][j] = -(mat_arr_each[i][2].vitE/10000);
		}
	}
	
	
	var arr_sum = [[]];
	var k = 0;
	
	// make all data in arr_sum
	for (var i=1; i<=id_list_mat; i++) {
		arr_sum[i-1] = [];
		for (var j=0; j<12; j++) {
			arr_sum[i-1][j]=data[i][j];	
		}
	}
	
	/* // -1 in arr_sum : how manay data?
	 arr_sum[id_list_mat] = [];
	for (var i=0; i<id_list_mat; i++) {
		arr_sum[id_list_mat][i]=-1.0;
	// }  */
	
	
	return [price, arr_sum, price.length-1, id_r, high_po, low_raw, high_raw];
	
}	


function cal_Nutrition(){
	var price, dm, protein, tdn, ndf, adf, ca, p, nfc, uip, dip, vitA, vitE  = [];
	var solve, solve_sum = [];
	
	var MsgError="";
	var result=[];
	var solve_sumvalue = 0;
	
	for (var i=1; i<= id_list_mat; i++) {
	    c[i] = $('#price0'+i)
	}
	for (var i=0; i<=12; i++) {
		// dm
			dm[i] = (mat_arr_each[i][2].dm);
		// protein
			protein[i] = (mat_arr_each[i][2].protein);
		// tdn
			tdn[i] = (mat_arr_each[i][2].tdn);
		// ndf
			ndf[i] = (mat_arr_each[i][2].ndf);
		// adf
			adf[i] = (mat_arr_each[i][2].adf);
		// ca
			ca[i] = (mat_arr_each[i][2].ca);
		// p
			p[i] = (mat_arr_each[i][2].p);
		// nfc
			nfc[i] = (mat_arr_each[i][2].nfc);
		// uip
			uip[i] = (mat_arr_each[i][2].uip);
		// dip
			dip[i] = (mat_arr_each[i][2].dip);
		// vitA
			vitA[i] = (mat_arr_each[i][2].vitA);
		// vitE
			vitE[i] = (mat_arr_each[i][2].vitE);
	}
	
	// sum po & solve
	for (var i=0; i< 12; i++) {
		var sum = 0;
		for (var j=1; j<=id_list_mat; j++){
			solve[j] = $('#solve'+j).val();
			if (i == 0) sum += (solve[j]*dm[j]);
			if (i == 1) sum += (solve[j]*protein[j]);
			if (i == 2) sum += (solve[j]*tdn[j]);
			if (i == 3) sum += (solve[j]*ndf[j]);
			if (i == 4) sum += (solve[j]*adf[j]);
			if (i == 5) sum += (solve[j]*ca[j]);
			if (i == 6) sum += (solve[j]*p[j]);
			if (i == 7) sum += (solve[j]*nfc[j]);
			if (i == 8) sum += (solve[j]*uip[j]);
			if (i == 9) sum += (solve[j]*dip[j]);
			if (i == 10) sum += (solve[j]*vitA[j]);
			if (i == 11) sum += (solve[j]*vitE[j]);
		}
		
	sovle_sum[i] = sum;
	solve_sumvalue += sovle_sum[i]*1;
		
//	console.log(solve_sumvalue);
		
	/* //ราคาเฉลี่ยวัตถุดิ	
	for (var j=1; j<=id_list_mat; j++){
		price_cal[j] = (raw_optimize[i]*price[j])/100;
	}
	sum_price_cal += price_cals[i] ;	 */
		//console.log(sum_price_cal);
	
	
	}
}

$(document).on('click','#calraw_sum',function(e){
	mg_ch_sum ="";
	mg_ch_lb = "";
	mg_ch_ub = "";
	mg_ch_sum += "กรุณาตรวจสอบน้ำหนัก";
	mg_ch_lb += "กรุณาตรวจสอบน้ำหนักต่ำสุดเกินกว่าที่กำหนด";
	mg_ch_ub += "กรุณาตรวจสอบน้ำหนักต่ำสูงสุดเกินกว่าที่กำหนด"
	for (var i=1; i<= id_list_mat; i++){
		if (low_raw[i-1]>high_raw[i-1]){
			swal("ผิดพลาด",mg_ch, "error");
		}if(low_raw[i-1]==101||low_raw[i-1]<0){
			swal("ผิดพลาด",mg_ch_lb, "error");
		}if(high_raw[i-1]==101||high_raw[i-1]<0){
			swal("ผิดพลาด",mg_ch_ub, "error");
		}

	}
	
});
 

$(document).on('click','#addcalformula',function(e){ //id of button
	var sol1 = $('#total1').val(); 
	var MsgError=""; 
	MsgError+="กรุณาทำการรวมค่าทางโภชนะก่อน";
	if(sol1==""){
		
		swal("คำนวณไม่สำเร็จ",MsgError, "error");
	}else{
		$.ajax({
		url:"savecal", //send to controller
		method:"POST",
		cache : false,
		data:$("#rawmaterialprice").serialize(), //idform
		success:function (callb) {
			console.log(callb);
		}
	}).fail(function() {
		 swal("สำเร็จ", "บันทึกสำเร็จ", "success");
	}); 
	
	e.preventDefault(); 
	}
});
 
		</script>



</body>
</html>