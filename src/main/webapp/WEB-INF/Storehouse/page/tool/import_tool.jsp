<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>การนำเข้าวัสดุ/อุปกรณ์</title>
</head>
<%int i=1; %>
<%@ include file="../menu.jsp"%>

<body>

<div class="container">
		<br>
		<br>
		<div class="row form-group">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
					align="center">
					<p style="font-size: 28px; font-weight: 700; color: white;">การนำเข้าวัสดุ/อุปกรณ์</p>
				</div>
			</div>
		</div>
		<div class=" row form-group">
			<!-- //กลาง -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title" style="font-size: 24px; color: white;">
						<i class="fa fa-cart-arrow-down"></i>&nbsp;เพิ่มรายการนำเข้า
					</h3>
				</div>
				<div class="panel-body">
					<!-- <h1>กลาง</h1> -->
					<form action="imported_tool" method="POST"  id="Toolimport">
						<c:forEach items="${ulist }" var="m">
						<input name="memberid" type="hidden" value="${m.id}"/>
						</c:forEach>
					
					<div class="row form-group">

						<div class="col-md-6">
							<!-- คอลัมแรก -->
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"><font
									color="red">*</font> ชื่อวัสดุ/อุปกรณ์</label>
								<div class="col-md-3">
									<select name="toolid" class="form-control valid toolid"  id="toolid" onchange="Listunit();">
								
										<option value="0">เลือกชื่อวัสดุ/อุปกรณ์</option>
										<c:forEach items="${tool }" var="tool">
											<c:if test="${Tool.id == tool.id }">
												<option value="${tool.id }" selected="selected">${tool.name }</option>
										</c:if>
											<c:if test="${Tool.id != tool.id }">
												<option value="${tool.id }">${tool.name }</option>
											</c:if>
										</c:forEach>
									</select>

								</div>

							</div>
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"> จำนวนคงคลัง</label>
								<div class="col-md-6">
									<input name="beforeQuantity"  type="text" class="form-control"  id="oquantity" readonly="true"/>
									
									<!--ถ้าเอา disabled ออกแอดข้อมูลได้  -->
			
								</div>
							</div>
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"><font
									color="red">*</font> จำนวนที่นำเข้า</label>
								<div class="col-md-6">
									<input name="quantity" type="number" class="form-control" id="quantity" />
								</div>
							</div>
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"><font
									color="red">*</font> หน่วย</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="unittool" readonly="true">
									

								</div>
							</div>

						</div>
						<!--  //จบคอลัมแรก -->
						<div class="col-md-4 ">
							<!-- คอลัม2 -->
							<div class="row form-group">
								<label class="col-md-offset-2 col-md-3 control-label">
									วันที่นำเข้า</label>
								<div class="col-md-6">
									<input name="day" value="${day }" class="form-control"   id="day" type="date"/>
								</div>
							</div>
							<div class="row form-group">
								<label class="col-md-offset-2 col-md-3 control-label">
									นำเข้าจาก</label>
								<div class="col-md-6">
									<input name="import_" class="form-control"  id="import" type="text"/>
								</div>
							</div>
							<div class="row form-group">
								<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ราคารวม</label>
								<div class="form-inline">
									<div class="input-group">
										<input type="text" class="form-control" id="distanceDiscontinued" size="14" style="height: 30px " />
										<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">บาท</span>
									</div>
								</div>
							</div>
							<div class="row form-group">
								<label  class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font>ลอต</label>
								<div class="col-md-6">
									<input  type="number" class="form-control"/>
								</div>
							</div>
							<input name="place" type="hidden" rows="2" cols="45" class="form-control" id="place" >
					</form>
						</div>
						<!-- คอลัม2 -->
					</div>
					<div class="row form-group">
						<center>
							<button type="button" class="btn btn-success btn-lg"
								id="add">
								<li class="glyphicon glyphicon-download"></li>&nbsp;เพิ่มการนำเข้า
							</button>
						</center>
					</div>
				</div>
</div>

<br>	
<div class="container">
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">ประวัติการนำเข้าวัสดุ/อุปกรณ์</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">ชื่อวัสดุ/อุปกรณ์</option>							
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
		<table class="table table-striped table-hover" class="form-control"
				class="font-nav" style="font-size: 18px;" border="1"
				bordercolor="#BDBDBD">
				<thead>
					<tr>
						<th>ลำดับที่</th>
						<th>วันที่นำเข้า</th>
						<th>รายการ</th>
						<!-- <th>จำนวนก่อนนำเข้า</th> -->
						<th>จำนวน</th>
						<th>หน่วย</th>
						<th>นำเข้าจาก</th>
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


		<%-- <div class=" row form-group">
			<!-- //ล่างสุด -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title" style="font-size: 24px; color: white;">
						<i class="fa fa-cart-plus"></i>&nbsp;ประวัติการนำเข้า
					</h3>
				</div>
				<div class="panel-body">
	<center>
		<div class="row form-group">
		
			<table class="table table-striped table-hover" class="form-control"
				class="font-nav" style="font-size: 18px;" border="1"
				bordercolor="#BDBDBD">
				<thead>
					<tr>
						<th>ลำดับที่</th>
						<th>วันที่นำเข้า</th>
						<th>รายการ</th>
						<!-- <th>จำนวนก่อนนำเข้า</th> -->
						<th>จำนวน</th>
						<th>หน่วย</th>
						<th>นำเข้าจาก</th>
						<th>ชื่อผู้นำเข้า</th>
						<c:if test="${sessionScope.privilege == 1}"><th>ยกเลิกการนำเข้า</th></c:if>
					</tr>
				</thead>
				
				<tbody style="text-align: center;" >
					<c:forEach items="${listtoolimport }" var="listim">
						<tr>
							<td><%=i++%></td>
							<td>${listim.day }</td>
							<td>${listim.tool.name }</td>
							<td>${listim.beforeQuantity }</td>
							<td>${listim.quantity}</td>
							<td>${listim.tool.unitTool.value }</td>
							<td>${listim.import_ }</td>
							<td>${listim.member.first } ${listim.member.last }</td>
							<c:if test="${sessionScope.privilege == 1}">
									<td>
				        					<button class="btn btn-danger"	value="${listim.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
				        			</td>
				        			</c:if>
						</tr>
					</c:forEach>
				</tbody>
				</table>
		</div>
	</center>
</div>
			</div>
		</div> --%>


	<jsp:include page="../footer.jsp" />
</body>
<script type="text/javascript">

$("#list").load('search_import_tool',{ id : 0 ,value : 0},function(){ 
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
function search(){ 
	$("#list").load('search_import_tool',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_import_tool',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
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
	}
	else{
		$.ajax({
		url:"imported_tool", //send to controller
		method:"POST",
		cache : false,
		data:$("#Toolimport").serialize() //idform
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
	}//end else
	e.preventDefault();
});



	function Listunit() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".toolid").val();
	
		//alert(selectedValue);
		if(selectedValue != 0){
		$.ajax({
			  url: "listToolUnit",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);

				$( "#oquantity" ).val( json.quantity );
			  $( "#unittool" ).val(json.unitTool.value );
			 // alert(json.unitTool.value);
			});
		}else{
			$( "#oquantity" ).val("" );
			$( "#unittool" ).val( "" );
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
							url:'cancle_import_tool',
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
