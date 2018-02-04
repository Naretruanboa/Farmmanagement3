<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>เลือกวัตถุดิบ</title>
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
					<div class="col-md-3" >
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">เลือกวัตถุดิบ</p>
						</div>
					</div>
			</div>
			
		<div class="container" style="color: black;">	
		<div class="row form-group">
		<div class="panel-body">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;อาหารหยาบ
						</h3>
					</div>
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>	
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
							
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						</div>
						</div>
						
					</div>
					
					
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;อาหารข้นสำเร็จรูป
						</h3>
					</div>
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						<label><h5>***หมายเหตุ</h5>		ก่อนเลือกอาหารข้นสำเร็จรูปควรจัดสัดส่วนอาหารหยาบก่อนจะได้ชนิดอาหารข้นที่เหมาะสม</label>
						</div>
						<br><br>
						</div>
						</div>
						
						<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;อาหารเสริม
						</h3>
					</div>
						
						<div class="col-md-6">
				<div class="panel" >
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: black;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;แหล่งโปรตีนพลังงาน
						</h3>
					</div>
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						</div>
						
						</div>
						</div>
						
						<div class="col-md-6">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: black;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;แหล่งแร่ธาตุวิตามิน
						</h3>
					</div>
					<div class="panel-body">
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						
						<div class="row form-group">
						<input id="id" type="hidden" value="">
							<label class=" col-md-2" ></label>
									<div class="col-md-8" style="font-size: 20px;">
										<select class="form-control" id="code0">
											<option value="0">เลือกวัตถุดิบ</option>
											<option value="1">NRC</option>
											<option value="2">THAI</option>
										</select>
							</div>
						</div>
						<br> <br>
						</div>
						
						</div>
						</div>
					</div>
				</div>
						
						<div class="row form-group">
							<div class="col-md-offset-5 col-md-12">
								<button type="button" class="btn btn-default btn-lg" id="cen" onclick="cen()">
									<a href="setrawmaterialbeef">ตกลง
								</button>
							</div>
							
						</div>
						
					</div>
					
			</div>
</div>
</div>
	
	<jsp:include page="../footer.jsp" />
	
	<script type="text/javascript">
function addId(){
	
	 $.post("../addId")
	.done(function(data){
		$("#numberSaleId").val(data);
		 $.post("../cash",{id : data})
			.done(function(data){
				$("#numberSale").val(data);
				 $("#open").attr("disabled",true);
			}); 
	}); 
}


function add(){
	var price = $("#price1").val();
	//var prices = $("#price11").val();
	var dis = $("#dis1").val();
	var vat =$("#vat1").val();
	//var vat = (parseFloat(vat)/100);
	price==null ? 0:price; 
	$.post("../add", {value : $("#code").val(),id : $("#numberSaleId").val()})
	.done(function(data){
		$("#list").load('../listItem',{id : $("#numberSaleId").val()} );
		$.post("../amount",{id : $("#numberSaleId").val()})		
		.done(function(data){
			if(data!=0 && $("#price").val()!=data){
			$("#price").val(addCommas((parseFloat(data)).toFixed(2)));
			$("#price11").val((parseFloat(data)).toFixed(2)*100);
			$("#dis2").val((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)*100);
			$("#dis").val(addCommas((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)));
			var di = $("#dis").val();
			$("#vat2").val(addCommas(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)));
			$("#vat").val(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)*100);
			$("#summ").val(addCommas((parseFloat(data)-di).toFixed(2)));
			$("#summ1").val((parseFloat(data)-di).toFixed(2)*100);
			$("#pricenovat").val((((parseFloat(data)-di)/(100+parseFloat(vat)))*100).toFixed(2)*100);
			}
		}); 
		
		$("#code").val(null);
	});	
}

function addCommas(nStr)
{
	nStr += '';
	x = nStr.split('.');
	x1 = x[0];
	x2 = x.length > 1 ? '.' + x[1] : '';
	var rgx = /(\d+)(\d{3})/;
	while (rgx.test(x1)) {
		x1 = x1.replace(rgx, '$1' + ',' + '$2');
	}
	return x1 + x2;
}
/* function chkNum(ele)
{
	var num = parseFloat(ele.value);
	ele.value = addCommas(num.toFixed(2));
} */

function cen(){
	 $.post("../cen",{id: $("#numberSaleId").val()})
		.done(function(data){
			location.reload();
		});
	
}
$(document).on('click', '#addAll', function(e) {		
	$.ajax({
		type:'POST',
		url:'../pay.do',
		data:$('#pay').serialize()
		+"&cashSales.id="+$("#numberSaleId").val()
		+"&proceeds="+$("#price111").val()
		+"&returnMoney="+$("#sum11").val() 
		+"&idMem="+$("#id").val()
	}).success(function(msg){
		swal("บันทึกสำเร็จ!", "", "success")
		id = msg;
		window.open("../billcash?id="+id);
		/* window.location.href="../billcash?id="+id; */
		/* $.post("../billcash",{id : id});*/
		 location.reload(); 
		$("#contents").html(msg);
	}).fail(function(msg){
		swal("บันทึกข้อมูลไม่สำเร็จ", " ", "error")
		/* alert('failed '); */
	});
	e.preventDefault();
	$('#pay')[0].reset();
});

