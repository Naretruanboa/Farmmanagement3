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
<title>ข้อมูลการตรวจท้อง</title>
<script type="text/javascript">
function EnableDisableTextBox(checkbox) {
    var textBox = document.getElementById ("day_input");
    textBox.readOnly = !checkbox.checked;

}
function EnableDisableTextBox2(checkbox) {
    var textBox2 = document.getElementById ("day_input2");
    textBox2.readOnly = !checkbox.checked;
}
function Init() {
    var checkBox1 = document.getElementById ("check1");
    var checkBox2 = document.getElementById ("check2");
    EnableDisableTextBox (checkBox1);
    EnableDisableTextBox2 (checkBox2);

    var vfullearly = document.getElementById('ststuspreg').value;

    document.getElementById('field1').disabled=true;
    document.getElementById('field2').disabled=true;


 }

/*ท้องไม่ท้อง*/
function annconf() {
 
var vfullearly = document.getElementById('ststuspreg').value;


 
if (vfullearly == "1")
    {
        document.getElementById('field1').disabled=false;
        document.getElementById('field2').disabled=true;
 
    }
else if (vfullearly == "2")
    {
        document.getElementById('field2').disabled=false;
        document.getElementById('field1').disabled=true;
    }
 
}
</script>
</head>
<body onload="Init()">
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลการตรวจท้อง</p>
				</div>	
			</div>
			<div class="row">
				<hr>
			</div><br><br>
			<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> ข้อมูลการตรวจท้อง</a>
						</h4>
					</div>
					
					<div class="panel-body">
						<form action="prg" method="POST" id="prg" >
							<div class="row form-group">
								<div class="col-md-6">
									<fieldset><br>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> หมายเลขแม่พันธุ์</label>
												<div class="col-md-6">
							 						<div>
														<input id="momcatl" type="text" class="form-control" value="${pregnant.breeding.cattleByCattlemaId.num }" readonly style="background-color:#e4ecf7"/> 
													 
							 						</div>																				
													<!-- <input path="" id="" type="text" class="form-control"/> -->
												<!-- 	<input path="id" id="id" type="hidden" class="form-control"/> -->
												</div>											
										</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>วันที่ตรวจท้อง</label>
											<div class="col-md-6">
												<input id="datePreg" type="text"  class="form-control" value="${pregnant.datePreg }" readonly style="background-color:#e4ecf7" />
											</div>
										</div>
										
														
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>เวลาที่ตรวจท้อง</label>
											<div class="col-md-6">
												<input value="${pregnant.timePreg }" name="time" id="time" type="time" class="form-control" disabled="disabled" />
											</div>
										</div>		
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-label"><font color="red">* </font> ผู้บันทึก</label>
												<div class="col-md-6">
							 						<div>
											
										<%-- <form:option value="0">ผู้บันทึก</form:option> --%>
												<c:forEach items="${ulist}" var="user">
											
														<input id="fatcatl" type="text" class="form-control" value="${user.first}&nbsp;${user.last }" readonly style="background-color:#e4ecf7"/>
															
											</c:forEach>
										
							 					</div>											
											</div>
										</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="White">* </font> หมายเหตุ</label>
											<div>
												<input name	="note" id="note" value="${pregnant.note}" type="text" class="form-control" readonly style="background-color:#e4ecf7"/>
											</div>
										</div>			
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ถ้าผสมพันธุ์ติด วันกำหนดคลอด (คาดการณ์)</label>
											<div class="col-md-6">
												<div class="input-group">
													<input value="alert1.date" name="alert1" id="alert1" type="date"  class="form-control" disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">	</span>    	
												</div>
											</div>
										</div>	
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ถ้าผสมพันธุ์ติด ระยะเฝ้าระวังก่อนคลอด  7 วัน(คาดการณ์)</label>
											<div class="col-md-6">
												<div class="input-group">
													<input name="alert3" id="alert3" type="date" class="form-control"  disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;"></span>    	
												</div>
											</div>
										</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ถ้าผสมพันธุ์ติด ระยะเฝ้าระวังหลังคลอด  7 วัน(คาดการณ์)</label>
											<div class="col-md-6">
												<div class="input-group">
													<input name="alert2" id="alert2" type="date" class="form-control" disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;"></span>    	
												</div>
											</div>
										</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ถ้าไม่ท้อง ระยะการเหนี่ยวนำกลับสัด (คาดการณ์)</label>
											<div class="col-md-6">
												<div class="input-group">
													<input name="alert4" id="alert4" type="date" class="form-control" disabled="disabled"/>
													<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;"></span>    	
												</div>
											</div>
										</div>																
										
									</fieldset>
								</div>
								
								<div class="col-md-6">
									<fieldset><br>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font> ผลการครวจท้อง</label>
												<div class="col-md-6">
							 						<div>
											
											<input id="status_preg" type="text" class="form-control" value="${pregnant.statusPregnant.value}" readonly style="background-color:#e4ecf7"/>
							 						</div>																				

												</div>											
										</div>
									<fieldset id="field1">		
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ท้อง แจ้งเตือนคลอด</label>
											<div class="col-md-6">
												<div class="input-group">
												<div class="input-group">
												<c:forEach items="${dAlertList}" var="d">
												
														<input name	="day_input" id="day_input" value="${d.value}" type="text" class="form-control" readonly style="background-color:#e4ecf7" />
													
														<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>  
													</c:forEach>  	
												
													
												</div>
												</div>
											</div>
										</div>	
									</fieldset>	
