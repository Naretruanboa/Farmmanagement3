<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ลงค่าทางโภชนะ</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
	<div class="container">
		<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">ลงทะเบียนค่าทางโภชนะ</p>
				</div>
		</div>
		<br><br><br>
		<div class="row form-group"> <!-- //ตาราง -->
		<div class="col-md-offset-3 col-md-6">  <!-- //ขนาดตาราง -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลท่าโภชนะ</a></h4>
				</div>
				<div class="panel-body" >
				
				<form:form action="addrawnu" method="POST"  id="rawmaterialnutrient" modelAttribute="rawmaterialnutrient" commandName="rawmaterialnutrient" >
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ชื่อ </label>
						<div class="form-inline">
									<form:select class="form-control" path="rawMaterial.id" id="rawMaterialid">
										<form:option value="0">เลือกวัตถุดิบ</form:option>
											<c:forEach items="${raw }" var="raw">
												
												<form:option value="${raw.id }"  >${raw.name }</form:option>
													
												
											</c:forEach>
									</form:select>
								</div>
					</div>
					
					<%-- <div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ชื่อ </label>
						<div class="form-inline">
									<form:select class="form-control" path="unitNutrient.id" id="unitNutrientid">
										<form:option value="0">เลือกวัตถุดิบ</form:option>
											<c:forEach items="${unitnu }" var="unitnu">
												
												<form:option value="${unitnu.id }"  >${unitnu.name }</form:option>
													
												
											</c:forEach>
									</form:select>
								</div>
					</div> --%>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Protein</label>
						<div class="form-inline">
							<form:input path="protein" id="protein" type="protein" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>TDN</label>
						<div class="form-inline">
							<form:input path="tdn" id="tdn" type="tdn" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>NFC</label>
						<div class="form-inline">
							<form:input path="nfc" id="nfc" type="nfc" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>DM</label>
						<div class="form-inline">
							<form:input path="dm" id="dm" type="dm" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>UIP</label>
						<div class="form-inline">
							<form:input path="uip" id="uip" type="uip" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>DIP</label>
						<div class="form-inline">
							<form:input path="dip" id="dip" type="dip" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>P</label>
						<div class="form-inline">
							<form:input path="p" id="p" type="p" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Urea</label>
						<div class="form-inline">
							<form:input path="urea" id="urea" type="urea" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Cl</label>
						<div class="form-inline">
							<form:input path="cl" id="cl" type="cl" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>K</label>
						<div class="form-inline">
							<form:input path="k" id="k" type="k" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>S</label>
						<div class="form-inline">
							<form:input path="s" id="s" type="s" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Mg</label>
						<div class="form-inline">
							<form:input path="mg" id="mg" type="mg" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Zn</label>
						<div class="form-inline">
							<form:input path="zn" id="zn" type="zn" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Cu</label>
						<div class="form-inline">
							<form:input path="cu" id="cu" type="cu" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Mn</label>
						<div class="form-inline">
							<form:input path="mn" id="mn" type="mn" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Co</label>
						<div class="form-inline">
							<form:input path="co" id="co" type="co" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>I</label>
						<div class="form-inline">
							<form:input path="i" id="i" type="i" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>VitA</label>
						<div class="form-inline">
							<form:input path="vitA" id="vitA" type="vitA" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>VitD</label>
						<div class="form-inline">
							<form:input path="vitD" id="vitD" type="vitD" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>VitE</label>
						<div class="form-inline">
							<form:input path="vitE" id="vitE" type="vitE" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>NEl</label>
						<div class="form-inline">
							<form:input path="nel" id="nel" type="nel" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Nem</label>
						<div class="form-inline">
							<form:input path="nem" id="nem" type="nem" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Neg</label>
						<div class="form-inline">
							<form:input path="neg" id="neg" type="neg" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>NDF</label>
						<div class="form-inline">
							<form:input path="ndf" id="ndf" type="ndf" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>EE</label>
						<div class="form-inline">
							<form:input path="ee" id="ee" type="ee" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>CP</label>
						<div class="form-inline">
							<form:input path="cp" id="cp" type="cp" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>CF</label>
						<div class="form-inline">
							<form:input path="cf" id="cf" type="cf" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Ash</label>
						<div class="form-inline">
							<form:input path="ash" id="ash" type="ash" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>NFE</label>
						<div class="form-inline">
							<form:input path="nfe" id="nfe" type="nfe" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ADF</label>
						<div class="form-inline">
							<form:input path="adf" id="adf" type="adf" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ADL</label>
						<div class="form-inline">
							<form:input path="adl" id="adl" type="adl" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>DE</label>
						<div class="form-inline">
							<form:input path="de" id="de" type="de" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ME</label>
						<div class="form-inline">
							<form:input path="me" id="me" type="me" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Na</label>
						<div class="form-inline">
							<form:input path="na" id="na" type="na" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					<div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>Fe</label>
						<div class="form-inline">
							<form:input path="fe" id="fe" type="fe" class="form-control input-sm " size="25" />
						</div>
					</div>
					
					
					
					</form:form>
					
					<div class="col-md-offset-6">  <!-- //ปุ่มสำหรับกดบันทึก หรือยกเลิก -->
						<button name="action" value="Add" id="add" onclick="addraw()"
							class="btn btn-success btn-lg">
								<i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
						</button>
						<a href="Setrawmaterial"><button name="action" value="cancel" onclick="cancel()"
							class="btn btn-danger btn-lg">
								<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
						</button></a>	
					</div>
				
					
					
				</div>
			</div>
		</div>
		</div> <!-- ปิดตาราง -->
	</div> <!-- ปิดcontainer -->
<%@ include file="../footer.jsp" %>
</body>

<script type="text/javascript">


function addraw(){
	
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลวัตถุดิบหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#rawMaterialid").val() == 0){
					swal("กรุณาเลือกวัตถุดิบ");
				}else{
					
					$.post('chkRawNU',{id:$("#rawMaterialid").val()},function(msg){
						if(msg=="yes"){
	
				$.post('addrawnu',$("#rawmaterialnutrient").serialize(),
				      function (result) {
				     	swal({	title: "สำเร็จ",   
							text: "บันทึกการลงทะเบียนเรียบร้อยแล้ว!",  
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						},
						
				     	function(){
							window.location.href='Setrawmaterialnutrient';
							
						}
				     	);
				     	
						//setInterval(function(){location.reload()}, 2000);
					})
					}//end if spost
					else{swal("ผิดพลาด", "ชื่อวัตถุดิบซ้ำ!", "error");}
				}) //end post
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
</html>