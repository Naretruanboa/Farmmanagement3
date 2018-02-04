<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>การสั่งซื้อวัตถุดิบ</title>
<%@ include file="../menu.jsp"%>
</head>
<%int i=1; %>
<body>
<div class="container">
<br><br>
		<div class="row form-group">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
					align="center">
					<p style="font-size: 28px; font-weight: 700; color: white;">การสั่งซื้อวัตถุดิบ</p>
				</div>
			</div>
		</div>
	<div class=" row form-group"> <!-- //บนสุด -->
		<div class=" row form-group"> <!-- //กลาง -->
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title" style="font-size: 24px; color: white;"> <i class="fa fa-cart-arrow-down"></i>&nbsp;เพิ่มรายการสั่งซื้อ</h3>
			</div>
			<div class="panel-body">
				<!-- <h1>กลาง</h1> -->
				<div class="row form-group">
				
					<form:form action="ordered_raw" method="POST"  commandName="orderraw" >
								
								<c:forEach items="${ulist }" var="m">
									<form:input path="member.id" type="hidden" value="${m.id}"/>
								</c:forEach>
								
					<div class="col-md-6"> <!-- คอลัมแรก -->
						<div class="row form-group">
							<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> วันที่สั่งซื้อ</label>
							<div class="col-md-6">
							 	<form:input path="day" value="${day }" type="date" class="form-control" id="day" />													
							</div>
						</div>	
						<div class="row form-group">
							
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> ชื่อวัตถุดิบ</label>
								<div class="col-md-6">
									
									<form:select path="rawMaterial.id" class="form-control RawMaterialid"  id="RawMaterialid" onchange="Listunit();">
									 	<form:option value="0">เลือกชื่อวัตถุดิบ</form:option>
										<c:forEach items="${rawmaterial }" var="raw">
											<c:if test="${RawMaterial.id == raw.id }">
												<form:option value="${raw.id }" selected="selected">${raw.name }</form:option>
											</c:if>
											<c:if test="${RawMaterial.id != raw.id }">
												<form:option value="${raw.id }">${raw.name }</form:option>
											</c:if>
										</c:forEach>
									</form:select>
									
								</div>
						</div>
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> จำนวนคงคลัง</label>
								<div class="col-md-6">
									<input id="oquantity" name="" type="text" class="form-control" readonly="true" >
								</div>
						</div>
				
					</div><!--  //จบคอลัมแรก -->
					<div class="col-md-4 "> <!-- คอลัม2 -->
						<div class="row form-group">
								<label class="col-md-offset-2 col-md-3 control-label">
									จำนวนที่สั่งเพิ่ม</label>
								<div class="col-md-6">
									<%-- <form:input path="quantity" type="number" class="form-control" id="quantity" /> --%>
									<form:input path="quantity" type="number" value="-" class="form-control"/>
								</div>
							</div>
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label"> หน่วย</label>
							<div class="col-md-6">
								<input id="unitraw" type="text" class="form-control" readonly="true">
							</div>
						</div>
						
					</div> <!-- คอลัม2 -->
		</form:form>				
				</div>
				<div class="row form-group">
						<center>
							<button type="button" class="btn btn-success btn-lg"
								id="btn_select" onclick="orderraw()">
								<li class="glyphicon glyphicon-download"></li>&nbsp;เพิ่มการสั่งซื้อ
							</button>
						</center>
					</div>
				</div>
		</div>
		
		</div><!-- //กลาง -->
	</div> <!-- //closeบนสุด -->
</div>


