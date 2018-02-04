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
<title>บันทึกข้อมูลโค</title>
</head>
<body>
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
				<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">บันทึกข้อมูลโค</p>
					</div>
				</div>
				<div class="row">
					<hr>
				</div><br><br>
				<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<span class="fa fa-list-alt fa-lg"></span> บันทึกข้อมูลโค</a>
						</h4>
					</div>
				
				<div class="panel-body">
					<form:form action="cattle" modelAttribute="cattle" method="POST" id="cattle" commandName="sh">
						<div class="row form-group">
							<div class="col-md-6">
								<fieldset><br>
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> หมายเลขโค</label>
										<div class="col-md-6">
											<form:input path="num" id="num" type="text" class="form-control"/>
											<form:input path="id" id="id" type="hidden" class="form-control"/>
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
											<form:input path="name" id="" type="name" class="form-control"/>
										</div>
									</div>	
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ประเภทของโค</label>
									<div class="col-md-6">
										 	<div>
												<form:select class="form-control" id="typeCattle.id" path="typeCattle.id">
													<form:option value="">ประเภทของโค</form:option>
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
										 	
<%-- 										 		<form:select class="form-control" id="sex.id" path="sex.id">
													<form:option value="0">เพศ</form:option>
													<form:option value="1">เพศผู้</form:option>
													<form:option value="2">เพศเมีย</form:option>	
												</form:select> --%>
										 		<form:select class="form-control" id="sex" path="sex.id">
														<form:option value="0">เลือกเพศโค</form:option>
														
															<c:forEach items="${sex}" var="sex">
													
																<form:option value="${sex.id }" >&nbsp;${sex.value }</form:option>
															</c:forEach>
															
														</form:select>	
										 	</div>											
									</div>
									</div>									
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> สายพันธุ์</label>
									<div class="col-md-6">
										 	<div>
												<form:select class="form-control" id="statusBreed.id" path="Breed.id">
													<form:option value="0">สายพันธุ์</form:option>
															<c:forEach items="${stabreed}" var="stabreed">
																<c:if test="${Breed.id == stabreed.id }">
																	<form:option value="${Breed.id}" selected="selected">${stabreed.value}</form:option></c:if>
																		
																<c:if test="${Breed.id != stabreed.id }">
																<form:option value="${stabreed.id }">${stabreed.value}</form:option>
																</c:if>
																		
														</c:forEach>
												</form:select>
										 	</div>											
									</div>
									</div>				
									
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
							
<%-- 							<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ฝูงโค</label>
								<div class="col-md-6">
										 <div>
											<form:select class="form-control" id="groupCattle.id" path="groupCattle.id">
												<form:option value="0">ฝูงโค</form:option>
														<c:forEach items="${groupcattle}" var="groupcattle">
															<c:if test="${groupCattle.id == groupcattle.id }">
																<form:option value="${groupcattle.id}" selected="selected">${groupcattle.groupNameCattle}</form:option></c:if>
																		
															<c:if test="${groupCattle.id != groupcattle.id }">
															<form:option value="${groupcattle.id }">${groupcattle.groupNameCattle}</form:option>
															</c:if>
																		
													</c:forEach>
											</form:select>
										 </div>											
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
							</div>	 --%>				
																												
							<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> ชื่อฟาร์ม</label>
										<div class="col-md-6">
											<form:input path="farm" id="" type="farm" class="form-control"/>
										</div>
							</div>	
							
																
							</fieldset>
							</div>
						</div>
					</form:form><br>
								<div class="col-md-offset-8">
									<button name="action" value="Add" id="add"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>									

									<button name="action" value="cancel" onclick="cancel()"	
									class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>
										&nbsp; ยกเลิก
									</button>	<br><br><br>		
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
$(document).on('click','#add',function(e){
	$.ajax({
		url:"addcattle",
		method:"POST",
		cache : false,
		data:$("#cattle").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "เพิ่มโคเรียบร้อยแล้ว!", 
			type: "success",   
			showCancelButton: false,   
			confirmButtonText: "OK!",   
			closeOnConfirm: false }, 
			
			function(){   
				location.reload();
				});
	}).fail(function() {
		swal("ผิดพลาด", "ไม่สามารถเพิ่มโคได้!", "error");
	}); 

	e.preventDefault();
});
	
</script>

</body>
</html>