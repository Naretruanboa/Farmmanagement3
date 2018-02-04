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
<title>น้ำหนัก 1 ปี</title>
</head>
<body>
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลน้ำหนักโค 1 ปี</p>
				</div>	
			</div>
			<div class="row">
				<hr>
			</div><br><br>
			<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> ข้อมูลน้ำหนักโค 1 ปี</a>
						</h4>
					</div>
					
				<div class="panel-body">
					<form:form action="Weight" method="POST" id="Weight">
						<div class="row form-group">
							<div class="col-md-6">
								<fieldset><br>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> เบอร์แรกเกิด</label>
												<div class="col-md-6">
							 						<div>
														<input id="calvesid" type="text" class="form-control" value="${cattleyear.cattle.numDate }" readonly style="background-color:#e4ecf7"/>
							 						</div>																				
													<!-- <input path="" id="" type="text" class="form-control"/> -->
													<input path="id" id="id" type="hidden" class="form-control"/>
												</div>											
										</div>		
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>วันที่บันทึกน้ำหนัก </label>
											<div class="col-md-6">
															<input  id="date" type="text" class="form-control" value="${cattleyear.date }" readonly style="background-color:#e4ecf7"/>
											</div>
										</div>	
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>น้ำหนัก 1 ปี</label>
											<div class="col-md-6">
												<div >
													 	<input  id="date" type="text" class="form-control" value="${cattleyear.weightyear }" readonly style="background-color:#e4ecf7"/>
												</div>
											</div>
										</div>			
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>น้ำหนักแรกเกิด</label>
											<div class="col-md-6">
												<div class="input-group">
													<input name="weightBirth" id="weightBirth" type="text" value="${cattleyear.cattle.weightBirth}" class="form-control" disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>																				
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>น้ำหนักหย่านม</label>
											<div class="col-md-6">
												<div class="input-group">
													<input name="weightWean" id="weightWean" type="text" class="form-control" value="${cattleyear.cattle.weightWean}" disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กก.</span>    	
												</div>
											</div>
										</div>								
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> ผู้บันทึก</label>
												<div class="col-md-6">
							 						<div>
											<input id="memberid" type="text" class="form-control" value="${cattleyear.member.first}&nbsp;${cattleyear.member.last }"readonly style="background-color:#e4ecf7"/>
							 						</div>																				
												</div>											
										</div>		
																						
																										
								</fieldset>
							</div>						
							
						</div>
					</form:form>
								<div class="col-md-offset-8 col-md-6">
									<a href=weight_listH1><button type="button" class="btn btn-embossed btn-primary">
									<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; ย้อนกลับ</button></a>
								</div>
				</div>	
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
		url:"saveWeight",
		method:"POST",
		data:$("#Weight").serialize()
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
	
	
	function listvaluee() { //เอาหน่วยที่ใช้ในคลังอออกมา
		var selectedValue = $(".calvesid").val();  //หลังclass form control
		//alert(selectedValue);
		if(selectedValue != 0){
		$.ajax({
			  url: "listValue",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
			
				$( "#weightBirth" ).val( json.weightBirth );
			  	$( "#weightWean" ).val(json.weightWean );
			  
			  	//alert(json.unitMedicine.value);
			});
		}else{
			$( "#weightBirth" ).val("" );
			$( "#weightWean" ).val( "" );
			}
	}
	
</script>

</body>
</html>