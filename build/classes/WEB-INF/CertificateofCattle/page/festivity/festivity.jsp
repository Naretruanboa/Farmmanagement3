<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>ข้อมูลงานโค</title>

</head>

<body>
<jsp:include page="../menu.jsp"/>
<%int i=1; %>           
		 <div class="container">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลงานโค</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="sel" style="width: 150px;color: white;">								
								
							<!-- 	<i class="fa fa-search"></i> -->
								
								<option value="1">ชื่องาน</option>
								<option value="2">ประเภทงาน</option>
								<option value="3">สายพันธุ์</option>
						</select> <input id="search" class="form-control search-query "
							style="margin-left: -2px; margin-right: -1px;">

							<button onclick="search()"
								class="btn btn-info search-query "
								style="padding: 5px 10px 10px 8px;"><i class="fa fa-search"></i></button>
						</span>
					</div>
					</div>
				</div>
			</div>
		<hr>
		 <div class="row demo-row">
        <div class="col-xs-12">
        
         
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 25px;">รายชื่องานโค</h4>
	   	</div>
		<div class="panel-body">
		<c:if test="${auth==1||auth==2}">
		<div>
			<a href="addWork"><button type="button" class="btn btn-success fui-plus-circle"><font color="white"><span class="glyphicon glyphicon-plus"></span> เพิ่มงานโค</font>
			</button></a>
		</div><br>
		</c:if>
			
 <form action="saveNew" id="new" method="GET">
		  	<table class="table table-striped table-hover  table-bordered">
		  	
		  			     
				<thead>
				
					<tr>
						<th><center>ลำดับที่</center></th>
						 <c:if test="${auth==1||auth==2}">
						<th><center>สถานะงาน</center></th>
						</c:if>
				    	<th><center>ชื่องาน</center></th>
				        <th><center>ประเภทงาน</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>วันเริ่มงาน</center></th>
				   <c:if test="${auth==1||auth==2}">
				        
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				    </c:if>

				        <th><center>นำโคร่วมงาน</center></th>
				        
				   
				       
				      </tr>
				    </thead>
				   
				    <tbody style="text-align: center;" id="list">
				    	 
				</tbody>
			
			</table>
			</form>
			<div class="row form-group" id="page" align="center"></div>
		  <div class="text-center">
		   <button type="button" class="btn btn-success" id="save">ตกลง</button>
		   </div>
		</div>
	</div>
	<br></br>
</div> <!-- end container -->
</div>
</div>

			
			<ul class="nav navbar-nav navbar-right">
			<li class="font-nav"></li>
			<li class="font-nav"></li>
		</ul>
			


		<!-- modal -->
	<div class="container">
		<!-- modal -->
		<div id="del" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<form action="DeleteWork" method="get">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title"><span class="glyphicon glyphicon-trash"></span> ลบข้อมูล</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลงานโคนี้ใช่หรือไม่</h4>						
						<input type="text" name="Wid" id="Wid" class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						
						<button type="submit" class="btn btn-danger" id="btn_delete"><span class="glyphicon glyphicon-trash"></span> ลบ</button>					
					<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
					</div>
				</form>
					</div>
			</div>
		</div>
		<!-- modal -->
	</div>
	
	
	
		<div id="footer_container">
	<footer class="footer">
	<div class="container">
		<div class="col-md-6" align="left">
				<div class="row form-inline">
						<span style="color: white;font-size: 16px;">Copyright ©2015</span>
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="development" target="_blank" style="font-size: 16px;">Development Team</a>	
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="contact" target="_blank" style="font-size: 16px;">Contact</a>
				</div>
				<div class="row form-inline">
					<span style="color: white;font-size: 16px;">By Computer Engineering 
					<a href="http://www.up.ac.th" target="_blank" class="textright">University Of Phayao &nbsp;</a></span>
					<a href="https://www.facebook.com/ComputerEngineeringUP?fref=ts" target="_blank" class="textright"><i class="fa fa-facebook-official"></i></a>
				</div>
		</div>
		<div class="col-md-6">
			<div align="right">
				<a>
					<a class="textright" href="index">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</a>
					<img id="imgfooter" src="<c:url value="/resources/img/b2.png" /> " height="45" " title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
</div>
<script type="text/javascript">
$('#del').on('show.bs.modal', function(e) {
	 var g_id = $(e.relatedTarget).data('gid');
	  $(e.currentTarget).find('input[id="Wid"]').val(g_id);
});

$('#del').on('hide.bs.modal', function(e) {
	location.reload();
});





$("#list").load('search_festivity',{ id : 0 ,value : 0},function(){
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
		for(i=0 ;i<=8;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});

function search(){
	$("#list").load('search_festivity',{ id : $("#sel").val(), value : $("#search").val()},function(){
		$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
			for(i=0 ;i<=8;i++){
				if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
					$("[id=pageNum]").eq(i).addClass("active");
				}
			}
		});
	});
}

$(document).on('click','#pageNum',function(e){
	 var id =  $('[id=pageNum]').index(e.target);
	 $("#list").load('search_festivity',{ id : $("#sel").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=8;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});


$(document).on('click','#save',function(e){
	$.ajax({
		url:"saveNew",
		method:"GET",
		data:$("#new").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ!",   
			text: "โชว์งานโคเรียบร้อยแล้ว!", 
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
	/* }*/
	e.preventDefault();
});

</script>
</body>
</html>