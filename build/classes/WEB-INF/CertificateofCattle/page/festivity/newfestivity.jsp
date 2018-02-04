<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>จัดงานโค</title>
<script type="text/javascript">
function checkwork()
{
	var title = $("#title").val();
	var SWork = $("#SWork").val();
	var EWork=$("#EWork").val();
	var SData = $("#SData").val();
	var EData = $("#EData").val();
	var file1 = $("#file1").val();
	var file2 = $("#file2").val();
	var percen = $("#percen").val();
	var details = $("#details").val();
	var location = $("#location").val();
	var farmName = $("#farmName").val();
	var phone = $("#phone").val();
	var referee = $("#referee").val();
	var MsgError=""; 
	if(title==""){
		MsgError+="ใส่ชื่องานให้ถูกต้อง\n";
	}
	if(SWork==""){
		 MsgError+="ใส่วันที่เริ่มงานให้ถูกต้อง\n";
		  }
	if(EWork==""){
		 MsgError+="ใส่วันที่สิ้นสุดงานให้ถูกต้อง\n";
		  }
	if(SData==""){
		 MsgError+="ใส่วันที่เริ่มรับข้อมูบให้ถูกต้อง\n";
		  }
	if(EData==""){
		 MsgError+="ใส่วันที่สิ้นสุดรับข้อมูลให้ถูกต้อง\n";
		  }
	if(file1==""){
		 MsgError+="ใส่โลโก้ให้ถูกต้อง\n";
		  }
	if(file2==""){
		 MsgError+="ใส่โปสเตอร์ให้ถูกต้อง\n";
		  }
	 if(details==""){
			MsgError+="ใส่รายละเอียดให้ถูกต้อง\n";
		}
	 if(location==""||location.length<20){
			MsgError+="ใส่ที่อยู่ฟาร์มให้ถูกต้อง\n";
		}
	 if(percen==""){
			MsgError+="ใส่เปอร์เซ็นให้ถูกต้อง\n";
		}
	 if(farmName==""){
			MsgError+="ใส่ชื่อฟาร์มให้ถูกต้อง\n";
		}
	 if(phone==""){
			MsgError+="ใส่เบอร์โทรศัพท์ให้ถูกต้อง\n";
		}
	 if(referee==""){
			MsgError+="ใส่ผู้ตัดสินให้ถูกต้อง\n";
		}
	 if(MsgError!=""){
		 swal("ผิดพลาด!",MsgError, "error");
		 return false;
	 }
	 else{
		 return true;
		 }
	 
}
</script>
</head>

<body>

	<jsp:include page="../menu.jsp"/>
<%int i=1; %>      
	
	    <h2 align="center"><font color="000000">จัดงานโค</font> </h2>
	    <hr>
	    
	    
		
	  <div class="row demo-row">
        <div class="col-xs-3"></div>
        
          <div class="col-xs-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">เพิ่มงานโค</h4>
	   	</div>
		<div class="panel-body">
		 
			 <form:form action="saveFestivity" method="POST" enctype="multipart/form-data" commandName="festivity" id="festivity" onsubmit="return checkwork();">
			 <div class="row form-group">
			 	<div class="col-md-offset-1 col-md-2">
			 		<h4><font color="red">*</font> ประเภทงาน :</h4>
			 	</div>
			 	<div class="col-md-7">
			 	 
			 	 <form:select path="type.id" id="type.id" items="${typelist}" class="form-control"/>

			 	</div>
			 </div>
			 
			 <div class="row form-group">
			 	<div class="col-md-offset-1 col-md-2">
			 		<h4><font color="red">*</font> ชื่องาน :</h4>
			 	</div>
			 	<div class="col-md-7">			 		
			 		<form:input path="title" id="title" class="form-control" />
			 	</div>
			 </div>
			 
			 <div class="row form-group">
			 	<div class="col-md-offset-1 col-md-2">
			 		<h4><font color="red">*</font> สายพันธุ์ :</h4>
			 	</div>
			 	<div class="col-md-7">
			 		
		 		<form:select path="gene" id="gene" class="form-control" items="${genelist }"/>
	
				</div>
			</div>
		<div id="jd">
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> วันเริ่มงาน :</h4>
				</div>
				<div class="col-md-7">					
					<form:input path="SWork" id="SWork" class="form-control" type="date"/>
				</div>
			</div>
	
