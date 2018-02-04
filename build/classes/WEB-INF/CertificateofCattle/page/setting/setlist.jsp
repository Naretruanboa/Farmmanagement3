<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>ตั้งค่ารายการต่างๆ</title>
<script language ="javascript">
function changeSrc(test){
var x=test.options[test.selectedIndex].value;
var x1 = "<c:url value='/img/form_kopun/"+x+".jpg'/>"
document.getElementById("myImage").src = x1;//.src
document.getElementById("myf").innerHTML = "แบบที่ " + x;
}
</script>

<script type="text/javascript">
function show(str)
{
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  } 
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","getStandard?id="+str,true);	
xmlhttp.send();
}

</script>
</head>
<body>
<%
int i=1;
%>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
 <c:forEach items="${userlist}" var="p">
 	<%-- <c:if test="${p.privilege.id != 2 && p.privilege.id != 1}">
		<c:redirect url="index"/>
	</c:if> --%>
 </c:forEach>
	<jsp:include page="../menu.jsp"/>
<div align="center"><h2><font color="000000">ตั้งค่ารายการต่างๆ</font></h2></div>
<hr>

 <div class="row demo-row">
        <div class="col-xs-1"></div>
          
          
  <div class="example">
        <div class="row">
          <div class="col-md-10">
           <div class="panel">
            
              <ul id="myTab1" class="nav nav-pills nav-justified">
                <li class="active"><a href="#home1" data-toggle="tab"><font size="3">เพิ่มสีโค</font></a></li>
                <li><a href="#profile1" data-toggle="tab"><font size="3">เพิ่มสายพันธุ์</font></a></li>
                 <li><a href="#profile2" data-toggle="tab"><font size="3">เลือกแบบฟอร์ม</font></a></li>
                   <li><a href="#profile4" data-toggle="tab" ><font size="3">ตั้งค่ารุ่นโคประกวด</font></a></li>
                
              </ul>
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home1">
                
                 <div class="example">
      
        			<div class="row">
          			<div class="col-md-6">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">เพิ่มสี</h3>
              		</div>
              		<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				      <tr>
				    <td><div align="center"><div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สี :</h4>
							</div>
							<div class="col-md-7">
								<form:form commandName="color" id="colorForm">									
									<form:input path="value" id="colorName" class="form-control"  placeholder="สี"/>									
								</form:form>
							</div>
						</div></div></td>
				   
				       
				        <td><div align="center"><a>
				        <button type="button" class="btn btn-success" id="saveColor">
				        	<span class="glyphicon glyphicon-floppy-saved"></span></button></a></div></td>
				      </tr>
				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-Primary">
              <div class="panel-heading">
                <h3 class="panel-title">สีที่มีอยู่</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th align="center">สี</th>
				        <th align="center">ลบ</th>
				      </tr>
				    </thead>
				    <tbody>
				   
				   	  <c:forEach items="${colorlist }" var="color">
				      <tr>				   
				    	<td><div align="center">${color.value}</div></td>
				        <td>
				        	<div align="center">

				        	<button class="btn btn-danger" value="${color.id}" onclick="onClickDeleteColor(this.value)"><span class="glyphicon glyphicon-floppy-remove"></span></button>
		
		        			</div>
	        			</td>
				      </tr>
				      </c:forEach>

						</tbody>
						</table>
            			</div>
          				</div>
        				</div>
      					</div>
      			</div>
                
                <div class="tab-pane fade" id="profile1">
                  
                  <div class="example">
      
        			<div class="row">
          			<div class="col-md-6">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">เพิ่มสายพันธุ์</h3>
              		</div>
              		<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				      <tr>
				    <td><div align="center"><div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สายพันธุ์ :</h4>
							</div>
							<div class="col-md-7">								
								<form:form commandName="gene" id="geneForm">									
									<form:input path="name" id="name" class="form-control"  placeholder="สายพันธุ์"/>									
								</form:form>
							</div>
						</div></div></td>
				   
				       
				        <td><div align="center"><a><button type="button" class="btn btn-success" id="saveGene">
				        	<span class="glyphicon glyphicon-floppy-saved"></span></button></a></div></td>
				      </tr>
				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-Primary">
              <div class="panel-heading">
                <h3 class="panel-title">สายพันธุ์ที่มีอยู่</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th align="center">สายพันธุ์</th>
				        <th align="center">ลบ</th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				   

				      <c:forEach items="${genelist }" var="gene" >
				      <tr>				   
				    	<td><div align="center">${gene.name}</div></td>
				        <td>
				        	<div align="center">
				        	<button class="btn btn-danger" value="${gene.id}" onclick="onClickDeleteGen(this.value)"><span class="glyphicon glyphicon-floppy-remove"></span></button>
		        			</div>
	        			</td>
				      </tr>
				      </c:forEach>
				      

						</tbody>
						</table>
            			</div>
          				</div>
        				</div>
      					</div>
                  
                </div>
                
                
                <div class="tab-pane fade" id="profile2">
                  
                  <div class="example">
      
        			<div class="row">
          			<div class="col-md-offset-3 col-md-6">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">เลือกแบบฟอร์ม</h3>
              		</div>
              		<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				    
				    <tr>
				    <td><div align="center"><div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ฟอร์ม:</h4>
							</div>
							
						<div class="col-md-7">
				<form id="formlist">
				<select class="form-control" name="flist" id="flist" onChange="changeSrc(this)">
                <option>เลือกแบบฟอร์ม</option>
                <option value="1">แบบที่ 1</option>
               <option value="2">แบบที่ 2</option>
               <option value="3">แบบที่ 3</option>
               <option value="4">แบบที่ 4</option>
               <option value="5">แบบที่ 5</option>
           		</select>    
           		</form>
           		<div class="text-center"><button type="button" class="btn btn-success" id="saveform"><i class="fa fa-floppy-o"></i> บันทึก</button></div>
                
						</div>
						</div>
						</div>
						</td>
				       
				      </tr>
				     
				      <tr>
				      	<td class="text-center">
				      	<c:forEach items="${formlist }" var="form">
				      	<img src="<c:url value="/img/form_kopun/${form.name}.jpg"/>" id="myImage" style="height: 350px; width: 480px;">
				      		<h4 id="myf">แบบที่ ${form.name}</h4>
				      	</c:forEach>
				      
				      	</td>
				      </tr>
				      
				</tbody>
			</table>
               
            </div>
          </div>
      
        				</div>
      					</div>
                  
                </div>
                
                
                