<!-- 									<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ระยะเฝ้าระวัง</label>
									<div class="col-md-6">
									<div class="input-group">
										<input name	="name" id="name" value="ก่อนกำหนดคลอด 7 " type="text" class="form-control" disabled="disabled"/>
										<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>  
									</div>	
									</div>
									</div>	
								<div class="row form-group">
									<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ระยะเฝ้าระวัง</label>
									<div class="col-md-6">
									<div class="input-group">
										<input name	="name" id="name" value="หลังกำหนดคลอด  7 " type="text" class="form-control" disabled="disabled"/>
										<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>  
									</div>	
									</div>
									</div>	 -->
									
									<fieldset id="field2">	
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"><font color="red">* </font>ไม่ท้อง  แจ้งเตือนผสมพันธุ์</label>
											<div class="col-md-6">
												<div class="input-group">
												<div class="input-group">
												<c:forEach items="${NdAlertList}" var="nd">
												
														<input name	="day_input" id="day_input2" value="${nd.value}" type="text" class="form-control" readonly style="background-color:#e4ecf7"/>
													
														<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">วัน</span>  
													</c:forEach>  	
												
													
												</div>
												
												</div>
											</div>
										</div>									
								</fieldset>	
									</fieldset>
								</div>
							</div>
						</form>
								<div class="col-md-offset-8 col-md-6">
									<a href=pregnant_list><button type="button" class="btn btn-embossed btn-primary">
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
		url:"savePreg",
		method:"POST",
		data:$("#pregnant").serialize()
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
		var selectedValue = $(".momcatl").val();  //หลังclass form control
		//alert(selectedValue);
		if(selectedValue != 0){
		$.ajax({
			  url: "listValue5",
			  data : {id:selectedValue}
			}).done(function(element) {
				var json = JSON.parse(element);
			
				$( "#alert1" ).val( json.alert1 );
			  	$( "#alert2" ).val(json.alert2 );
				$( "#alert3" ).val( json.alert3 );
			  	$( "#alert4" ).val(json.alert4 );
			  
			  	//alert(json.unitMedicine.value);
			});
		}else{
			$( "#alert1" ).val("" );
			$( "#alert2" ).val( "" );
			$( "#alert3" ).val("" );
			$( "#alert4" ).val( "" );
			}
	}
	
</script>
</body>
</html>