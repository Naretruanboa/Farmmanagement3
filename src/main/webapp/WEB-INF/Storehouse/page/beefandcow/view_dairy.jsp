<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>ข้อมูลโคนม</title>
</head>
<body>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
	<jsp:include page="../menu.jsp"/>
<%int i=1; %>	
<div class="container">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลโคนม</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> 
						<select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">หมายเลขทะเบียนโค</option>							
								<option value="2">ชื่อโค</option>
						</select> 
						<input id="search" class="form-control search-query "
							style="margin-left: -2px; margin-right: -1px;">

							<button onclick="search()"
								class="btn btn-info search-query glyphicon glyphicon-search"
								style="padding: 5px 10px 5px 10px;"></button>
						</span>
					</div>
					</div>
				</div>
			</div>
		<hr>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
	   	</div>
		<div class="panel-body">
		<div>
		<a href="dairy_beefandcow"><button type="button" class="btn btn-success">ลงทะเบียนโคใหม่</button></a>
		</div><br>
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th>ลำดับที่</th>						
				    	<th>หมายเลขทะเบียน</th>
				    	<th>เบอร์แรกเกิด</th>					    	
				        <th>ชื่อโค</th>	
				        <th>สายพันธุ์</th>		
				        <th>เพิ่มเติม</th>
				        <th>แก้ไข</th>
				        <th>ลบ</th>
				      </tr>
				</thead>   
				  
				  
				<tbody style="text-align: center;" id="listM"> 
					
				</tbody>
	    
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div> <!-- end container -->			  
				  
<jsp:include page="../footer.jsp"/>
		
</body>
<script>
$("#list").load('search_medicine',{ id : 0 ,value : 0},function(){ //load list_view_medicine
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});

$(document).on('keyup','#search',function(e){
	$("#listM").load('search_medicine',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
		$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
			for(i=0 ;i<=10;i++){
				if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
					$("[id=pageNum]").eq(i).addClass("active");
				}
			}
		});
	});
});

/* function search(){ //click button search
	$("#listM").load('search_medicine',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
		$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
			for(i=0 ;i<=10;i++){
				if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
					$("[id=pageNum]").eq(i).addClass("active");
				}
			}
		});
	});
} */


$(document).on('click','#pageNum',function(e){ // page number
	 var id =  $('[id=pageNum]').index(e.target);
	 $("#list").load('search_medicine',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});




function chkdel(str){ //alert(str);
	swal({  title: "ยืนยันการลบข้อมูล!",   
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
						url:'del_dairy',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"สำเร็จ", 
							text:"ลบเรียบร้อยแล้ว!", 
							type:"success",
							timer: 2000,   
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
						timer: 2000,   
						showConfirmButton: false
				});} 
			});

	}
</script>
</html>