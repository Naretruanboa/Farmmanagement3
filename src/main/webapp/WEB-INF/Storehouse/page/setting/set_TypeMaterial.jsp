<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ตั้งค่าประเภทวัตถุดิบ</title>
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
							<p style="font-size: 28px; font-weight: 700; color: white;">การตั้งค่าประเภทวัตถุดิบ</p>
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
              	
             <div id="myTabContent" class="tab-content">
             	<div class="tab-pane fade active in" id="breed">
             	 	<!-- <h1>medicine</h1> -->
             	 	<div class="example">
      					<div class="row ">
        					<div class="col-md-6">
        						<div class="panel panel-primary">
        							<div class="panel-heading">
        								<h3 class="panel-title">เพิ่มประเภทวัตถุดิบ</h3>
        							</div>
        							<div class="panel-body">
        								<table >
        									<tbody align="center">
        									
        									<tr>
        										<td><h4>ชื่อประเภท : </h4></td>
        										<td>
        										<form:form commandName="addTypeMaterial" id="addTypeMaterial" >
        											<form:input  id="value" path = "value" class="form-control2 col-md-offset-1"  />
        										</form:form>
												</td>
        										<td>
        											
        											<button type="button" class="btn btn-success col-md-offset-12" id="add">
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
                				<h3 class="panel-title">ประเภทวัตถุดิบที่มีอยู่</h3>
             				 </div>
             				 <table class="table table-striped table-hover  table-bordered">
									<thead>
										<tr>
				    						<th align="center">ชื่อประเภท</th>
				       				 		<th align="center">ลบ</th>
				   		   				</tr>
				 		   		</thead>
						    		<tbody style="text-align: center;">
						   	 		<c:forEach items="${type }" var="t">
						     			<tr>	
						      				<td>${t.value }</td>
						        			<td>
						        			<button class="btn btn-danger"
												value="${t.id}" onclick="chkdel(this.value)">
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
$(document).on('click','#add',function(e){
	var value = $("#value").val();
	if(value=="")
	{
		swal("ผิดพลาด", "กรอกชื่อประเภทวัตถุดิบให้ถูกต้อง!", "error");
		
	}
	else
	{
		$.post('chkTypeMaterial',{unit:$("#value").val()},function(msg){
			if(msg=="yes"){
				$.ajax({
					url:"addTypeMaterial",
					method:"POST",
					data:$("#addTypeMaterial").serialize()
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
				swal("ผิดพลาด", "มีหมวดหมู่นี้อยู่ในระบบแล้ว!", "error");
			}
			
		});
	}
		e.preventDefault();
});
function chkdel(str){
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
						url:'DelTypeMaterial',
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