function keyEnter(even) {
	if(( even.keyCode == 13 )) {
		cal();
      
	}
}

function keyMem(even) {
	if(( even.keyCode == 13 )) {
      Search();
	}
}

function keyok(even) {
	if(( even.keyCode == 13 )) {
		add();
	}
}

function cal(){
	var price = $("#price1").val();
	//var dis = $("#dis").val();

	var vat =$("#vat").val();
	var sum = $("#summ1").val();  
	/* var s = sum.spilt(",");
	alert(parseFloat(s[0]+s[1]));
	alert(parseFloat(price)); */
	sum=sum/100;
 	if(parseFloat(price)>=parseFloat(sum)){
 	$("#price1").val((parseFloat(price)));
	$("#price111").val((parseFloat(price)));
	// $("#sum1").val(isNaN(0)); 
	 $("#sum1").val((parseFloat(parseFloat(price) - parseFloat(sum))));
	 $("#sum11").val((parseFloat(parseFloat(price) - parseFloat(sum))));
	 //alert((parseFloat(parseFloat(price) - parseFloat(sum))));
	 $("#addAll").attr("disabled",false);
	 }
	 else{
		 swal("จำนวนเงินไม่พอ!", "", "error")
	 }
}
function Search(){

	$.ajax({
		
		url : "../memSale",
		method : 'post',
		cache : false,
		data : {
			mem : $("#mem").val()
		}}).done(function(msg){
			var s=msg.split(",");
			$("#nameShow").val(s[0]);
			$("#dis").val(s[1]);
			$("#dis1").val(s[1]);
			$("#id").val(s[2]);
			$("#vat").val(s[3]);
			$("#vat1").val(s[3]);
			//alert($("#vat").val(s[3]));
			
		});
}


function del(idd){
	var dis = $("#dis1").val();
	var vat =$("#vat1").val();
	$.post("../deleteCash", {id : idd.value})
	.done(function(data){
		$("#list").load('../listItem',{id : $("#numberSaleId").val()} );
		$.post("../amount",{id : $("#numberSaleId").val()})
		.done(function(data){
			$("#price").val(addCommas((parseFloat(data)).toFixed(2)));
			$("#price11").val((parseFloat(data)).toFixed(2)*100);
			$("#dis2").val((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)*100);
			$("#dis").val(addCommas((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)));
			var di = $("#dis").val();
			$("#vat2").val(addCommas(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)));
			$("#vat").val(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)*100);
			$("#summ").val(addCommas((parseFloat(data)-di).toFixed(2)));
			$("#summ1").val((parseFloat(data)-di).toFixed(2)*100);
			$("#pricenovat").val((((parseFloat(data)-di)/(100+parseFloat(vat)))*100).toFixed(2)*100);
			
		}); 
	});
}

function dell(idd){
	var dis = $("#dis1").val();
	var vat =$("#vat1").val();
	$.post("../deleteCashl", {id : idd.value})
	.done(function(data){
		$("#list").load('../listItem',{id : $("#numberSaleId").val()} );
		$.post("../amount",{id : $("#numberSaleId").val()})
		.done(function(data){
			$("#price").val(addCommas((parseFloat(data)).toFixed(2)));
			$("#price11").val((parseFloat(data)).toFixed(2)*100);
			$("#dis2").val((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)*100);
			$("#dis").val(addCommas((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)));
			var di = $("#dis").val();
			$("#vat2").val(addCommas(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)));
			$("#vat").val(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)*100);
			$("#summ").val(addCommas((parseFloat(data)-di).toFixed(2)));
			$("#summ1").val((parseFloat(data)-di).toFixed(2)*100);
			$("#pricenovat").val((((parseFloat(data)-di)/(100+parseFloat(vat)))*100).toFixed(2)*100);
			}); 
	});
}
function delb(idd){
	var dis = $("#dis1").val();
	var vat =$("#vat1").val();
	$.post("../deleteCashb", {id : idd.value})
	.done(function(data){
		$("#list").load('../listItem',{id : $("#numberSaleId").val()} );
		$.post("../amount",{id : $("#numberSaleId").val()})
		.done(function(data){
			$("#price").val(addCommas((parseFloat(data)).toFixed(2)));
			$("#price11").val((parseFloat(data)).toFixed(2)*100);
			$("#dis2").val((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)*100);
			$("#dis").val(addCommas((parseFloat(data)-((parseFloat(data)-(parseFloat(data)*(parseFloat(dis)/100))))).toFixed(2)));
			var di = $("#dis").val();
			$("#vat2").val(addCommas(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)));
			$("#vat").val(((((parseFloat(data)-di)/(100+parseFloat(vat)))*100)*(parseFloat(vat)/100)).toFixed(2)*100);
			$("#summ").val(addCommas((parseFloat(data)-di).toFixed(2)));
			$("#summ1").val((parseFloat(data)-di).toFixed(2)*100);
			$("#pricenovat").val((((parseFloat(data)-di)/(100+parseFloat(vat)))*100).toFixed(2)*100);
			}); 
	});
}
		</script>
	
</body>
</html>