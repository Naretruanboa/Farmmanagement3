<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>การนำเข้ายา</title>
<%@ include file="../menu.jsp"%>
</head>
<body>
<%int i=1; %>
<div class="container">
<br><br>
	<div class=" row form-group"> <!-- //บนสุด -->
		<div class="col-md-3">
			<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
				align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">การนำเข้ายา</p>
			</div>
		</div>
	</div>
		<div class=" row form-group"> <!-- //กลาง -->
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title" style="font-size: 24px; color: white;"> <i class="fa fa-cart-arrow-down"></i>&nbsp;เพิ่มรายการนำเข้า</h3>
			</div>
			<div class="panel-body">
				<!-- <h1>กลาง</h1> -->
				<div class="row form-group">
				
					<form action="imported_medicine" method="POST"  id="Medimport">
						<c:forEach items="${ulist }" var="m">
						<input name="memberid" type="hidden" value="${m.id}"/>
						</c:forEach>
					<div class="col-md-6"> <!-- คอลัมแรก -->
						<div class="row form-group">
							<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> วันที่นำเข้า</label>
							<div class="col-md-6">
							 	<input id="day" name="day" value="${day }" class="form-control" type="date">											
							</div>
						</div>	
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> ชื่อยา</label>
								<div class="col-md-6">
									<select class="form-control Medicineid" id="Medicineid" name="Medicineid" onchange="Listunit();">
									 	<option value="0">เลือกชื่อยา (ทางการค้า)</option>
										<c:forEach items="${medicine }" var="med">
										<c:if test="${Medicine.id == med.id }">
												<option value="${med.id }" selected="selected">${med.tradeName }</option>
										</c:if>
										<c:if test="${Medicine.id != med.id }">
											<option value="${med.id }">${med.tradeName }</option>
										</c:if>
										</c:forEach>
									</select>
								
								</div>
						</div>
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label">จำนวนคงคลัง</label>
								<div class="col-md-6">
									<input name="beforeQuantity" id="oquantity" type="text" class="form-control" readonly="true">
								</div>
						</div>
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> จำนวนที่นำเข้า</label>
								<div class="col-md-6">
									<input name="quantity" id="quantity" type="number" class="form-control" >
								</div>
						</div>
						<div class="row form-group">
		
								<label class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> หน่วย</label>
								<div class="col-md-6">
									<input id="unitmed" type="text" class="form-control" readonly="true">
								</div>
						</div>
						
					</div><!--  //จบคอลัมแรก -->
					<div class="col-md-4 "> <!-- คอลัม2 -->
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> วันที่ผลิต</label>
							<div class="col-md-6">
								<input name="dayMFD" id="dayMFD" type="date" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font> วันที่หมดอายุ</label>
							<div class="col-md-6">
								<input name="dayEXP" id="dayEXP" type="date" class="form-control" >
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"> นำเข้าจาก</label>
							<div class="col-md-6">
								<input name="import" id="import" class="form-control" type="text">
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font style="color: red;">* </font> ราคารวม</label>
							<div class="col-md-6">
								<div class="input-group">
									<input name="price" id="price" class="form-control" type="number">
									<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">บาท</span>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<label  class="col-md-offset-1 col-md-3 control-label"><font color="red">*</font>ลอต</label>
							<div class="col-md-6">
								<input  type="number" class="form-control" id="lot"/>
							</div>
						</div>
						<input name="place" type="hidden" rows="2" cols="45" class="form-control" id="place" >
						
					</div> <!-- คอลัม2 -->
				</form>
				
				</div>
				<div class="row form-group">
					<center><button type="button" class="btn btn-success btn-lg" id="add"><li class="glyphicon glyphicon-download"></li>&nbsp;เพิ่มการนำเข้า</button></center>
				</div>
			</div>
		</div>

		</div><!-- //กลาง -->
</div>
				
<div class="container">
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">ประวัติการนำเข้ายา</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">ชื่อยา</option>							
								<option value="2">ผู้นำเข้า</option>
								<option value="3">วันที่นำเข้า</option>
						</select> <input id="search" class="form-control search-query "
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
									<th>วันที่ผลิต</th>
									<th>วันที่หมดอายุ</th>
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
	
<jsp:include page="../footer.jsp"/>
</body>
<script type="text/javascript">
//													ค้นหา
$("#list").load('search_import_medicine',{ id : 0 ,value : 0},function(){ 
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
$(document).on('keyup','#search',function(e){
	$("#list").load('search_import_medicine',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
		$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
			for(i=0 ;i<=10;i++){
				if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
					$("[id=pageNum]").eq(i).addClass("active");
				}
			}
		});
	});
});


$(document).on('click','#pageNum',function(e){ 
	 var id =  $('[id=pageNum]').index(e.target);
	 $("#list").load('search_import_medicine',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});

//***************************************************************************************************\\
$(document).on('click','#add',function(e){ //id of button
	var quantity = $('#quantity').val();
	if(quantity <= 0 || quantity == ""){
		swal("ผิดพลาด", "กรุณาระบุจำนวนให้ถูกต้อง!", "error");
	}
	else{
	
	$.ajax({
		url:"imported_medicine", //send to controller
		method:"POST",
		cache : false,
		data:$("#Medimport").serialize() //idform
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
}//end else if
	e.preventDefault();
});

function Listunit() { //เอาหน่วยที่ใช้ในคลังอออกมา
	var selectedValue = $(".Medicineid").val();  //หลังclass form control
	//alert(selectedValue);
	if(selectedValue != 0){
	$.ajax({
		  url: "listMedUnit",
		  data : {id:selectedValue}
		}).done(function(element) {
			var json = JSON.parse(element);
		
			$( "#oquantity" ).val( json.quantity );
		  	$( "#unitmed" ).val(json.unitMedicine.value );
		  
		  	//alert(json.unitMedicine.value);
		});
	}else{
		$( "#oquantity" ).val("" );
		$( "#unitmed" ).val( "" );
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
						url:'cancle_imported_medicine',
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