<!--               ********************************-***************************************** -->

                
              <!--   ----------------------------------------------------------- -->
              
              
              
              
                  
                  
                  <!-- ---------------------------------------------------------------- -->
                  
                   <div class="tab-pane fade" id="profile4">
                  
                  <div class="example">
      
        			<div class="row">
          			<div class="col-md-offset-3 col-md-7">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">ตั้งค่ารุ่นโคประกวด</h3>
              		</div>
              		<div class="panel-body">
              		<form id="standard">
              		<center><select class="form-control text-center"  name="standard" id="standard" onChange="show(this.value)">
                		<option value=="">เลือกประเภท</option>
                		<option value="1">CALF</option>
		                <option value="2">INTERMEDIATE</option>
		                <option value="3">JUNIOR</option>
		                <option value="4">SENIOR</option>
           		 	</select></center>    
              		
					<div id="txtHint"></div>
					</form>
					</div> <!-- panel-body -->
				
                 <div class="text-center"><button type="button" class="btn btn-success" id="saveStandard"><i class="fa fa-floppy-o"></i> บันทึก</button></div>
                <br>
            </div>
           
         <!--  </div>
      
        				</div>
      					</div> -->
                  
                </div>
                
                <!-- -------------------------------------------------------------------------- -->
               
              </div>
            </div>
          </div></div></div>
          </div>
          
          
          
          
          
          

          
          
          <!-- modal -->
		<div id="modal-delete-color" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title"> <span class="glyphicon glyphicon-trash"></span>  ลบสีโค</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" id="delete-color-id" readonly class="form-control hide"/>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger" id="btn_color_delete"><span class="glyphicon glyphicon-trash"></span> ลบ</button>				
					<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>
							
							
										
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<!-- modal -->
		<div id="modal-delete-gen" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title"><span class="glyphicon glyphicon-trash"></span>  ลบพันธุ์โค</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" id="delete-gen-id" readonly class="form-control hide"/>
					</div>
					<div class="modal-footer">		
					<button type="submit" class="btn btn-danger" id="btn_gen_delete"><span class="glyphicon glyphicon-trash"></span> ลบ</button>					
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
										
					</div>
				</div>
			</div>
		</div></div></div></div>
		<!-- modal -->
		
		
		
		<script type="text/javascript">
		
		$(document).on('click','#saveColor',function(e){
					var colorName = $("#colorName").val();
					if(colorName=="")
					{
						swal("ผิดพลาด...", "กรุณากรอกชื่อสี!", "error");

					}
					else
						{
					$.post('checkColor',{color:$("#colorName").val()},function(msg){
						if(msg=="yes"){
		 	        	$.ajax({
		 					url:"addColor",
		 					method:"POST",
		 					data:$("#colorForm").serialize() 
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
		 					 swal("Oops...", "Fail!", "error");
		 				}); 
	        		}
						else
						{
							 swal("ไม่สำเร็จ...", "ชื่อสีซ้ำ!", "error");
						}
	        	});
						}
					e.preventDefault();
			
					}); 
		
		
		
		
		
		
		//add Gene
			$(document).on('click','#saveGene',function(e){
					var geneName = $("#name").val();
					if(geneName=="")
					{
						swal("ไม่สำเร็จ...", "กรุณากรอกสายพันธุ์!", "error");
						
					}
					else
						{
					$.post('checkGene',{geneName:geneName},function(msg){
						if(msg=="yes"){
		 	        	$.ajax({
		 					url:"addGene",
		 					method:"POST",
		 					data:$("#geneForm").serialize() 
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
		 					 swal("Oops...", "Fail!", "error");
		 				}); 
	        		}
						else
						{
							 swal("ไม่สำเร็จ...", "สายพันธุ์ซ้ำ!", "error");
						}
	        	});
					
						}
					e.preventDefault();

					}); 

			    
			    function onClickDeleteColor(val){
			    	swal({  title: "แจ้งเตือน!",   
						text: "คุณต้องการลบใช่หรือไม่?",   
						type: "warning",   
						showCancelButton: true,   
						confirmButtonColor: "#DD6B55",   
						confirmButtonText: "ใช่, ต้องการลบ!",   
						cancelButtonText: "ไม่, ยกเลิกการลบ!",   
						closeOnConfirm: false,   closeOnCancel: false 
						}, function(isConfirm){   
							if (isConfirm) {     
								$.ajax({
									url:'deleteColor',
									type:'POST',
									data:{
										id:val,
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
			    }        
			    
			    
			    ///
			
			    
	
			    function onClickDeleteGen(val){
			    	swal({  title: "แจ้งเตือน!",   
						text: "คุณต้องการลบใช่หรือไม่?",   
						type: "warning",   
						showCancelButton: true,   
						confirmButtonColor: "#DD6B55",   
						confirmButtonText: "ใช่, ต้องการลบ!",   
						cancelButtonText: "ไม่, ยกเลิกการลบ!",   
						closeOnConfirm: false,   closeOnCancel: false 
						}, function(isConfirm){   
							if (isConfirm) {     
								$.ajax({
									url:'deleteGene',
									type:'POST',
									data:{
										id:val,
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
			    }        

			    
			    
			    
			    
			    //add form
			    
		$(document).on('click','#saveform',function(e){
		 	        	$.ajax({
		 					url:"addForm",
		 					method:"POST",
		 					data:$("#formlist").serialize() 
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
		 					 swal("Oops...", "Fail!", "error");
		 				}); 
	        		
						
					e.preventDefault();
			
					}); 
		
			    
			    
			    
			    
		  //edit %%%%%%
	    
	/* 	$(document).on('click','#savePer',function(e){
		 	        	$.ajax({
		 					url:"editExcise",
		 					method:"POST",
		 					data:$("#Fpercen").serialize() 
		 				}).done(function(s){
		 					swal({  title: "Good job!",   
								text: "Successful!", 
								type: "success",   
								showCancelButton: false,   
								confirmButtonText: "OK!",   
								closeOnConfirm: false }, 
								
								function(){   
									location.reload();
									});
		 				}).fail(function() {
		 					 swal("Oops...", "Fail!", "error");
		 				}); 
	        		
						
					e.preventDefault();
			
					}); 
		  
		  
		  
		  
 //edit farm
	    
		$(document).on('click','#savefarm',function(e){
		 	        	$.ajax({
		 					url:"editFarm",
		 					method:"POST",
		 					data:$("#farm").serialize() 
		 				}).done(function(s){
		 					swal({  title: "Good job!",   
								text: "Successful!", 
								type: "success",   
								showCancelButton: false,   
								confirmButtonText: "OK!",   
								closeOnConfirm: false }, 
								
								function(){   
									location.reload();
									});
		 				}).fail(function() {
		 					 swal("Oops...", "Fail!", "error");
		 				}); 
	        		
						
					e.preventDefault();
			
					}); 
		 */
 
 
 
 
 	//edit standard koshow
 	$(document).on('click','#saveStandard',function(e){
		 	        	$.ajax({
		 					url:"editStandard",
		 					method:"POST",
		 					data:$("#standard").serialize() 
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
		 					 swal("ไม่สำเร็จ...", "กรุณาเลือกประเภท!", "error");
		 				}); 
	        		
						
					e.preventDefault();
			
					}); 
		
		</script>
		<jsp:include page="../footer.jsp"/>
</body>
</html>