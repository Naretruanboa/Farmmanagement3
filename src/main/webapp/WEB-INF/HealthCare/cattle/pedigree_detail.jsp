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
<title>บันทึกข้อมูลพันธุ์ประวัติโค</title>
</head>
<body>
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
				<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">บันทึกข้อมูลพันธุ์ประวัติโค</p>
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
						<%-- <c:forEach items="${cattle }" var="cattle"> --%>
						<div class="row form-group">
							<div class="col-md-6">
								<fieldset><br>

								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> หมายเลขโค</label>
										<div class="col-md-6">
											<input value="${cattle.num }" id="num" type="text" class="form-control" disabled="true"/>
											<input value="${cattle.id }" id="id" type="hidden" class="form-control" disabled="true"/>
										</div>
									</div>
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> *</font> เบอร์แรกเกิด</label>
										<div class="col-md-6">
											<input value="${cattle.numDate }" id="numDate" type="" class="form-control" disabled="disabled"/>
										</div>
									</div>
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> *</font> ชื่อโค</label>
										<div class="col-md-6">
											<input value="${cattle.name }" id="name" type="name" class="form-control" disabled="disabled"/>
										</div>
									</div>	
									
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ประเภทของโค</label>
									<div class="col-md-6">
										<input value="${cattle.typeCattle.value }" id="typeCattle" type="name" class="form-control" disabled="disabled"/>
									</div>
									</div>																										
								
								<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">* </font> วัน/เดือน/ปี เกิด</label>
									<div class="col-md-6">
										<input value="${cattle.calved }" id="calved"  type="date" class="form-control" disabled="disabled"/>
									</div>
								</div>
								
							<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> เพศ</label>
									<div class="col-md-6">
										<input value="${cattle.sex.value }" id="statusCattle" type="name" class="form-control" disabled="disabled"/>	
									</div>
									</div>									
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> สายพันธุ์</label>
									<div class="col-md-6">
										<input value="${cattle.statusBreed.value }" id="statusCattle" type="name" class="form-control" disabled="disabled"/>	
									</div>
									</div>				
									
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> </font>น้ำหนักแรกเกิด</label>
											<div class="col-md-6">
												<div class="input-group">
													<input value="${cattle.weightBirth }" id="weightBirth" type="text" class="form-control" disabled="disabled" />
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>																
								
									<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> </font>น้ำหนัก 1 ปี</label>
											<div class="col-md-6">
												<div class="input-group">
													<input value="${cattle.weight }" id="weight" type="text" class="form-control" disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>			
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red"> </font>น้ำหนักหย่านม</label>
											<div class="col-md-6">
												<div class="input-group">
													<input value="${cattle.weightWean }" id="weight" type="text" class="form-control" disabled="disabled" />
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>									
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> รหัสพ่อ</label>
										<div class="col-md-6">
											<input value="${cattle.faId }" id="faId" type="text" class="form-control" disabled="disabled"/>
										</div>
									</div>		
								
									<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> รหัสแม่</label>
										<div class="col-md-6">
											<input value="${cattle.maId }"  id="maId" type="text" class="form-control" disabled="disabled"/>
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
									<input value="${cattle.color.nameColor }" id="color" type="text" class="form-control" disabled="disabled"/>				
								</div>
							</div>		
							
							<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> ฝูงโค</label>
								<div class="col-md-6">
									<input value="${cattle.groupCattle.groupNameCattle }" id="groupCattle" type="text" class="form-control" disabled="disabled"/>									
								</div>
							</div>		
							
							<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-label"><font color="red">*</font> คอก</label>
								<div class="col-md-6">
									<input value="${cattle.stall.value }" id="stall" type="text" class="form-control" disabled="disabled"/>								
								</div>
							</div>					
																												
							<div class="row form-group">
										<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> ชื่อฟาร์ม</label>
										<div class="col-md-6">
											<input value="${cattle.farm }"  id="farm" type="text" class="form-control" disabled="disabled"/>
										</div>
							</div>			
							<div class="row form-group" align="center">
								  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">ประวัติการรักษา</button>
							</div> 						
							</fieldset>
							</div>
						</div>	
						
						
							<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title"><font color="blue">ประวัติการรักษา</font></h3>
        </div>

		
				<center>
					<hr>
				</center>
				<br>
        
					<div class="panel-body">
						<table class="table table-striped table-hover  table-bordered"
							style="font-size: 16px;">
							<thead>
								<tr>
									<th style="width: 55px;">ลำดับที่</th>
									<th style="width: 80px;">หมายเลขโค</th>
									<th style="width: 55px;">ชื่อโค</th>
									<th style="width: 150px;">วันที่รักษา</th>
									<th>อาการของโรค</th>									
									<th  style="width: 190px;">ชื่อโรค</th>
									<th >ยาที่ใช้</th>

								</tr>
							</thead>
							
							<tbody style="text-align: center;">
								
							</tbody>
						</table>
						<div class="row form-group" id="page" align="center"></div>
					</div>
					
			
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">ปิด</button>
        </div>
      </div>
    </div>
						</div>
				<%-- 	</c:forEach> --%>
					<div class="col-md-offset-8 col-md-6">
						<a href=pedigree_page><button type="button" class="btn btn-embossed btn-primary">
						<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; ย้อนกลับ</button></a>
						
<!-- 						<a href=EditDisease><button type="button" class="btn btn-embossed btn-warning">
						<i class="fa fa-pencil fa-lg"></i></i>&nbsp; แก้ไขข้อมูล</button></a> -->
					</div>
						

				</div>
			</div>
		</div>	
</div>
</div>
<%@ include file="../footer.jsp"%>
<script type="text/javascript">

$("#listM").load('search_treat_ped',{ id : 0 ,value : 0},function(){ //load list_view_medicine
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});


function cancel() {
	location.reload();
} 

// ยืนยันบันทึก
 function addmm(){
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลยาหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		confirmButtonText: "ต้องการ",
		cancelButtonText: "ไม่ต้องการ",   
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){  
				$.post('addcattle',$("#cattle").serialize(),
				      function (result) {
				     	swal({	title: "Success!",   
							/* text: "หมายเลขยา "+result,  */   
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						});
						setInterval(function(){location.reload()}, 2000);
					})
				}

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