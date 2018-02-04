<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>การนำเข้าน้ำเชื้อ</title>
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
					<p style="font-size: 28px; font-weight: 700; color: white;">การนำเข้าน้ำเชื้อ</p>
				</div>
			</div>
		</div>
	<div class=" row form-group"> <!-- //บนสุด -->

		<div class=" row form-group"> <!-- //กลาง -->
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title" style="font-size: 24px; color: white;"> <i class="fa fa-cart-arrow-down"></i>&nbsp;เพิ่มรายการนำเข้า</h3>
			</div>
			<div class="panel-body">
				<!-- <h1>กลาง</h1> -->
				<form action="imported_semen" method="POST"  id="semen">
						<c:forEach items="${ulist }" var="m">
						<input name="memberid" type="hidden" value="${m.id}"/>
						</c:forEach>
				<div class="row form-group">
				
					
					<div class="col-md-6"> <!-- คอลัมแรก -->	
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"> วันที่นำเข้า</label>
							<div class="col-md-6">
								<input name="day" class="form-control" value="${day }" id="day" type="date">
								<!-- <div class="input-group date">
										<input id ="dateStart" type='date' class="form-control"
											style="font-size: 18px;" /> <span class="input-group-addon"
											style="border-radius: 0px 10px 10px 0px; padding: 5px 7px 5px 7px; margin-top: 0px;"><span
											class="fa fa-calendar"></span></span>
								</div> -->
							</div>
						</div>				
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> ชื่อน้ำเชื้อ/พ่อพันธุ์</label>
								<div class="col-md-6">
									<select class="form-control Semenid" name="Semenid" id="Semenid" onchange="listquantitysemen();">
									 	<option value="0">เลือกชื่อน้ำเชื้อ/พ่อพันธุ์</option>
										<c:forEach items="${semen }" var="semen">
											<c:if test="${Semen.id == semen.id }">
												<option value="${semen.id }" selected="selected">${semen.nameCattle }</option>
											</c:if>
											<c:if test="${Semen.id != semen.id }">
												<option value="${semen.id }">${semen.nameCattle }</option>
											</c:if>
										</c:forEach>
									</select>
									
								</div>
						</div>
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label">จำนวนคงคลัง</label>
								<div class="col-md-6">
									<div class="input-group">
							 		<input name="beforequantity" type="text" class="form-control" id="oquantity" readonly="true">													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">หลอด</span>
									</div>	
								</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> จำนวนที่นำเข้า</label>
							<div class="col-md-6">
								<div class="input-group">
							 		<input name="quantity" type="number" class="form-control" id="quantity" >													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">หลอด (โด๊ส)</span>
									</div>
							</div>
						</div>
					
					
						
					</div><!--  //จบคอลัมแรก -->
					<div class="col-md-4 "> <!-- คอลัม2 -->	
						
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-4 control-label"> ราคาต่อหลอด</label>
							<div class="col-md-6">
								<div class="input-group">
							 		<input name="price" type="number" class="form-control" id="price" path=""/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">บาท</span>
									</div>
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font>ลอต</label>
							<div class="col-md-6">
								<input  type="number" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-4 control-label"><font color="red">*</font>ผลิต/นำเข้า</label>
							<div class="col-md-6">

									<input type="text" class="form-control" id="import_"/>
							</div>
						</div>
						<!-- <div class="row form-group">
							<label  class="col-md-offset-2 col-md-4 control-label"> เจ้าของฟาร์ม</label>
							<div class="col-md-6">
								<input name="farm" class="form-control"  id="farm" type="text" >
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-4 control-label"> นำเข้าจาก</label>
							<div class="col-md-6">
								<input name="import" class="form-control" id="import" type="text">
							</div>
						</div> -->
					</div> <!-- คอลัม2 -->
				
				</div>
			</form>			
						<div class="row form-group">
			<center><button type="button" class="btn btn-success btn-lg" id="add">
			<li class="glyphicon glyphicon-download"></li>&nbsp;เพิ่มการนำเข้า</button></center>
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
							<p style="font-size: 28px; font-weight: 700; color: white;">ประวัติการนำเข้าน้ำเชื้อ</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">ชื่อพ่อพันธุ์</option>							
								<option value="2">ผู้นำเข้า</option>
								<option value="3">วันที่นำเข้า</option>
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
		<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
							<thead >
								<tr>
									<th>ลำดับที่</th>
									<th>วันที่นำเข้า</th>
									<th>รายการ</th>
									<th>จำนวน</th>
									<th>หน่วย</th>
									<th>ราคาต่อหลอด (บาท)</th>
									<th>ชื่อผู้นำเข้า</th>
									<c:if test="${sessionScope.privilege == 1}"><th>ยกเลิกการนำเข้า</th></c:if>
								
								</tr>
							</thead> 
							<tbody style="text-align: center;" id="list">
									
							</tbody>					
					</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div> <!-- end container -->	

	<%-- <div class=" row form-group"> <!-- //ล่างสุด -->
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title" style="font-size: 24px; color: white;"> <i class="fa fa-cart-plus"></i>&nbsp;ประวัติการนำเข้า</h3>
			</div>
		<div class="panel-body">
		<center>
				<div class="row form-group"> 
					<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="1" bordercolor="#BDBDBD">
							<thead >
								<tr>
									<th>ลำดับที่</th>
									<th>วันที่นำเข้า</th>
									<th>รายการ</th>
									<th>จำนวน</th>
									<th>หน่วย</th>
									<th>ราคาต่อหลอด (บาท)</th>
									<th>ชื่อผู้นำเข้า</th>
									<c:if test="${sessionScope.privilege == 1}"><th>ยกเลิกการนำเข้า</th></c:if>
								
								</tr>
							</thead> 
							<tbody style="text-align: center;" id="lists">
								<c:forEach items="${listimport }" var="list">
								<tr>
									<td><%=i++ %></td>
									<td>${list.day }</td>
									<td>${list.semen.nameCattle }</td>
									<td>${list.quantity }</td>
									<td>หลอด (โด๊ส)</td>
									<td>${list.price}</td>
									<td>${list.member.first} ${list.member.last}</td>
									<c:if test="${sessionScope.privilege == 1}">
									 <td>
				        					<button class="btn btn-danger"	value="${list.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
				        			</td> 
				        			</c:if>
								</tr>	
								</c:forEach>	
							</tbody>					
					</table>
				</div></center>		
		</div>
		</div>
	</div> <!-- //closeล่างสุด --> --%>

	
