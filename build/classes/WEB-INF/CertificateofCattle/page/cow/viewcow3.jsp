<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>โคประมูลโคขุน</title>

</head>

<body>

	<jsp:include page="../menu.jsp"/>
<%int i =1; %>
		<div class="container">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">โคประมูลโคขุน</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="sel" style="width: 150px;color: white;">								
								<option value="1">สายพันธุ์</option>	
								<option value="2">ล็อต</option>						
								<!-- <option value="3">ชื่อพ่อ</option>
								<option value="4">ชื่อแม่</option>
								<option value="5">เจ้าของโค</option> -->
						</select> <input id="search" class="form-control search-query "
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
	        <h4 class="panel-title" style="font-size: 25px;">รายชื่อโคประมูลโคขุน</h4>
	   	</div>
		<div class="panel-body">
			<div>
			<a href="addCow3"><button type="button" class="btn btn-success fui-plus-circle"><span class="glyphicon glyphicon-plus"></span> เพิ่มโคขุน</button></a> |
		  	<a href="ViewCow2"><button type="button" class="btn btn-danger fui-plus-circle"><span class="glyphicon glyphicon-list"></span> รายชื่อโคพันธุ์</button></a>
			</div><br>
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>จำนวนโค</center></th>
				    	<th><center>ล็อต</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>รายการโค</center></th>
				        <th><center>ลบ</center></th>
				        
				      </tr>
				    </thead>
				    <%-- <tbody style="text-align: center;">
				    <c:forEach items="${car }" var="c">
				    <tr>
				    	<td>${c.quantity}</td>
				    <td>2</td>
				    <td>2</td>
				    <td>2</td>
				    <td>2</td>
				    <td>2</td>
				    <td>2</td>
				    </tr>
				    </c:forEach>
				</tbody> --%>
				  <tbody style="text-align: center;" id="list">
				</tbody>
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div>
 <!-- end container -->

			
		
			 
		   




	
	
	<div class="container">
		<!-- modal -->
		<div id="del" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<form action="Del_Cow3" method="get">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title"><span class="glyphicon glyphicon-trash"></span> ลบข้อมูล</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" name="Did" id="Did" class="form-control hide"/>
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
	
		<p class="text-muted">
			
		</p>
	
	
<script>

$('#del').on('show.bs.modal', function(e) {
	 var g_id = $(e.relatedTarget).data('gid');
	  $(e.currentTarget).find('input[id="Did"]').val(g_id);
});

$('#del').on('hide.bs.modal', function(e) {
	location.reload();
});
		$('#edit').on('show.bs.modal', function(e) {
		    var g_quantity = $(e.relatedTarget).data('gquantity');
		    var g_id = $(e.relatedTarget).data('gid');
		    var g_lot = $(e.relatedTarget).data('glot');
		    var g_weight = $(e.relatedTarget).data('gweight');
		    var g_gene = $(e.relatedTarget).data('ggene');
		    var g_start = $(e.relatedTarget).data('gstart');
		    var g_end = $(e.relatedTarget).data('gend');
		    $(e.currentTarget).find('input[id="num"]').val(g_quantity);
		    $(e.currentTarget).find('input[id="id"]').val(g_id);
		    $(e.currentTarget).find('input[id="lot"]').val(g_lot);
		    $(e.currentTarget).find('input[id="weight"]').val(g_weight);
		    $(e.currentTarget).find('input[id="gene"]').val(g_gene);


		});
		
		$('#edit').on('hide.bs.modal', function(e) {
			location.reload();
		});
		
		
		
		
		
		$("#list").load('search_cattle_fatten',{ id : 0 ,value : 0},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=8;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
		});

		function search(){
			$("#list").load('search_cattle_fatten',{ id : $("#sel").val(), value : $("#search").val()},function(){
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
			 $("#list").load('search_cattle_fatten',{ id : $("#sel").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
					$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
						for(i=0 ;i<=8;i++){
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