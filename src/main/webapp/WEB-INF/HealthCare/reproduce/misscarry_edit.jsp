<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all"
	rel='stylesheet' type='text/css' />

<link href="<c:url value="/resources/css/easy-autocomplete.min.css" />" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/easy-autocomplete.themes.min.css" />" rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="<c:url value="/resources/js/jquery.easy-autocomplete.min.js" />"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">

<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>">
<title>โคแท้ง</title>
</head>

<script type="text/javascript">

function EnableDisableTextBox(checkbox) {
    var textBox = document.getElementById ("day_input");
    textBox.readOnly = !checkbox.checked;
}

function Init () {
    var checkBox1 = document.getElementById ("check1");

    EnableDisableTextBox (checkBox1);
}

</script>

<body onload="Init(); ">
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลโคแท้ง</p>
				</div>	
			</div>
			<div class="row">
				<hr>
			</div><br><br>
			<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> แก้ไขข้อมูลโคแท้ง</a>
						</h4>
					</div>	
					<div class="panel-body">
						<form:form action="misscarry_edited" method="POST" id="misscarry" modelAttribute="misscarry"  commandName="misscarry">
							<div class="row form-group">
								<div class="col-md-6">
									<fieldset><br>
										<!-- <div class="row form-group"> -->
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> หมายเลขแม่พันธุ์</label>
												<div class="col-md-6">
							 						<div>
							 						<form:select class="form-control" id="cattle.id" path="cattle.id">
														<form:option value="0">เลือกรายการ</form:option>
															<c:forEach items="${memcat}" var="mon">
															<c:if test="${cattle.id == mom.id }">
																	<form:option value="${mom.id}" selected="selected">${mom.num}</form:option></c:if>
															
														<c:if test="${cattle.id != mom.id }">
														<form:option value="${mon.id }">${mon.value}</form:option>
														</c:if>
															
														</c:forEach>
													</form:select>
													
																
							 															
													<!-- <input path="" id="" type="text" class="form-control"/> -->
						
												</div>
										</div>
										
											<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="white">*</font> เบอร์แรกเกิด </label>
								<div class="col-md-6">
								<input type="text" class="form-control" value="${missId.cattle.numDate}" disabled="disabled" />
									<form:input path="cattle.id" id="cattle.id" type="hidden" class="form-control"  />  
									
									
								</div>
							</div>
										
										<input  value = ""  type="text" class="form-control" />
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>วันที่ผสมพันธุ์</label>
											<div class="col-md-6">
												<form:input  path="misscarry.cattle.num" id="cattle.id" type="text" class="form-control" />
											</div>
										</div>										
										
										
										<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ผู้บันทึก </label>
								<div class="col-md-6">
														
									<form:select class="form-control" id="member.id" path="member.id">
										<form:option value="0">ผู้บันทึก</form:option>
												<c:forEach items="${ulist}" var="user">
													<c:if test="${member.id == user.id }">
														<form:option value="${un.id}" selected="selected">${user.first}&nbsp;${user.last }</form:option></c:if>
															
													<c:if test="${member.id != user.id }">
														<form:option value="${user.id }">${user.first}&nbsp;${user.last }</form:option>
													</c:if>
															
											</c:forEach>
									</form:select>
									
								
									
								</div>
							</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>แจ้งเตือนเหนี่ยวนำการกลับสัด</label>
											<div class="col-md-6">
												<div class="input-group">
												<c:forEach items="${dAlertList}" var="d">
												
														<input name="day_input" id="day_input" value="${d.value}" type="text" class="form-control" />
													
														<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>  
													</c:forEach>  	
												
													
												</div>
												<label class="checkbox">
													<input type="checkbox" id="check1" onclick="EnableDisableTextBox(this)"/>กำหนดเอง
												</label>	
												
											</div>
										</div>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="White">* </font>หมายเหตุ</label>
											<div>
												<form:textarea rows="3" cols="45" class="form-control" path="note" id="note" type="text" ></form:textarea>
											</div>
										</div>

																				
									</fieldset>
								</div>
							</div>
						</form:form>
								<div class="col-md-offset-8">
									<button name="action" value="Add" id="add" 
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									


									<button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
									</button>	<br><br><br>		
								</div>
						
					</div>						
					</div>				
				</div>
			</div>					
</div>
</div>
<%@ include file="../footer.jsp"%><br><br>
<script type="text/javascript">

function cancel() {
	location.reload();
} 

