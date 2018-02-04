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
<title>ตีเบอร์</title>
</head>
<body>
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลการตีเบอร์</p>
				</div>	
			</div>
			<div class="row">
				<hr>
			</div><br><br>
			<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> ข้อมูลการตีเบอร์</a>
						</h4>
					</div>
					
				<div class="panel-body">
					<form:form action="cattlestm" method="POST" id="cattlestm">
						<div class="row form-group">
							<div class="col-md-6">
								<fieldset><br>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> เบอร์แรกเกิด</label>
														<div>
																																	
																<input id="calvesid" type="text" class="form-control" value="${cattlestmp.cattle.numDate}" readonly style="background-color:#e4ecf7"/>
							 						</div>
							 						</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>เบอร์ที่ต้องการตี</label>
											<div class="col-md-6">
												<input name="stampNumber" id="stampNumber" type="text" class="form-control" value="${cattlestmp.cattle.num}" readonly style="background-color:#e4ecf7"/>
											</div>
										</div>												
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>วันที่ตีเบอร์</label>
											<div class="col-md-6">
												<input name="date" id="date" type="date" class="form-control" value="${cattlestmp.date}" readonly style="background-color:#e4ecf7"/>
											</div>
										</div>	
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> ผู้บันทึก</label>
												<div class="col-md-6">
							 						<div>
														<input id="fatcatl" type="text" class="form-control" value="${cattlestmp.member.first }&nbsp;${cattlestmp.member.last  }" readonly style="background-color:#e4ecf7"/>
									
							 						</div>																				
													<!-- <input path="" id="" type="text" class="form-control"/> -->
													<input path="id" id="id" type="hidden" class="form-control"/>
												</div>											
										</div>		
																				
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="White">* </font> หมายเหตุ</label>
											<div>
												<input rows="3" cols="45" id="fatcatl" type="text" class="form-control" value="${cattlestmp.note }" readonly style="background-color:#e4ecf7"/>
											</div>
										</div>				
																										
								</fieldset>
							</div>						
							
						</div>
					</form:form>
								<div class="col-md-offset-8 col-md-6">
									<a href=numbercat_list><button type="button" class="btn btn-embossed btn-primary">
									<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; ย้อนกลับ</button></a>
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
		url:"saveNumber",
		method:"POST",
		data:$("#cattlestm").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "บันทึกเรียบร้อยแล้ว!", 
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
	e.preventDefault();
});
	
</script>

</body>
</html>