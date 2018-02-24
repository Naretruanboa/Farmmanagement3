<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all"
	rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>
<title>แก้ไขข้อมูลโค</title>
</head>
<body>
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
				<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลโค</p>
					</div>
				</div>
				<div class="row">
					<hr>
				</div><br><br>
				<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<span class="fa fa-list-alt fa-lg"></span> แก้ไขข้อมูลโค</a>
						</h4>
					</div>
				
				<div class="panel-body">
					<form:form action="edited_cattle" modelAttribute="cattle" method="POST" id="cattle" commandName="shc">
						<form:input path="id" id="id" type="hidden" class="form-control"/>
						<div class="row form-group">
							<div class="col-md-6">
								<fieldset><br>
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> หมายเลขโค</label>
										<div class="col-md-6">
											<form:input path="num" id="num" type="text" class="form-control"/>
											
										</div>
									</div>
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> *</font> เบอร์แรกเกิด</label>
										<div class="col-md-6">
											<form:input path="numDate" id="numDate" type="" class="form-control"/>
										</div>
									</div>
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> *</font> ชื่อโค</label>
										<div class="col-md-6">
											<form:input path="name" id="name" type="name" class="form-control"/>
										</div>
									</div>	
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ประเภทของโค</label>
									<div class="col-md-6">
										 	<div>
												<form:select class="form-control" id="typeCattle.id" path="typeCattle.id">
													<form:option value="0">ประเภทของโค</form:option>
															<c:forEach items="${type}" var="typecat">
																<c:if test="${typeCattle.id == typecat.id }">
																	<form:option value="${typeCattle.id}" selected="selected">${typecat.value}</form:option></c:if>
																		
																<c:if test="${typeCattle.id != typecat.id }">
																<form:option value="${typecat.id }">${typecat.value}</form:option>
																</c:if>
																		
														</c:forEach>
												</form:select>
										 	</div>											
									</div>
									</div>																										
								
								<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">* </font> วัน/เดือน/ปี เกิด</label>
									<div class="col-md-6">
										<form:input path="calved" id="calved"  type="date" class="form-control"/>
									</div>
								</div>
								
							<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> เพศ</label>
									<div class="col-md-6">
										 	<div>
												<form:select class="form-control" id="sex.id" path="sex.id">
													<form:option value="1">เพศผู้</form:option>
													<form:option value="2">เพศเมีย</form:option>	

												</form:select>
										 	</div>											
									</div>
									</div>									
									<%-- 	<input value="${cattleid.typeCattle.id }" />	 --%>
										<c:if test="${cattleid.typeCattle.id == 1}">				
											<div class="row form-group">
												<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> สายพันธุ์</label>
											<div class="col-md-6">
												 	<div>
														<form:select class="form-control" id="Breed.id" path="Breed.id">
															<form:option value="0">สายพันธุ์</form:option>
																	<c:forEach items="${stabreed}" var="stabreedn">
																		< <c:if test="${Breed.id == stabreedn.id }">
																			<form:option value="${Breed.id}" selected="selected">${stabreedn.value}</form:option></c:if> 
																				
																		<c:if test="${Breed.id != stabreedn.id }">
																		<form:option value="${stabreedn.id }">${stabreedn.value}</form:option>
																		</c:if>
																				
																</c:forEach>
														</form:select>
												 	</div>											
											</div>
											</div>				
										</c:if>	
										
										<c:if test="${cattleid.typeCattle.id == 2}">
										
											<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> สายพันธุ์</label>
											<div class="col-md-6">
											 	<div>
													<form:select class="form-control" id="TypeDairy.id" path="TypeDairy.id">
														<form:option value="0">สายพันธุ์</form:option>
																<c:forEach items="${stadairy}" var="stadairy">
																	<c:if test="${TypeDairy.id == stadairy.id }">
																		<form:option value="${TypeDairy.id}" selected="selected">${stadairy.value}</form:option></c:if>
																			
																	<c:if test="${TypeDairy.id != stadairy.id }">
																	<form:option value="${stadairy.id }">${stadairy.value}</form:option>
																	</c:if>
																			
															</c:forEach>
													</form:select>
											 	</div>											
									</div>
									</div>
										
										</c:if>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> </font>น้ำหนักแรกเกิด</label>
											<div class="col-md-6">
												<div class="input-group">
													<form:input path="weightBirth" id="weightBirth" type="text" class="form-control" />
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>																
								
									<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> </font>น้ำหนัก 1 ปี</label>
											<div class="col-md-6">
												<div class="input-group">
													<form:input path="weight" id="weight" type="text" class="form-control" />
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>			
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> </font>น้ำหนักหย่านม</label>
											<div class="col-md-6">
												<div class="input-group">
													<form:input path="weightWean" id="weightWean" type="text" class="form-control" 	/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>									
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> รหัสพ่อ</label>
										<div class="col-md-6">
											<form:input path="faId" id="faId" type="" class="form-control"/>
										</div>
									</div>		
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> รหัสแม่</label>
										<div class="col-md-6">
											<form:input path="maId" id="maId" type="" class="form-control"/>
										</div>
									</div>										
						
								</fieldset>
							</div>
							<br>
							<div class="row form-group">
							<fieldset>
							
							<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> สีโค</label>
								<div class="col-md-6">
										 <div>
											<form:select class="form-control" id="color.id" path="color.id">
												<form:option value="0">สีโค</form:option>
														<c:forEach items="${colo}" var="colo">
															<c:if test="${color.id == colo.id }">
																<form:option value="${color.id}" selected="selected">${colo.value}</form:option></c:if>
																		
															<c:if test="${color.id != colo.id }">
															<form:option value="${colo.id }">${colo.value}</form:option>
															</c:if>
																		
													</c:forEach>
											</form:select>
										 </div>											
								</div>
							</div>		
							
							<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ฝูงโค</label>
								<div class="col-md-6">
										 <div>
											<form:select class="form-control" id="groupCattle.id" path="groupCattle.id">
												<form:option value="0">ฝูงโค</form:option>
														<c:forEach items="${groupcattle}" var="groupcattle">
															<c:if test="${groupCattle.id == groupcattle.id }">
																<form:option value="${groupcattle.id}" selected="selected">${groupcattle.value}</form:option></c:if>
																		
															<c:if test="${groupCattle.id != groupcattle.id }">
															<form:option value="${groupcattle.id }">${groupcattle.value}</form:option>
															</c:if>
																		
													</c:forEach>
											</form:select>
										 </div>											
								</div>
							</div>		
							
													<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> สถานะโค</label>
												<div class="col-md-6">
							 						<div>
														<form:select class="form-control" id="statusTreat.id" path="statusTreat.id">
															<%-- <form:option value="0">ผู้บันทึก</form:option> --%>
																	<c:forEach items="${statT}" var="statT">
					
																			<form:option value="${statT.id }">${statT.value}</form:option>
																				
																</c:forEach>
														</form:select>
							 						</div>																				
													<!-- <input path="" id="" type="text" class="form-control"/> -->
													<!-- <input path="id" id="id" type="hidden" class="form-control"/> -->
												</div>											
										</div>	
							
						<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> คอก</label>
								<div class="col-md-6">
										 <div>
											<form:select class="form-control" id="stall.id" path="stall.id">
												<form:option value="0">คอก</form:option>
														<c:forEach items="${stal}" var="stal">
															<c:if test="${stall.id == stal.id }">
																<form:option value="${stall.id}" selected="selected">${stal.value}</form:option></c:if>
																		
															<c:if test="${stall.id != stal.id }">
															<form:option value="${stal.id }">${stal.value}</form:option>
															</c:if>
																		
													</c:forEach>
											</form:select>
										 </div>											
								</div>
							</div>		 			
																												
							<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> ชื่อฟาร์ม</label>
										<div class="col-md-6">
											<form:input path="farm" id="" type="farm" class="form-control"/>
										</div>
							</div>	
							
	<!-- 			START		------------------------------------------------------	 -->
								<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ระบุฟาร์ม</label>
								<div class="col-md-6">
										 <div>
											<form:select class="form-control" type="hidden" id="farmtId.id" path="farmtId.id">
												 <form:option value="0">กรุณาเลือกฟาร์ม</form:option> 
														<c:forEach items="${farmtid}" var="farm">
															<c:if test="${Farm.id == farm.id }">
																<form:option value="${Farm.id}" selected="selected">${farm.nameThai}</form:option></c:if>
																		
															<c:if test="${Farm.id != farm.id }">
															<form:option value="${farm.id }">${farm.nameThai}</form:option>
															</c:if>
																		
													</c:forEach>
											</form:select>
										 </div>											
								</div>
							</div>		
							
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="cattlePedigree.id" id="cattlePedigree.id" type="hidden" class="form-control"/>
										</div>
									</div>			
									
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="statusBorn.id" id="statusBorn.id" type="hidden" class="form-control"/>
										</div>
									</div>	
									
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="typeDairy.id" id="typeDairy.id" type="hidden" class="form-control"/>
										</div>
									</div>	
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="numEar" id="numEar" type="hidden" class="form-control"/>
										</div>
									</div>		
										<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="price" id="price" type="hidden" class="form-control"/>
										</div>
									</div>		
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="priceStart" id="priceStart" type="hidden" class="form-control"/>
										</div>
									</div>	
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="priceEnd" id="priceEnd" type="hidden" class="form-control"/>
										</div>
									</div>	
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="registerNum" id="registerNum" type="hidden" class="form-control"/>
										</div>
									</div>	
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="owner" id="owner" type="hidden" class="form-control"/>
										</div>
									</div>	
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="breeder" id="breeder" type="hidden" class="form-control"/>
										</div>
									</div>	
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="alert1" id="alert1" type="hidden" class="form-control"/>
										</div>
									</div>
										<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="alert2" id="alert2" type="hidden" class="form-control"/>
										</div>
									</div>
									<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="alert3" id="alert3" type="hidden" class="form-control"/>
										</div>
									</div>
											<div class="row form-group">
										
										<div class="col-md-6">
											<form:input path="alert4" id="alert4" type="hidden" class="form-control"/>
										</div>
									</div>
	<!-- 			END		------------------------------------------------------	 -->							
							</fieldset>
							</div>
						</div>
					</form:form><br>
								<div class="col-md-offset-8">
								<button name="action" value="edit" id="edit" onclick="editcc()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>					

									<a href="cattlelist">	<button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
									</button><br><br><br>			</a>	
								</div>
				</div>
			</div>
		</div>	