// ยืนยันบันทึก
 function edit(){
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลการสูญเขาหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		confirmButtonText: "ต้องการ",
		cancelButtonText: "ไม่ต้องการ",   
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#member\\.id").val() == "0"){
					swal("กรุณากรอกผู้บันทึก");
				}else if($("#TypeHorn\\.id").val() == "0"){
					swal("กรุณากรอกชนิดการสูญเขา");
				}else if($("#cattle\\.id").val() == ""){	
					swal("กรุณากรอกปีเกิด");
				}else if($("#date").val() == ""){
					swal("กรุณากรอกวันที่สูญเขา")
				}else if($("#note").val() == ""){
					swal("กรุณากรอกหมายเหตุการสูญเขา")
				}else{

				$.post('misscarry_edited',$("#misscarry").serialize(),
				      function (result) {
				     	swal({	title: "Success!",   
							/* text: "หมายเลขยา "+result,  */   
							timer: 2000,   
							type: "success",
							showConfirmButton: false },
							function(){   
								window.location.href='misscarry_list'; 
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
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all"
	rel='stylesheet' type='text/css' />

<link href="<c:url value="/resources/css/easy-autocomplete.min.css" />" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/easy-autocomplete.themes.min.css" />" rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="<c:url value="/resources/js/jquery.easy-autocomplete.min.js" />"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">

<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>
<title>แก้ไขข้อมูลโรค</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
	<br><br>
	<div id="wrapper">
		<div id="content">
			<div class="container">
				<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลโรค</p>
					</div>
				</div>
				<div class="row">
					<hr>
				</div>
				<br> <br>
				<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<span class="fa fa-list-alt fa-lg"></span> แก้ไขข้อมูลโรค 
						</h4>
				</div>
				
				
							
				<div class="panel-body">
							<form:form action="misscarry_editGed" method="POST"  id="missCarry"
							modelAttribute="missCarry"  commandName="missCarry" >
							<form:input path="id" type="hidden"  />
						<div class="row form-group ">
						<div class="col-md-6 ">
						
						<fieldset><br>
										
						<%-- 	<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="white">*</font> เบอร์แรกเกิด sadafaf</label>
								<div class="col-md-6">
							<input type="text" class="form-control"  /> 
									<form:input path="" id="" class="form-control"  />  
									
									
								</div>
							</div> --%>
							
							<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> วันที่สูญเขา </label>
								<div class="col-md-6">
									<form:input path="note" id="note" type="text" class="form-control" />
									
								</div>
							</div>
							
							
							
							<%-- <div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> วันที่สูญเขา </label>
								<div class="col-md-6">
									<form:input path="date" id="date" type="text" class="form-control" />
									
								</div>
							</div>
							
							<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="white">*</font> หมายเหตุ </label>
								<div class="col-md-6">
									<form:input path="note" id="note" type="text" class="form-control" />
									
								</div>
							</div> --%>
							
							</fieldset>
							</div>
							
							<%-- <div class="col-md-6">
								<fieldset><br>
							
								
								<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> วิธีที่ใช้ในการสูญเขา</label>
												<div class="col-md-6">
							 						<div>
							 						
							 						<form:select class="form-control" id="TypeHorn.id" path="TypeHorn.id">
														<form:option value="0">เลือกรายการ</form:option>
															<c:forEach items="${typehorn}" var="typehorn">
															<c:if test="${TypeHorn.id == typehorn.id }">
																	<form:option value="${TypeHorn.id}" selected="selected">${typehorn.value}</form:option></c:if>
															
														<c:if test="${TypeHorn.id != typehorn.id }">
														<form:option value="${typehorn.id }">${typehorn.value}</form:option>
														</c:if>
															
														</c:forEach>
													</form:select>
														
							 						</div>																				
													<!-- <input path="" id="" type="text" class="form-control"/> -->
													<!-- <input path="id" id="id" type="hidden" class="form-control"/> -->
												</div>											
										</div>	
						
							<div class="row form-group">
								<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ผู้บันทึก </label>
								<div class="col-md-6">
														
									<form:select class="form-control" id="member.id" path="member.id">
										<form:option value="0">ผู้บันทึก</form:option>
												<c:forEach items="${ulist}" var="user">
													<c:if test="${member.id == user.id }">
														<form:option value="${un.id}" selected="selected">${user.first}&nbsp;${user.last }</form:option></c:if>
															
													<c:if test="${member.id != user.id }">
														<form:option value="${user.id }">${user.first}&nbsp;${user.last }</form:option>
													</c:if>
															
											</c:forEach>
									</form:select>
									
								
									
								</div>
							</div>
							
							</fieldset>
						
						</div>  --%>
						</div>
						</form:form>
				</div>				
							
								<div class="col-md-offset-8">
									<button name="action" value="Add" id="add" onclick="edit()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button>
									

									<a href="misscarry_list"><button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
									</button>	<br><br><br>	</a>	
					</div>
					</div>
					</div>
					<div>
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
	 function edit(){
		swal({	title: "ยืนยันบันทึกข้อมูล?",   
			text: "คุณต้องการยืนยันบันทึกข้อมูลการสูญเขาหรือไม่!",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#55c7dd",   
			confirmButtonText: "ต้องการ",
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   
			closeOnCancel: false }, 
			function(isConfirm){   
				if (isConfirm) {
					if($("#member\\.id").val() == "0"){
						swal("กรุณากรอกผู้บันทึก");
					}else if($("#TypeHorn\\.id").val() == "0"){
						swal("กรุณากรอกชนิดการสูญเขา");
					}else if($("#cattle\\.id").val() == ""){	
						swal("กรุณากรอกปีเกิด");
					}else if($("#date").val() == ""){
						swal("กรุณากรอกวันที่สูญเขา")
					}else if($("#note").val() == ""){
						swal("กรุณากรอกหมายเหตุการสูญเขา")
					}else{

					$.post('misscarry_editGed',$("#missCarry").serialize(),
					      function (result) {
					     	swal({	title: "Success!",   
								/* text: "หมายเลขยา "+result,  */   
								timer: 2000,   
								type: "success",
								showConfirmButton: false },
								function(){   
									window.location.href='misscarry_list'; 
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