<jsp:include page="../footer.jsp"/>
</body>

<script type="text/javascript">
$("#list").load('search_import_semen',{ id : 0 ,value : 0},function(){ 
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
function search(){ 
	$("#list").load('search_import_semen',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_import_semen',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});





$(document).on('click','#add',function(e){ //id of button
	var quantity = $('#quantity').val();
	if(quantity <= 0 || quantity == ""){
		swal("ผิดพลาด", "กรุณาระบุจำนวนให้ถูกต้อง!", "error");
	}else if($('#price').val()<= 0){
		swal("ผิดพลาด", "กรุณาระบุราคาให้ถูกต้อง!", "error");
	}else{
	$.ajax({
		url:"imported_semen", //send to controller
		method:"POST",
		cache : false,
		data:$("#semen").serialize() //idform
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "บันทึกการนำเข้าเรียบร้อยแล้ว!", 
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
	}
	e.preventDefault();
});



function listquantitysemen() {
	var selectedValue = $(".Semenid").val();  
	//alert(selectedValue);
	
	if(selectedValue != 0){
	$.ajax({
		  url: "listquantitysemen",
		  data : {id:selectedValue}
		}).done(function(element) {
			var json = JSON.parse(element);
			
		$( "#oquantity" ).val( json.quantity );
		 // alert(json.quantity);
		});
	}else{
		$( "#oquantity" ).val("");
		}
}

function chkdel(str){ //alert(str);
	swal({  title: "ยกเลิกการนำเข้า!",   
			text: "คุณต้องการยกเลิกการนำเข้าใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'cancle_import_semen',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"เสร็จเรียบร้อย", 
							text:"ยกเลิกการนำเข้าเรียบร้อยแล้ว!",
							type:"success",
							timer: 2000,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถยกเลิกการนำเข้าได้!", "error");
					}
					
				});
					} 
				else {  swal({
						title:"ยกเลิก", 
						text:"ยกเลิกการรายการที่เลือกเรียบร้อยแล้ว!", 
						type:"error",
						timer: 2000,   
						showConfirmButton: false
				});} 
			});

	}
</script>

</html>
