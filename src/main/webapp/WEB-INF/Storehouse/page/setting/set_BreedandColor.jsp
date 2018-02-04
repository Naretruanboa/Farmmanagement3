<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ตั้งค่าสายพันธุ์และสี</title>
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
							<p style="font-size: 28px; font-weight: 700; color: white;">การตั้งค่าสายพันธุ์และสี</p>
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
                	<li class="active"><a href="#breed" data-toggle="tab"><font size="5">สายพันธุ์</font></a></li>
               	 	<li><a href="#color" data-toggle="tab"><font size="5">สีพ่อพันธุ์</font></a></li>
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
             	<div class="tab-pane fade active in" id="breed">
             	 	<!-- <h1>medicine</h1> -->
             	 	<div class="example">
      					<div class="row ">
        					<div class="col-md-6">
        						<div class="panel panel-primary">
        							<div class="panel-heading">
        								<h3 class="panel-title">เพิ่มสายพันธุ์</h3>
        							</div>
        							<div class="panel-body">
        								<table >
        									<tbody align="center">
        									
        									<tr>
        										<td><h4>ชื่อสายพันธุ์ : </h4></td>
        										<td>
        										<form:form commandName="addbreed" id="addbreedddd" >
        											<form:input  id="value" path = "value" class="form-control2 col-md-offset-1"  />
        										</form:form>
												</td>
        										<td>
        											
        											<button type="button" class="btn btn-success col-md-offset-12" id="addb">
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
                				<h3 class="panel-title">สายพันธุ์ที่มีอยู่</h3>
             				 </div>
             				 <table class="table table-striped table-hover  table-bordered">
									<thead>
										<tr>
				    						<th align="center">ชื่อสายพันธุ์</th>
				       				 		<th align="center">ลบ</th>
				   		   				</tr>
				 		   		</thead>
						    		<tbody style="text-align: center;">
						   	 		<c:forEach items="${breed }" var="breed">
						     			<tr>	
						      				<td>${breed.value }</td>
						        			<td>
						        			<button class="btn btn-danger"
												value="${breed.id}" onclick="chkdelBREED(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
											</button>
										
	        								</td>
				      					</tr>
				     				</c:forEach>	
				     				</tbody>
							</table>
            				</div>
          					</div>
        				</div>
      					</div>
             	</div> <!-- //end -------------------------------------------------------------colum1 -->
             	
             	
             	<div class="tab-pane fade" id="color">
             	 	<!-- <h1>raw</h1> -->
             	 	<div class="example">
      					<div class="row ">
        					<div class="col-md-6">
        						<div class="panel panel-primary">
        							<div class="panel-heading">
        								<h3 class="panel-title">เพิ่มสีพ่อพันธุ์</h3>
        							</div>
        							<div class="panel-body">
        								<table >
        									<tbody align="center">
        									
        									<tr>
        										<td><h4>ชื่อสี : </h4></td>
        										<td>
        										<form:form method="POST" commandName="addcolor" id="addcolor">
        											<form:input path="value" id="value1" class="form-control2 col-md-offset-1"/>
        										</form:form>
        									  	
												</td>
        										<td>
        											
        											<button type="button" class="btn btn-success col-md-offset-12" id="addc">
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
                				<h3 class="panel-title">สีพ่อพันธุ์ที่ใช้อยู่</h3>
             				 </div>
             				 <table class="table table-striped table-hover  table-bordered">
									<thead>
										<tr>
				    						<th align="center">ชื่อสี</th>
				       				 		<th align="center">ลบ</th>
				   		   				</tr>
				 		   		</thead>
						    		<tbody style="text-align: center;">
						   	 		<c:forEach items="${color }" var="color">
						     			<tr>	
						      				<td>${color.value }</td>
						        			<td>
						        		
		        								<button class="btn btn-danger"
												value="${color.id}" onclick="chkdelCOLOR(this.value)">
												<span class="glyphicon glyphicon-floppy-remove"></span>
												</button>
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
$(document).on('click','#addb',function(e){
	var value = $("#value").val();
	if(value=="")
	{
		swal("ผิดพลาด", "กรอกชื่อสายพันธุ์ให้ถูกต้อง!", "error");
		
	}
	else
	{
		$.post('checkBreed',{breed:$("#value").val()},function(msg){
			if(msg=="yes"){
				$.ajax({
					url:"addBreed",
					method:"POST",
					data:$("#addbreedddd").serialize()
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
				swal("ผิดพลาด", "มีสายพันธุ์นี้อยู่ในระบบแล้ว!", "error");
			}
			
		});
	}
		e.preventDefault();
});
	

$(document).on('click','#addc',function(e){
	var value = $("#value1").val();
	if(value1=="")
	{
		swal("ผิดพลาด", "กรอกชื่อสีให้ถูกต้อง!", "error");
		
	}
	else
	{
		$.post('checkColor',{color:$("#value1").val()},function(msg){
			if(msg=="yes"){
				$.ajax({
					url:"addColor",
					method:"POST",
					data:$("#addcolor").serialize()
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
				swal("ผิดพลาด", "มีสีนี้อยู่ในระบบแล้ว!", "error");
			}
			
		});
	}
		e.preventDefault();
	}); 
	
	
//remove------------------------------------------------------------------------
function chkdelBREED(str){
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
											url:'DelBreed',
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


function chkdelCOLOR(str){
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
						url:'DelColor',
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
</script>
</html>