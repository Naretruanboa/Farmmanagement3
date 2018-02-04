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
		<form action="rawmaterialnutrient" method="POST"  id="rawmaterialnutrient">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title" style="font-size: 24px; color: white;">
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;อาหารหยาบ
						</h3>
					</div>
					<div class="panel-body">
					
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control"  name="raw1" id="raw1">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<form:option value="${group.id}" selected="selected">${group.name}</form:option></c:if>
															
													<c:if test="${group.id == 1}">
														<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
														</c:if>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw2" id="raw2">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw3" id="raw3">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw4" id="raw4">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw5" id="raw5">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
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
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw6" id="raw6">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
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
							<!-- <i class="fa fa-cart-arrow-down"></i> -->&nbsp;อาหารข้นสำเร็จรูป
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
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw7" id="raw7">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw8" id="raw8">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw9" id="raw9">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw10" id="raw10">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
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
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw11" id="raw11">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw12" id="raw12">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						
						<div class="row form-group">					
						<div class="col-md-6">
							 	<div>
			
									<select class="form-control" name="raw13" id="raw13">
											<option value="0">เลือกวัตถุดิบ</option>
												<c:forEach items="${rawlist}" var="group">
													<c:if test="${rawMaterial.id == group.id }">
														<option value="${group.id}" selected="selected">${group.name}</option></c:if>
															
													<c:if test="${rawMaterial.id != group.id }">
													<option value="${group.id }">${group.name}</option>
													</c:if>
															
											</c:forEach>
										</select>
							 	</div>											
						</div>
						</div>
						<br> <br>
						</div>
						
						</div>
						</div>
					</div>
				</div>
				<input value="${param.weight }" type="text" name="weight">
				<input value="${param.dm }" type="text" name="dm">
				<input value="${param.tdn}" type="text" name="tdn">
				<input value="${param.ndf }" type="text" name="ndf">
				<input value="${param.adf }" type="text" name="adf">
				<input value="${param.protein}" type="text" name="protein">
				<input value="${param.uip }" type="text" name="uip">
				<input value="${param.dip }" type="text" name="dip">
				<input value="${param.ca}" type="text" name="ca">
				<input value="${param.p }" type="text" name="p">
				<input value="${param.vitA }" type="text" name="vitA">
				<input value="${param.nfc}" type="text" name="nfc">
						</form>
						<div class="row form-group">
							<div class="col-md-offset-5 col-md-12">
								<button type="button" class="btn btn-default btn-lg" id="check1">
									<!-- <a href="setrawmaterialdairy"> -->ตกลง
								</button>
							</div>
							
						</div>
					</div>
					
			</div>
</div>
</div>
	
	<jsp:include page="../footer.jsp" />
	
<script type="text/javascript">
	
$(document).on('click','#check1',function(e){ //id of button
	var raw1 = $("#raw1").val(); 
	var raw2 = $("#raw2").val(); 
	var raw3 = $("#raw3").val(); 
	var raw4 = $("#raw4").val(); 
	var raw5 = $("#raw5").val(); 
	var raw6 = $("#raw6").val(); 
	var raw7 = $("#raw7").val(); 
	var raw8 = $("#raw8").val(); 
	var raw9 = $("#raw9").val(); 
	var raw10 = $("#raw10").val(); 
	var raw11 = $("#raw11").val(); 
	var raw12 = $("#raw12").val(); 
	var raw13 = $("#raw13").val(); 
	if(raw1 == raw2){
		swal("ผิดพลาด", ";klklk;l", "error");
		  }
	else{
		$.ajax({
		url:"setrawmaterialdairy", //send to controller
		method:"POST",
		cache : false,
		data:$("#rawmaterialnutrient").serialize() //idform
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "บันทึกการนำเข้าเรียบร้อยแล้ว!", 
			type: "success",   
			showCancelButton: false,   
			confirmButtonText: "OK!",   
			closeOnConfirm: false }, 
			
			function(){   
				window.location.href='setrawmaterialdairy';
			});
	}).fail(function() {
		 swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
	}); 
	}//end else
	e.preventDefault();
});
	

		</script>
	
</body>
</html>