</div>
</div>
<%@ include file="../footer.jsp"%>

<script type="text/javascript">

	function cancel() {
		location.reload();
	} 
	
	// ยืนยันบันทึก
	 function editcc(){
		swal({	title: "ยืนยันบันทึกข้อมูล?",   
			text: "คุณต้องการยืนยันบันทึกข้อมูลโคหรือไม่!",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#55c7dd",   
			confirmButtonText: "ต้องการ",
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   
			closeOnCancel: false }, 
			function(isConfirm){   
				if (isConfirm) {
					if($("#num").val() == ""){
						swal("กรุณากรอกหมายเลขโค");
					}else if($("#numDate").val() == ""){
						swal("กรุณากรอกเบอร์แรกเกิด");
					}else if($("#name").val() == ""){
						swal("กรุณากรอกชื่อโค");
					}else if($("#typeCattle\\.id").val() == "0"){
						swal("กรุณาเลือกประเภทของโค");
					}else if($("#calved").val() == ""){
						swal("กรุณากรอกวันเกิด");		
					}else if($("#sex\\.id").val()=="0"){
						swal("กรุณาเลือกเพศ");
					}else if($("#Breed\\.id").val() == "0"){
						swal("กรุณาเลือกสายพันธุ์");	
					}else if($("#weightBirth").val() == ""){
						swal("กรุณาระบุน้ำหนักแรกเกิด");
					}else if($("#weight").val() == ""){
						swal("กรุณาระบุน้ำหนัก");	
					}else if($("#weightWean").val() == ""){
						swal("กรุณาระบุน้ำหนัก");
					}else if($("#faId").val() == ""){
						swal("กรุณากรอกรหัสพ่อ");
					}else if($("#maId").val() == ""){
						swal("กรุณากรอกรหัสแม่");
					}else if($("#color\\.id").val() == "0"){
						swal("กรุณากรอกสีโค");	
					}else if($("#groupCattle\\.id").val() == "0"){
						swal("กรุณากรอกฝูง");		
					}else if($("#statusCattle\\.id").val() == "0"){
						swal("กรุณาเลือกเพศ");
					}else if($("#stall\\.id").val() == "0"){
						swal("กรุณาเลือกคอก");						
					}else if($("#farm").val() == ""){
						swal("กรุณากรอกฟาร์ม");	
					}else if($("#farmtId\\.id").val() == "0"){
						swal("กรุณากรอกฟาร์ม");						
					}else{

					$.post('edited_cattle',$("#cattle").serialize(),
					      function (result) {
					     	swal({	title: "Success!",   
								/* text: "หมายเลขยา "+result,  */   
								timer: 200,   
								type: "success",
								showConfirmButton: false },
								function(){   
									window.location.href='cattlelist'; 
							});
							
							/* setInterval(function(){location.reload()}, 2000); */
						})
					}
					} else { 
					swal({	title: "Cancelled!",   
							text: "คุณได้ยกเลิกการบันทึกข้อมูล",   
							timer: 1000,   
							type: "error",
							showConfirmButton: false 
					});
				} 
			}
		);
	 }
	
</script>

</body>
</html>