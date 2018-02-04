<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%-- <script src="<c:url value="/resources/js/flat-ui.min2.js"/>"></script>
<script src="<c:url value="/resources/js/application2.js"/>"></script> --%>

<c:forEach items="${privilegelist}" var="p">
<%-- <input type="text" name="pid" id="pId" value="${pId}"/> --%>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับยาคงคลัง</h4>
	   	</div>
	   	<div class="panel-body">
	   		<table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
	   			<body>
	   			<tr>
	   				<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitAddMed==1}">checked</c:if> />การลงทะเบียน
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitImportMed==1}">checked</c:if> />การนำเข้า
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitReleaseMed==1}">checked</c:if> />การเบิก
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitOrderMed==1}">checked</c:if> />การสั่งซื้อ
					
						</label>
				 	</td>
	   			</tr>
	   			</body>
	   		</table>
	   	</div>
</div>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับน้ำเชื้อ/ถังเก็บน้ำเชื้อคงคลัง</h4>
	   	</div>
	   	<div class="panel-body">
	   		<table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
	   			<body>
	   			<tr>
	   				<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitAddSemen==1}">checked</c:if> />การลงทะเบียน
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitImportSemen==1}">checked</c:if> />การนำเข้า
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitReleaseSemen==1}">checked</c:if> />การเบิก
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitOrderSemen==1}">checked</c:if> />การสั่งซื้อ
					
						</label>
				 	</td>
	   			</tr>
	   			</body>
	   		</table>
	   	</div>
</div>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับวัตถุดิบอาหารสัตว์คงคลัง</h4>
	   	</div>
	   	<div class="panel-body">
	   		<table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
	   			<body>
	   			<tr>
	   				<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitAddRaw==1}">checked</c:if> />การลงทะเบียน
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitImportRaw==1}">checked</c:if> />การนำเข้า
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitReleaseRaw==1}">checked</c:if> />การเบิก
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitOrderRaw==1}">checked</c:if> />การสั่งซื้อ
					
						</label>
				 	</td>
	   			</tr>
	   			</body>
	   		</table>
	   	</div>
</div>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับวัสดุ/อุปกรณ์คงคลัง</h4>
	   	</div>
	   	<div class="panel-body">
	   		<table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
	   			<body>
	   			<tr>
	   				<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitAddTool==1}">checked</c:if> />การลงทะเบียน
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitImportTool==1}">checked</c:if> />การนำเข้า
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitReleaseTool==1}">checked</c:if> />การเบิก
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitBorrowTool==1}">checked</c:if> />การยืมคืน
					
						</label>
				 	</td>
				 	<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitOrderTool==1}">checked</c:if> />การสั่งซื้อและการส่งซ่อม
					
						</label>
				 	</td>
	   			</tr>
	   			</body>
	   		</table>
	   	</div>
</div>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับการตั้งค่าและอื่นๆ</h4>
	   	</div>
	   	<div class="panel-body">
	   		<table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
	   			<body>
	   			<tr>
	   				<td style="width: 244px;">
				 		<label class="checkbox" style="margin-left: 30%;">
							<input type="checkbox" value="${p.value}" name="" id="chk1" data-toggle="checkbox" 
							onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
							<c:if test="${p.permitSetting==1}">checked</c:if> />การตั้งค่า
					
						</label>
				 	</td>
				 	<td>
				 	</td>
	   			</tr>
	   			</body>
	   		</table>
	   	</div>
</div>

</c:forEach>
<div class="text-center"><button class="btn btn-embossed btn-success" type="submit" id="save">บันทึก</button></div>

