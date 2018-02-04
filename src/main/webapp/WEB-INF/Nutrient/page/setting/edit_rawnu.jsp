<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>แก้ไขคุณค่าทางโภชนะ</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
	<div class="container">
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">แก้ไขคุณค่าทางโภชนะ</h4>
	   	</div>
		<div class="panel-body">
		<form:form action="editrawnu" method="post" commandName="editrawnu" id="rawnu">
		  	
		  	<form:input path="id" type="hidden"/>
		  	<%-- <form:input path="username" type="hidden"/> --%>
		  	<form:input path="rawMaterial.id" type="hidden"/>
		  	
		  	<table class="table table-striped table-hover  table-bordered">
					<tbody>
	
	<tr>
		<th class="text-center">Protein</th>
		<td class="text-center"><form:input id="protein" path="protein" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">TDN</th>
		<td class="text-center"><form:input id="tdn" path="tdn" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">NFC</th>
		<td class="text-center"><form:input id="nfc" path="nfc" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">DM</th>
		<td class="text-center"><form:input id="dm" path="dm" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">UIP</th>
		<td class="text-center"><form:input id="uip" path="uip" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">DIP</th>
		<td class="text-center"><form:input id="dip" path="dip" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Ca</th>
		<td class="text-center"><form:input id="ca" path="ca" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">P</th>
		<td class="text-center"><form:input id="p" path="p" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Urea</th>
		<td class="text-center"><form:input id="urea" path="urea" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Cl</th>
		<td class="text-center"><form:input id="cl" path="cl" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">K</th>
		<td class="text-center"><form:input id="k" path="k" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">S</th>
		<td class="text-center"><form:input id="s" path="s" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Mg</th>
		<td class="text-center"><form:input id="mg" path="mg" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Zn</th>
		<td class="text-center"><form:input id="zn" path="zn" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Cu</th>
		<td class="text-center"><form:input id="cu" path="cu" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Mn</th>
		<td class="text-center"><form:input id="mn" path="mn" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Co</th>
		<td class="text-center"><form:input id="co" path="co" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Se</th>
		<td class="text-center"><form:input id="se" path="se" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">I</th>
		<td class="text-center"><form:input id="i" path="i" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">VitA</th>
		<td class="text-center"><form:input id="vitA" path="vitA" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">VitD</th>
		<td class="text-center"><form:input id="vitD" path="vitD" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">VitE</th>
		<td class="text-center"><form:input id="vitE" path="vitE" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">NEl</th>
		<td class="text-center"><form:input id="nel" path="nel" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">NEm</th>
		<td class="text-center"><form:input id="nem" path="nem" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">NEg</th>
		<td class="text-center"><form:input id="neg" path="neg" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">NDF</th>
		<td class="text-center"><form:input id="ndf" path="ndf" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">EE</th>
		<td class="text-center"><form:input id="ee" path="ee" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">CP</th>
		<td class="text-center"><form:input id="cp" path="cp" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">CF</th>
		<td class="text-center"><form:input id="cf" path="cf" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Ash</th>
		<td class="text-center"><form:input id="ash" path="ash" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">NFE</th>
		<td class="text-center"><form:input id="nfe" path="nfe" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">ADF</th>
		<td class="text-center"><form:input id="adf" path="adf" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">ADL</th>
		<td class="text-center"><form:input id="adl" path="adl" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">DE</th>
		<td class="text-center"><form:input id="de" path="de" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">ME</th>
		<td class="text-center"><form:input id="me" path="me" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Na</th>
		<td class="text-center"><form:input id="na" path="na" placeholder="" class="form-control"/></td>
	</tr>
	<tr>
		<th class="text-center">Fe</th>
		<td class="text-center"><form:input id="fe" path="fe" placeholder="" class="form-control"/></td>
	</tr>
</tbody>
					</table>
					
					</form:form>
					
					
					<div class="text-center">
					<button type="submit" id="edit" name="action" class="btn btn-embossed btn-success btn-wide" style="text-align: center;">บันทึก</button>
					<a href="Setrawmaterialnutrient"><button type="submit" id="cancle" name="action" class="btn btn-embossed btn-danger btn-wide" style="text-align: center;">ยกเลิก</button></a>
					</div>
					
			</div>
		</div>
</div>  
<%@ include file="../footer.jsp" %>

<% //สคริปตรวจสอบ การกรอกข้อมูล%>
<script type="text/javascript">


$(document).on('click','#edit',function(e){
	var user = $("#user").val(); 
	var protein = $("#protein").val();
	var tdn = $("#tdn").val();
	var nfc = $("#nfc").val();
	var dm = $("#dm").val();
	var uip = $("#uip").val();
	var dip = $("#dip").val();
	var p = $("#p").val();
	var urea = $("#urea").val();
	var cl = $("#cl").val();
	var k = $("#s").val();
	var mg = $("#mg").val();
	var zn = $("#zn").val();
	var cu = $("#cu").val();
	var mn = $("#mn").val();
	var co = $("#co").val();
	var se = $("#se").val();
	var i = $("#i").val();
	var vitA = $("#vitA").val();
	var vitD = $("#vitD").val();
	var vitE = $("#vitE").val();
	var nel = $("#nel").val();
	var nem = $("#nem").val();
	var neg = $("#neg").val();
	var ndf = $("#ndf").val();
	var ee = $("#ee").val();
	var cp = $("#cp").val();
	var cf = $("#cf").val();
	var ash = $("#ash").val();
	var nfe = $("#nfe").val();
	var adf = $("#adf").val();
	var adl = $("#adl").val();
	var de = $("#de").val();
	var me = $("#me").val();
	var na = $("#na").val();
	var fe = $("#fe").val();
	
	
	
			/* $.post('checkIdCardNo',{idCardNo:$("#idCard").val()},function(result){
				
				if(result=="true"){ */
			$.ajax({
				url:"save_rawnu",
				method:"POST",
				data:$("#rawnu").serialize()
			}).done(function(s){
				swal({  title: "สำเร็จ",   
					text: "บันทึกเรียบร้อยแล้ว!", 
						type: "success",   
						showCancelButton: false,   
						confirmButtonText: "OK!",   
						closeOnConfirm: false }, 
						
						function(){   
							window.location.href='Setrawmaterialnutrient'; 
							});
				
			});
				/* }
				else if(result=="duplicate"){
					swal("ผิดพลาด", "รหัสบัตรประชาชนมีอยู่ในระบบแล้ว!", "error");
				}
				else
					{
					swal("ผิดพลาด", "ตรวจสอบรหัสบัตรประชาชนให้ถูกต้อง!", "error");
					}
			}); */

	e.preventDefault();

}); 
</script>


</body>
</html>