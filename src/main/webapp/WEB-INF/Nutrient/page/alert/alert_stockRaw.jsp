<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<c:url value="/resources/js/baloon.js"/>"></script> <!-- สคริปเรียกalert -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>การแจ้งเตือน</title>
</head>
<body ><!-- OnLoad="JavaScript:alert()" -->

   
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
	<jsp:include page="../menu.jsp"/>
<%int i=1; %>


		 <div class="container">
		 <hr>
		 
		<div class=" row form-group">
				<div class="form-inline">
				<br>
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							
							<p style="font-size: 28px; font-weight: 700; color: white;">การแจ้งเตือนวัตถุดิบ</p>
						</div>
					</div>
				</div>
				
			</div>
		<hr>
		         

		<div class="col-md-3">
				<div class="panel panel-primary">
				
				<div class="panel-heading">
				
					<h4 class="panel-title"><font size="5">ประเภทการแจ้งเตือน</font></h4>
				</div>
				<div class="panel-body " >
					<ul id="myTab1" class="nav nav-pills  nav-justified " >
					<style>
					
					.nav-pills a:link  {
    					background-color: #CCFFFF;
					}
					
				 	/* .nav-pills > li.active > a, .nav-pills > li.active > a:focus {
       					 color: White;
        					background-color: #ffffFF;
    				}
		 			 .nav-pills > li.active > a:hover {
           			 background-color: #efcb00;
            		color:black;
       			 }  */

			</style>
                
                 <li class="active"><a href="alertfood3"><font size="4">วัตถุดิบคงคลัง</font></a></li><br>
            
                <li><a href="alertfood6" ><font size="4">วันหมดอายุของวัตถุดิบ</font></a></li><br>
         
              </ul>
				</div>
			</div>
		</div>

		 <!-- //ตาราง -->
		 <div class="col-md-9">  
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title"><font size="5">รายละเอียดข้อมูล</font></h4>
				</div>
				<div class="panel-body" >
				<div id="myTabContent" class="tab-content">
<div class="tab-pane fade active in" id="SE" style="color: black;">
              <form id="closeAlert">  
                 <table align="center" class="table table-striped table-hover  table-bordered">
				<thead >
				
					<tr>
						<th>ลำดับที่</th>
				        <th>รายการ</th>
				        <th>จำนวน</th>
				    	<th>หน่วย </th>
				    	<c:if test="${sessionScope.privilege ==1}"><th>ปิดการแจ้งเตือน </th></c:if>
				      </tr>
				
				    </thead>
				    <tbody style="text-align: center;" id="list">
				    
				</tbody>
			</table>
				
			</form>
			<div class="row form-group" id="page" align="center"></div>
			<c:if test="${sessionScope.privilege ==1}">
							<div class="text-center">
							<input type="checkbox" id="checkAll" data-toggle="checkbox" class="form-control hide"/>
							<button type="button" id="toggle" class="btn btn-embossed btn-primary" onclick="checkall()">เลือก/ไม่เลือก ทั้งหมด</button>
					   		<button type="button" class="btn btn-success" id="save">บันทึก</button>
					   		</div>
					   		<br>
			</c:if>
                </div>
  </div>
			</div>
		</div>
	</div>
		 </div>
<jsp:include page="../footer.jsp"/>
</body>

<script type="text/javascript"> //สคริปแจ้งเตือน
$("#list").load('alert_stockRaw',function(){
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
		for(i=0 ;i<=8;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
}); //จาก id list ที่ tbody จะทัมการโหลดไฟล์ alert_list มาแสดง


$(document).on('click','#pageNum',function(e){
	 var id =  $('[id=pageNum]').index(e.target);
	 $("#list").load('alert_stockRaw',{ page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=8;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
}); 

//ปิดการแจ้งเตือน
$(document).on('click','#save',function(e){

$.ajax({
	url:"closeAlertRaw",
	method:"GET",
	data:$("#closeAlert").serialize()
}).done(function(s){
	swal({  title: "สำเร็จ",   
		text: "บันทึกเรียบร้อยแล้ว!", 
		type: "success",   
		showCancelButton: false,   
		timer: 2000,
		confirmButtonText: "OK!",
		closeOnConfirm: false }, 
		
		function(){   
			location.reload(); 
			});

}).fail(function() {
	 swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
}); 
/* }*/
e.preventDefault();
});

function checkall() {
    var a = document.getElementById("checkAll");
    var x = document.getElementsByName("check");

    if(a.checked == true)
    {
          a.checked = false;
          for(i=0;i<=x.length;i++){
      		if(x[i].type=="checkbox"){
      			x[i].checked=false;
      		}
      		if(x[i].type=="hidden"){
  				x[i].disabled=false;
  	
  		}
      	}
    }
 else
    {
          a.checked = true;
          for(i=0;i<=x.length;i++){
      		if(x[i].type=="checkbox"){
      				x[i].checked=true;
      		}
      		if(x[i].type=="hidden"){
  				x[i].disabled=true;
  			}
      	}
    }
}//end check ALL

 </script>
 
</html>