<div class="container">
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">ประวัติการสั่งซื้อวัตถุดิบ</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">ชื่อวัตถุดิบ</option>							
								<option value="2">ผู้สั่งซื้อ</option>
								<option value="3">วันที่สั่งซื้อ</option>
						</select> <input id="search" class="form-control search-query " oninput="search()"
							style="margin-left: -2px; margin-right: -1px;">

							<button onclick="search()"
								class="btn btn-info search-query glyphicon glyphicon-search"
								style="padding: 5px 10px 5px 10px;"></button>
						</span>
					</div>
					</div>
				</div>
			</div>
		<hr>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
	   	</div>
		<div class="panel-body">
		<table class="table table-striped table-hover" class="form-control"
				class="font-nav" style="font-size: 18px;" border="1"
				bordercolor="#BDBDBD">
				<thead>
					<tr>
						<th>ลำดับที่</th>
						<th>วันที่สั่งซื้อ</th>
						<th>รายการ</th>
						<th>จำนวน</th>
						<th>หน่วย</th>
						<th>ชื่อผู้สั่งซื้อ</th>
						<c:if test="${sessionScope.privilege == 1}"><th>ยกเลิกการสั่งซื้อ</th></c:if>
					</tr>
				</thead>
				
				<tbody style="text-align: center;" id="list">
					
				</tbody>
				</table>
		<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div> <!-- end container -->	
	
	<%-- <div class=" row form-group">
			<!-- //ล่างสุด -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title" style="font-size: 24px; color: white;">
						<i class="fa fa-cart-plus"></i>&nbsp;ประวัติการสั่งซื้อ
					</h3>
				</div>
				<div class="panel-body">
	
		<div class="row form-group">
		
			<table class="table table-striped table-hover" class="form-control"
				class="font-nav" style="font-size: 18px;" border="1"
				bordercolor="#BDBDBD">
				<thead>
					<tr>
						<th>ลำดับที่</th>
						<th>วันที่สั่งซื้อ</th>
						<th>รายการ</th>
						<th>จำนวน</th>
						<th>หน่วย</th>
						<th>ชื่อผู้สั่งซื้อ</th>
						<!-- <th>ยกเลิก</th> -->
					</tr>
				</thead>
				
				<tbody style="text-align: center;" >
					<c:forEach items="${listorderraw }" var="list">
						<tr>
							<td><%=i++%></td>
							<td>${list.day }</td>
							<td>${list.rawMaterial.name }</td>
							<td>${list.quantity}</td>
							<td>${list.rawMaterial.unitRawMaterial.value }</td>
							<td>${list.member.first} ${list.member.last}</td>
							<!-- <td>
								<button type="button" class="btn btn-danger btn-lg" id="cen"
									onclick="cen()">
									<i class="fa fa-times"></i>&nbsp;ลบรายการ
								</button>
							</td> -->
						</tr>
					</c:forEach>
				</tbody>
				</table>
		</div>
	
</div>
			</div>
		</div> --%>

	
	<jsp:include page="../footer.jsp"/>
</body>


<script type="text/javascript">
$("#list").load('search_order_raw',{ id : 0 ,value : 0},function(){ 
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
function search(){ 
	$("#list").load('search_order_raw',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
		$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
			for(i=0 ;i<=10;i++){
				if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
					$("[id=pageNum]").eq(i).addClass("active");
				}
			}
		});
	});
}


$(document).on('click','#pageNum',function(e){ 
	 var id =  $('[id=pageNum]').index(e.target);
	 $("#list").load('search_order_raw',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});


function orderraw(){
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลการสั่งซื้อใช่หรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#RawMaterialid").val() == 0){
					swal("กรุณากรอกชื่อวัตถุดิบให้ถูกต้อง");
				}else if($("#quantity").val() == ""  || $("#quantity").val() <= 0 ){
					swal("กรุณากรอกจำนวนให้ถูกต้อง");
				}else if($("#day").val() == ""){
					swal("กรุณากรอกวันที่สั่งซื้อ");
				}else{
				$.post('ordered_raw',$("#orderraw").serialize(),
				      function (result) {
				     	swal({	title: "สำเร็จ!",
			     			text: "บันทึกการสั่งซื้อเรียบร้อยแล้ว!",  
							timer: 1000,   
							type: "success",
							showConfirmButton: false 
						});
						setInterval(function(){location.reload()}, 1000);
					})
				}
				} else { 
				swal({	title: "ยกเลิก!",   
						text: "คุณได้ยกเลิกการบันทึกข้อมูล",   
						timer: 1000,   
						type: "error",
						showConfirmButton: false 
				});
			} 
		}
	);
}

function Listunit() { //เอาหน่วยที่ใช้ในคลังอออกมา
	var selectedValue = $(".RawMaterialid").val();  //หลังclass form control
	//alert(selectedValue);
	if(selectedValue != 0){
	$.ajax({
		  url: "listRawUnit",
		  data : {id:selectedValue}
		}).done(function(element) {
			var json = JSON.parse(element);

			$( "#oquantity" ).val( json.quantity );
		  $( "#unitraw" ).val(json.unitRawMaterial.value );
		 // alert(json.unitraw.value);
		});
	}else{
		$( "#oquantity" ).val("" );
		$( "#unitraw" ).val( "" );
		}
}

function chkdel(str){ //alert(str);
	swal({  title: "ยกเลิกการสั่งซื้อ!",   
			text: "คุณต้องการยกเลิกการสั่งซื้อใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'cancle_order_raw',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"สำเร็จ", 
							text:"ยกเลิกการสั่งซื้อเรียบร้อยแล้ว!", 
							type:"success",
							timer: 2000,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถลบได้!", "error");
					}
					
				});
					} 
				else {     swal({
						title:"ยกเลิก", 
						text:"ยกเลิกรายการที่เลือกเรียบร้อยแล้ว!", 
						type:"error",
						timer: 2000,   
						showConfirmButton: false
				});} 
			});

	}
</script>


</html>
