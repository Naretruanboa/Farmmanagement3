<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ตั้งค่าหน่วยที่ใช้ในคลัง</title>
<style>
ul#myTab1 li {
display:inline-table
float:inherit;
padding: 3px 3px 3px 3px;
}
</style>
<%int i=1,n=1,m=1; %>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<div class="container">
<hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">การตั้งค่าหน่วยวัตถุดิบ</p>
						</div>
					</div>	
				</div>
		</div>

<div class="row demo-row">
<div class="col-xs-1"></div>
          
          
  <div class="example">
       <div class="row form-group">
          <div class="col-md-10">
           	<div class="panel">
              	<ul id="myTab1" class="nav nav-pills nav-justified">
                	<li class="active"><a href="#raw" data-toggle="tab" style="display:block;" ><font size="5">หน่วยของวัตถุดิบ</font></a></li> 
              	</ul>
              	
              	<style>
					
					.nav-pills a:link  {
    					background-color: #CCFFFF;
					}
					
				 /* 	.nav-pills > li.active > a, .nav-pills > li.active > a:focus {
       					 color: White;
        					background-color: #ffffFF;
    				} */
		 			/* .nav-pills > li.active > a:hover {
           			 background-color: #efcb00;
            		color:black;
       			 } */

			</style>
            <!--  </div> -->
             <div id="myTabContent" class="tab-content">
           
             	<div class="tab-pane fade active in" id="raw">
             	 	<!-- <h1>raw</h1> -->
             	 	<div class="example">
      					<div class="row ">
        					<div class="col-md-6">
        						<div class="panel panel-primary">
        							<div class="panel-heading">
        								<h3 class="panel-title">เพิ่มหน่วยวัตถุดิบที่ใช้ในคลัง</h3>
        							</div>
        							<div class="panel-body">
        								<table >
        									<tbody align="center">
        									
        									<tr>
        										<td><h4>หน่วยวัตถุดิบ : </h4></td>
        										<td>
        										<form:form method="POST" commandName="Unitrawmaterial" id="Unitrawmaterial" > 
        											<form:input  id="uniraw" path = "value" class="form-control2 col-md-offset-1"  />
        										</form:form> 
												</td>
        										<td>
        											
        											<button type="button" class="btn btn-success col-md-offset-12" id="saveUnitraw">
				        								<span class="glyphicon glyphicon-floppy-saved"></span></button>
				        							
				        						</td>
        									</tr>
											</tbody>
        								</table>
        							</div>
        						</div>
        					</div>
        				
          				
          				<div class="col-md-6">
           				 <div class="panel panel-primary">
             				 <div class="panel-heading">
                				<h3 class="panel-title">หน่วยของวัตถุดิบที่ใช้อยู่</h3>
             				 </div>
             				 <table class="table table-striped table-hover  table-bordered">
									<thead>
										<tr>
				    						<th align="center">ชื่อหน่วย</th>
				       				 		<th align="center">ลบ</th>
				   		   				</tr>
				 		   		</thead>
						    		<tbody style="text-align: center;">
						   	 		<c:forEach items="${unitraw }" var="unitr">
						     			<tr>	
						      				<td>${unitr.value }</td>
						        			<td>
						        			<button class="btn btn-danger"
												value="${unitr.id}" onclick="chkdelURAW(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
		        								<%-- <form:form action="del_unit_raw?id=${unitr.id}" method="POST" commandName="show">
												
														<button name="action" type="submit" id="del_unit_raw" class="btn btn-danger"
															onclick="return confirm('Do you want to delete?')">
															<span class="glyphicon glyphicon-floppy-remove"></span>
														</button>
											
												</form:form> --%>
	        								</td>
				      					</tr>
				     				</c:forEach>	
				     				</tbody>
							</table>
            				</div>
          					</div>
        				</div>
      					</div>
             	 	
             	 	
             	 	
             	</div> <!-- //end -------------------------------------------------------------colum2 -->
             	
             </div>
              </div> <!--close panel กรอบนอก  -->
          </div>
        </div>      
  </div> 
            
</div>

</div> <!--close div conten..  -->


