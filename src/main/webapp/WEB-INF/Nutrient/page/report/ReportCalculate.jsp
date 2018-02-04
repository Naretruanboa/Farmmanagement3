<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title> ออกรายงานการจัดสัดส่วนอาหารข้นราคาต่ำสุด</title>

</head>

<body>

	<jsp:include page="../menu.jsp"/>
<%int i =1; %>
		<div class="container" style="color: black; ">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-5">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 25px; font-weight: 700; color: white;">ออกรายงานการจัดสัดส่วนอาหารข้นราคาต่ำสุด</p>
						</div>
					</div>
					<div class="col-md-8" align="right">
						<div class="input-group form-search">

						<!-- <span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">ชื่อวัตถุดิบ</option>						
								<option value="3">ชื่อพ่อ</option>
								<option value="4">ชื่อแม่</option>
								<option value="5">เจ้าของโค</option>
						</select> 		<input id="search" class="form-control search-query " oninput="search()"
							style="margin-left: -2px; margin-right: -1px;">

							<button 
								class="btn btn-info search-query glyphicon glyphicon-search"
								style="padding: 5px 10px 5px 10px;"></button>
						</span> -->
					</div>
					</div>
				</div>
			</div>
		<hr>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 20px;">ออกรายงานการจัดสัดส่วนอาหารข้นราคาต่ำสุด</h4>
	   	</div>
		<div class="panel-body">
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th style="width: 60px"><center>ลำดับที่</center></th>
						<th><center>น้ำหนักรวม</center></th>
				    	<th><center>ราคาเฉลี่ย</center></th>
				        <th style="width: 200px"><center>วัตถุดิบอาหารแห้งที่คำนวณได้</center></th>
				        <th><center>วัตถุดิบอาหารแห้งที่ต้องการ</center></th>
				        <th><center>โปรตีน</center></th>
				        
				 
				        <th><center>พิมพ์</center></th>
				        
				      </tr>
				   
				    </thead>
				  <tbody style="text-align: center;" id="list">
				  
				</tbody>
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div>
 <!-- end container -->

	<jsp:include page="../footer.jsp" />
	
<script>

		//printPDF
		function report_show(id){
			window.open("LowReport?id="+id);
		}

		$("#list").load('search_formu',{ id : 0 ,value : 0},function(){ //load list_view_medicine
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
		});
		function search(){ //click button search
			$("#list").load('search_formu',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
				$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
					for(i=0 ;i<=10;i++){
						if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
							$("[id=pageNum]").eq(i).addClass("active");
						}
					}
				});
			});
		}


		$(document).on('click','#pageNum',function(e){ // page number
			 var id =  $('[id=pageNum]').index(e.target);
			 $("#list").load('search_formu',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
					$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
						for(i=0 ;i<=10;i++){
							if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
								$("[id=pageNum]").eq(i).addClass("active");
							}
						}
					});
					
				}); 
		});
		
</script>


</body>
</html>