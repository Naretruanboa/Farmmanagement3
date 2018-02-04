<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ข้อมูลยา</title>
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
						<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลยารักษาโรค</p>
					</div>
				</div>
				<div class="row">
					
				</div>
				<br>
				<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
						<span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลยา</a>
						</h4>
				</div>
							
				<div class="panel-body">
					
						<div class="row form-group ">
						<div class="col-md-6 ">
						<fieldset><br>
												
							<div class="row form-group">
												<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> ชื่อทางการค้า</label>
												<div class="col-md-6">

													<input value="${medicinelist.tradeName }" type="text"
														class="form-control" disabled="true"/>
														

												</div>
											</div>
					
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label"> ชื่อวิทยาศาสตร์</label>
						<div class="col-md-6">
							 	<input type="text" class="form-control" id="scientificName" value="${medicinelist.scientificName}" disabled="true"/>													
						</div>
						</div>
						
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label"> ชื่อสามัญ</label>
						<div class="col-md-6">
							 	<input type="text" class="form-control" id="commonName" value="${medicinelist.commonName}" disabled="true"/>													
						</div>
						</div>
						

						
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> กลุ่มยา</label>
						<div class="col-md-6">
							 	<div>
							 	
							 	<input type="text" class="form-control" id="commonName" value="${medicinelist.groupMedicine.value}" disabled="true"/>	
							
									
							 	</div>											
						</div>
						</div>

						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> สรรพคุณ</label>
						<div class="col-md-6">
							<textarea rows="3" cols="45" class="form-control"  type="text" disabled="true">${medicinelist.properties}</textarea>
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">วิธีการใช้</label>
						<div class="col-md-6">
							<textarea rows="3" cols="45"class="form-control" type="text" disabled="true">${medicinelist.instruction}</textarea>
							<!-- <textarea rows="3" cols="45" class="form-control" path="instruction"  type="text" disabled="true"></textarea> -->
						</div>
						</div> 
						
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label">ผลข้างเคียง</label>
						<div class="col-md-6">
							<textarea rows="3" cols="45" class="form-control"id="sideEffect" type="text" disabled="true">${medicinelist.sideEffect}</textarea>
						</div>
						</div> 
						
						</fieldset>
						</div>
						<div class="col-md-4 ">
						<fieldset><br>
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label"> ส่วนประกอบ</label>
						<div class="col-md-6">
							<textarea rows="3	" cols="45" class="form-control" id="ingredient" type="text" disabled="true">${medicinelist.ingredient}</textarea>
						</div>
						</div> 
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label"> ระยะหยุดยา</label>
							<div class="col-md-6">
							<div class="input-group">
								<input type="text" class="form-control" id="distanceDiscontinued" value="${medicinelist.distanceDiscontinued}" disabled="true"/>
							<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;" disable="true">วัน</span>
														
							</div>	
						</div>
						</div>
						
						
						
						<div class="row form-group">
							<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> หน่วยที่ใช้ในคลัง</label>
						<div class="col-md-6">
							 	<div>
									<input type="text" class="form-control" id="unit" value="${medicinelist.unitMedicine.value}" disabled="true"/>	
									
							 	</div>											
						</div>
						</div>
						
						
						<div class="row form-group">
							<label  class="col-md-offset-2 col-md-3 control-label"> หมายเหตุ</label>
						<div class="col-md-6">
							<textarea rows="3" cols="45" class="form-control"  id="note" type="text" disabled="true">${medicinelist.note }</textarea>
						</div>
						</div> 
						
						</div> 
						</fieldset>
						</div>
						
					
					
								<div class="col-md-offset-9">
									<!-- <button name="action" value="Add" id="add" onclick="addm()"
										class="btn btn-success btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button> -->
									
				<!-- 					<button name="action" value="edit" id="edit" onclick="editm()"
										class="btn btn-info btn-lg">
										<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
									</button> -->

									<a href="view_medicine"><button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-reply" aria-hidden="true"></i>&nbsp; ย้อนกลับ
									</button></a>			
								</div>
						
						
						
						</div><!-- จบ body -->			
	
					</div>
					</div>
					<div>
				</div>

			</div>

			</div>

		</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>