<%-- <div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับโค</h4>
	   	</div>
		<div class="panel-body">
		  <table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
			<tbody>
		
				<tr>
				 <td style="width: 244px;">
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitMaintain}" name="permitMaintain" id="chk1" data-toggle="checkbox" 
						onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
						<c:if test="${p.permitMaintain==1}">checked</c:if> />บำรุง
					
					</label>
				 </td>
				 <td style="width: 287px;">
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitPreg}" name="permitPreg" id="chk2" data-toggle="checkbox" 
						onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitPreg==1}">checked</c:if> />ระบบตรวจท้อง
					</label>
				 </td>
				  <td style="width: 376px;">
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitSync}" id="chk3" name="permitSync" data-toggle="checkbox" 
						onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitSync==1}">checked</c:if> />ระบบเหนี่ยวนำกลับสัด

					</label>
				 </td>
				</tr>
				<tr>
				 <td>
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitBirth}" name="permitBirth" id="chk4" data-toggle="checkbox" 
						onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitBirth==1}">checked</c:if> />ระบบคลอด  
						
					</label>
				 </td>
				 <td>
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitBreed}" name="permitBreed" id="chk5" data-toggle="checkbox" 
						onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitBreed==1}">checked</c:if>/>ระบบผสมพันธุ์
						
					</label>
				 </td>
				  <td>
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitCalf}" name="permitCalf" id="chk6" data-toggle="checkbox" 
						onclick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}"
						<c:if test="${p.permitCalf==1}">checked</c:if>/>ระบบลูกโค 
					</label>
				 </td>
				</tr>
				
				<tr>
				 <td>
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitVaccine}" name="permitVaccine" id="chk11" data-toggle="checkbox" 
						OnClick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitVaccine==1}">checked</c:if> />วัคซีน
					
						
					</label>
		 		</td>
		 		<td colspan="2">
				 	<label class="checkbox" style="margin-left: 12.5%;">
						<input type="checkbox" value="${p.permitMiscarry}" name="permitMiscarry" id="chk12" data-toggle="checkbox" 
						OnClick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitMiscarry==1}">checked</c:if> />โคแท้ง
					
						
					</label>
		 		</td>
					<!-- 	 <td style="width: 287px;">
				 	<label class="checkbox" style="margin-left: 30%;">
	
					</label>
				 </td>
				  <td style="width: 376px;">
				 	<label class="checkbox" style="margin-left: 30%;">
				
					</label>
				 </td> -->
				</tr>		
			
			 </tbody>
			</table>
				
			</div>
		<div class="panel-heading">
	        <h4 class="panel-title">เกี่ยวกับระบบ</h4>
	   	</div>
		<div class="panel-body">
		  <table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
			<tbody>
				<tr>
				 <td style="width: 244px;">
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitSetting}" name="permitSetting" id="chk7" data-toggle="checkbox" 
						OnClick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitSetting==1}">checked</c:if> />ตั้งค่า 
					
						
					</label>
				 </td>
				 <td style="width: 287px;">
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitTools}" name="permitTools" id="chk8" data-toggle="checkbox" 
						OnClick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitTools==1}">checked</c:if> />เครื่องมือทั่วไป
						
						
					</label>
				 </td>
				  <td style="width: 376px;">
				 	<label class="checkbox" style="margin-left: 30%;">
						<input type="checkbox" value="${p.permitAdminTools}" name="permitAdminTools" id="chk9" data-toggle="checkbox" 
						OnClick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitAdminTools==1}">checked</c:if> />เครื่องมือผู้ดูแลระบบ
					</label>
				 </td>
				</tr>		
			 </tbody>
			</table>
				</div>
				<div class="panel-heading">
	        <h4 class="panel-title">อื่นๆ</h4>
	   	</div>
		<div class="panel-body">
		  <table class="table table-striped table-hover  table-bordered" style="font-size: 20px;">
			<tbody>
				<tr>
				 <td style="width: 907px;">
				 	<label class="checkbox" style="margin-left: 7.7%;">
						<input type="checkbox" value="${p.permitSms}" name="permitSms" id="chk10" data-toggle="checkbox" 
						OnClick="Javascript: if(this.checked){this.value='1'}else{this.value='0'}" 
						<c:if test="${p.permitSms==1}">checked</c:if> />SMS 
					
						
					</label>
		 </td>
				<!-- 		 <td style="width: 287px;">
				 	<label class="checkbox" style="margin-left: 30%;">
	
					</label>
				 </td>
				  <td style="width: 376px;">
				 	<label class="checkbox" style="margin-left: 30%;">
				
					</label>
				 </td> -->
				</tr>		
			 </tbody>
			</table>
				</div>
</div> --%>



