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
<title>การสั่งซื้อน้ำเชื้อ</title>
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
					<p style="font-size: 28px; font-weight: 700; color: white;">การสั่งซื้อน้ำเชื้อโค</p>
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
				<form:form action="ordered_semen" method="POST"  commandName="ordersemen" >
					<c:forEach items="${ulist }" var="m">
									<form:input path="member.id" type="hidden" value="${m.id}"/>
								</c:forEach>
					<div class="col-md-6"> <!-- คอลัมแรก -->	
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label">วันที่สั่งซื้อ</label>
								<div class="col-md-6">
							 		<form:input path="day" value="${day }" type="date" class="form-control" id="day" />													
								</div>
						</div>				
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> ชื่อน้ำเชื้อ/พ่อพันธุ์</label>
								<div class="col-md-6">
									<form:select path="semen.id" class="form-control Semenid" id="Semenid" onchange="listquantitysemen();">
									 	<form:option value="0">เลือกชื่อน้ำเชื้อ/พ่อพันธุ์</form:option>
										<c:forEach items="${semen }" var="semen">
											<c:if test="${Semen.id == semen.id }">
												<form:option value="${semen.id }" selected="selected">${semen.nameCattle }</form:option>
											</c:if>
											<c:if test="${Semen.id != semen.id }">
												<form:option value="${semen.id }">${semen.nameCattle }</form:option>
											</c:if>
										</c:forEach>
									</form:select>
									
								</div>
						</div>
						</div><!--  //จบคอลัมแรก -->
					<div class="col-md-6 "> <!-- คอลัม2 -->			
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"> จำนวนคงคลัง</label>
							<div class="col-md-6">
								<div class="input-group">
							 		<input type="text" class="form-control" id="oquantity" readonly="true">													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">หลอด (โด๊ส)</span>
									</div>		
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> จำนวนที่สั่งเพิ่ม</label>
							<div class="col-md-6">
								<div class="input-group">
							 		<form:input path="quantity" type="number" class="form-control"/>													
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">หลอด (โด๊ส)</span>
									</div>	
							</div>
						</div>
				</form:form>		
					</div> <!-- คอลัม2 -->

				
				<div class="row form-group" align="center">
					<button type="button" class="btn btn-success btn-lg"
							id="btn_select" onclick="order()">
							<li class="glyphicon glyphicon-download"></li>&nbsp;เพิ่มการสั่งซื้อ
					</button>
				</div>
				</div>
		</div>
		
		</div><!-- //กลาง 
	</div> <!-- //closeบนสุด -->
</div>


	

<jsp:include page="../footer.jsp"/>

</body>
<script type="text/javascript">
$("#list").load('search_order_semen',{ id : 0 ,value : 0},function(){ 
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
function search(){ 
	$("#list").load('search_order_semen',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_order_semen',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});

function order(){
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
				if ($("#day").val() == ""){
					swal("กรุณากรอกวันที่สั่งซื้อ");
				}else if($("#Semenid").val() == 0){
					swal("กรุณาเลือกน้ำเชื้อ/ชื่อพ่อพันธุ์");
				}else if($("#quantity").val() == "" || $("#quantity").val() <= 0){
					swal("กรุณากรอกจำนวนให้ถูกต้อง");
				}else{
				$.post('ordered_semen',$("#ordersemen").serialize(),
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
						url:'cancle_order_semen',
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