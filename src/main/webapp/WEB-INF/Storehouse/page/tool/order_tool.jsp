<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all" rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>
<title>การสั่งซื้อวัสดุ/อุปกรณ์</title>
</head>
<%@ include file="../menu.jsp"%>
<% int  i=1;%>
<body>
<div class="container">
<br><br>
		<div class="row form-group">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
					align="center">
					<p style="font-size: 28px; font-weight: 700; color: white;">การสั่งซื้อวัสดุ/อุปกรณ์</p>
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
					<form:form action="ordered_tool" method="POST"  commandName="Toolorder" >
						<c:forEach items="${ulist }" var="m">
						<form:input path="member.id" type="hidden" value="${m.id}"/>
						</c:forEach>
						<div class="row form-group">

						<div class="col-md-6">
							<!-- คอลัมแรก -->
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"> วันที่สั่งซื้อ</label>
								<div class="col-md-3">
									<form:input  path="day" value="${day }" type="date" class="form-control"  id="day" />
									</div>
							</div>
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"><font
									color="red">*</font> ชื่อวัสดุ/อุปกรณ์</label>
								<div class="col-md-3">
									<form:select path="Tool.id" class="form-control toolid"  id="toolid" onchange="Listunit();">
								
										<form:option value="0">เลือกชื่อวัสดุ/อุปกรณ์</form:option>
										<c:forEach items="${tool }" var="tool">
											<c:if test="${Tool.id == tool.id }">
												<form:option value="${tool.id }" selected="selected">${tool.name }</form:option>
										</c:if>
											<c:if test="${Tool.id != tool.id }">
												<form:option value="${tool.id }">${tool.name }</form:option>
											</c:if>
										</c:forEach>
									</form:select>

								</div>

							</div>
							<div class="row form-group">

								<label class="col-md-offset-1 col-md-3 control-label"> จำนวนในคลัง</label>
								<div class="col-md-6">
									<input type="text" class="form-control"  id="oquantity" readonly="true">
									
								</div>
							</div>
							

						</div>
						<!--  //จบคอลัมแรก -->
						<div class="col-md-4 ">
							<!-- คอลัม2 -->
							
							<div class="row form-group">
								<label class="col-md-offset-2 col-md-3 control-label">
									จำนวนที่สั่งเพิ่ม</label>
								<div class="col-md-6">
									<form:input path="quantity" type="number" class="form-control" id="quantity" />
								</div>
							</div>
							<div class="row form-group">
								<label class="col-md-offset-2 col-md-3 control-label">
									หน่วย</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="unittool" readonly="true">
								</div>
							</div>
							</div>
							</div>
							
					</form:form>
							
				</div>
				<div class="row form-group">
						<center>
							<button type="button" class="btn btn-success btn-lg"
								id="btn_select" onclick="ordertool()">
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
								<option value="1">ชื่อวัสดุ/อุปกรณ์</option>							
								<option value="2">ผู้สั่งซื้อ</option>
								<option value="2">วันที่สั่งซื้อ</option>
						</select> <input id="search" class="form-control search-query "oninput="search()"
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
	

<jsp:include page="../footer.jsp" />
</body>
<script type="text/javascript">
$("#list").load('search_order_tool',{ id : 0 ,value : 0},function(){ 
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
function search(){ 
	$("#list").load('search_order_tool',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_order_tool',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});


function ordertool(){
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
				if($("#toolid").val() == 0){
					swal("กรุณากรอกชื่อวัสดุอุปกรณ์ให้ถูกต้อง");
				}else if($("#quantity").val() == "" || $("#quantity").val() <= 0){
					swal("กรุณากรอกจำนวนให้ถูกต้อง");
				}else if($("#day").val() == ""){
					swal("กรุณากรอกวันที่สั่งซื้อ");
				}else{
				$.post('ordered_tool',$("#Toolorder").serialize(),
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
							url:'cancle_order_tool',
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