<jsp:include page="../footer.jsp"/>
</body>
<script type="text/javascript">
//********************************************************************ลบ
function chkdelUTOOL(str){
	swal({  title: "ยืนยันการลบ!",   
			text: "คุณต้องการลบใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'del_unit_tool',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"สำเร็จ", 
							text:"ลบเรียบร้อยแล้ว!", 
							type:"success",
							timer: 1500,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถลบได้!", "error");
					}
					
				});
					} 
				else {     swal({
						title:"ยกเลิก", 
						text:"ยกเลิกการลบเรียบร้อยแล้ว!", 
						type:"error",
						timer: 1500,   
						showConfirmButton: false
				});} 
			});
		e.prevenDefault();
}
function chkdelURAW(str){
	swal({  title: "ยืนยันการลบ!",   
			text: "คุณต้องการลบใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'del_unit_raw',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"สำเร็จ", 
							text:"ลบเรียบร้อยแล้ว!", 
							type:"success",
							timer: 1500,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถลบได้!", "error");
					}
					
				});
					} 
				else {     swal({
						title:"ยกเลิก", 
						text:"ยกเลิกการลบเรียบร้อยแล้ว!", 
						type:"error",
						timer: 1500,   
						showConfirmButton: false
				});} 
			});
		e.prevenDefault();
}

function chkdelUMED(str){
	swal({  title: "ยืนยันการลบ!",   
			text: "คุณต้องการลบใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'del_unit_medicine',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"สำเร็จ", 
							text:"ลบเรียบร้อยแล้ว!", 
							type:"success",
							timer: 1500,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถลบได้!", "error");
					}
					
				});
					} 
				else {     swal({
						title:"ยกเลิก", 
						text:"ยกเลิกการลบเรียบร้อยแล้ว!", 
						type:"error",
						timer: 1500,   
						showConfirmButton: false
				});} 
			});
		e.prevenDefault();
}

//-----------------------------------------------------------------------unitmed
$(document).on('click','#saveUnitmedicine',function(e){
	var unitmed = $("#unitmed").val();
	if(unitmed=="")
	{
		swal("ผิดพลาด", "กรุณากรอกชื่อหน่วยยาให้ถูกต้อง!", "error");
		
	}
	else
	{
		$.post('chkUnitMed',{unit:$("#unitmed").val()},function(msg){
			if(msg=="yes"){
				$.ajax({
					url:"addUnitMedicine",
					method:"POST",
					data:$("#unitMedicine").serialize()
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
				});
			}
			else
			{
				swal("ผิดพลาด", "มีชื่อหน่วยยานี้อยู่ในระบบแล้ว!", "error");
			}
			
		});
	}
		e.preventDefault();
});

//-----------------------------------------------------------------------unitraw
$(document).on('click','#saveUnitraw',function(e){
	var uniraw = $("#uniraw").val();
	if(uniraw=="")
	{
		swal("ผิดพลาด", "กรุณากรอกชื่อหน่วยวัตถุดิบให้ถูกต้อง!", "error");
		
	}
	else
	{
		$.post('chkUnitRaw',{unit:$("#uniraw").val()},function(msg){
			if(msg=="yes"){
				$.ajax({
					url:"addUnitRaw",
					method:"POST",
					data:$("#Unitrawmaterial").serialize()
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
				});
			}
			else
			{
				swal("ผิดพลาด", "มีชื่อหน่วยวัตถุดิบนี้อยู่ในระบบแล้ว!", "error");
			}
			
		});
	}
		e.preventDefault();
});

//-----------------------------------------------------------------------unittool
$(document).on('click','#saveUnittool',function(e){
	var unitTool = $("#unitool").val();
	if(unitTool=="")
	{
		swal("ผิดพลาด", "กรุณากรอกชื่อหน่วยวัสดุอุปกรณ์ให้ถูกต้อง!", "error");
		
	}
	else
	{
		$.post('chkUnitTool',{unit:$("#unitool").val()},function(msg){
			if(msg=="yes"){
				$.ajax({
					url:"addUnitTool",
					method:"POST",
					data:$("#Unittool").serialize()
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
				});
			}
			else
			{
				swal("ผิดพลาด", "มีชื่อหน่วยวัสดุอุปกรณ์นี้อยู่ในระบบแล้ว!", "error");
			}
			
		});
	}
		e.preventDefault();
});
	
/* $(document).on('click','#saveUnittool',function(e){
	var unitTool = $("#unitool").val(); //id = unitmed
	//alert(unitool);
	if(unitTool==""){
		swal("ผิดพลาด", "กรุณากรอกชื่อหน่วยวัสดุอุปกรณ์", "error");
	}
	else{
			$.ajax({
				url:"addUnitTool",
				method:"POST",
				data:$("#Unittool").serialize()   //id ของ form
			}).done(function(s){
				swal({  title: "สำเร็จ",   
					text: "บันทึกเรียบร้อยแล้ว!", 
						type: "success",   
						showCancelButton: false,   
						confirmButtonText: "OK!",   
						closeOnConfirm: false }, 
						function(){   
							window.location.href='set_unit'; 
						});
				});
		}
}); */
</script>
</html>