<%-- 	<div class="col-md-4">
								<div class="form-inline">
									<label class="control-label"><font style="color: red;">* </font>วัน/เดือน/ปี เกิด : </label>
									<form:input path="people.birthdate" type="date"
										class="form-control input-sm " size="12" />
								</div>
							</div> --%>
	
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> วันสิ้นสุดงาน :</h4>
				</div>
				<div class="col-md-7">
					<form:input path="EWork" id="EWork" class="form-control" type="date"/>
				</div>
			</div>
	</div>
		<div id="jd2">
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> เริ่มรับข้อมูล :</h4>
				</div>
				<div class="col-md-7">
					<form:input path="SData" id="SData" class="form-control " type="date"/>
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> สิ้นสุดรับข้อมูล </h4>
				</div>
				<div class="col-md-7">
					<form:input path="EData" id="EData" class="form-control" type="date"/>
				</div>
			</div>
	</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> เปอร์เซ็น :</h4>
				</div>
				<div class="col-md-7">
					<form:input path="percen" id="percen" class="form-control" type="number"/>
				</div>
			</div>
			
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> โลโก้งาน :</h4>
				</div>
		<div class="col-md-7">
	<input id="file1" type="file" name="file1" class="file" multiple="false" data-show-upload="false" data-show-caption="true">
		</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> โปสเตอร์งาน :</h4>
				</div>
				<div class="col-md-7">
				<input id="file2" name="file2" type="file" class="file" multiple="true" data-show-upload="false" data-show-caption="true">
				</div>
			</div>
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> ผู้ตัดสิน :</h4>
				</div>
				<div class="col-md-7">					
					<form:input path="referee" id="referee" class="form-control" />				
				</div>
			</div>
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>รายละเอียดงาน :</h4>
				</div>
				<div class="col-md-7">					
					<form:textarea path="details" id="details" class="form-control" />				
				</div>
			</div>
		</div>
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">หน่วยงานที่จัดงาน</h4>
	   	</div>
	   	<div class="panel-body">
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> ชื่อหน่วยงาน :</h4>
				</div>
				<div class="col-md-7">					
					<form:input path="farmName" id="farmName" class="form-control" />
				</div>
			</div>
			
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> ที่อยู่-หน่วยงาน </h4>
				</div>
				<div class="col-md-7">					
					<form:input path="location" id="location" class="form-control" />
				</div>
			</div>
			
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4><font color="red">*</font> โทรศัพท์ :</h4>
					
				</div>
				<div class="col-md-7">					
					<form:input path="phone" id="phone" class="form-control" />
				</div>
			</div>
	
			<div class="row">
				<div class="col-md-12 text-center">
					
					<button type="submit" name="add" class="btn btn-success">จัดงาน</button>					
					<a href="Work">
						<button type="button" class="btn btn-danger fui-plus-circle"><i class="fa fa-reply"></i> ย้อนกลับ</button>
					</a>
					<br></br>
				</div>
			</div>
             		</form:form>       
            </div>
            
              </div>
            </div>
         </div>
         <br></br>
        
 <script type="text/javascript">
$(document).on('click','#add',function(e){
	$.ajax({
		url:"saveFestivity",
		method:"POST",
		data:$("#festivity").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ!",   
			text: "เรียบร้อยแล้ว!", 
			type: "success",   
			showCancelButton: false,   
			confirmButtonText: "OK!",   
			closeOnConfirm: false }, 
			
			function(){   
				location.reload(); 
				});
	}).fail(function() {
		swal("ไม่สำเร็จ...", "ผิดพลาด!", "error");
	}); 
	e.preventDefault();
});
</script>


	
  <jsp:include page="../footer.jsp"/>
</body>
</html>