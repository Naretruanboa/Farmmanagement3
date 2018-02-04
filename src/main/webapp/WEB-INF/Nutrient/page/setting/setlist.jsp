<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>ข้อมูลวัสดุ/อุปกรณ์</title>
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
							<p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลโค</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">								
								<option value="1">โคเนื้อ</option>							
								<option value="2">โคนม</option>
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
	        <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
	   	</div>
		<div class="panel-body">
		<div>
		<a href="add_tool"><button type="button" class="btn btn-success">ลงทะเบียนโค</button></a>
		</div><br>
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th>ลำดับที่</th>						
				   	 	<th>รหัสโค</th>
				   	 	<th>ประเภทโค</th>					    	
				        <th>พันธุ์โค</th>
				        <th>รายละเอียด</th>
				        <th>แก้ไข</th>
				        <th>ลบ</th>
				      </tr>
				</thead>   
				  
				  
				<tbody style="text-align: center;" > 
					<c:forEach items="${tools}" var="tool">
						<tr>
										<td><%=i++%></td>
										<td>${tool.name }</td>
										<td>${tool.typeTool.value }</td>	
										<!-- <td>ใช้งานได้ปกติ</td>			 -->						
										
										<td>
										<form:form action="edit_tool?id=${tool.id }" method="POST" commandName="show">
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form>
																	
										</td>
										<td>
										<%-- <form:form action="del_tool?id=${tool.id }" method="POST" commandName="show">
											
											<button name="action" type="submit" id="del_tool" class="btn btn-danger">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
											
										</form:form> --%>	
										
										  <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
											<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>								
										</td>
						</tr>
						
					</c:forEach>
				</tbody>
	    
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div> <!-- end container -->			  
				  
				 
 <c:forEach items="${tools}" var="tool">
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
    <form action="del_tool?id=${tool.id }" method="POST" commandName="show">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title">ลบข้อมูล</h3>
      </div>
      <div class="modal-body">
        <h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>	
      </div>
      <div class="modal-footer">
      	<button name="action" type="submit" class="btn btn-danger" id="del_tool">ลบ</button>	
        <button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
      </div>
      </form>
    </div>

  </div>
</div>
</c:forEach>
				      
	
	
	
	<jsp:include page="../footer.jsp"/>
	

	<!-- <script>
	$('#del').on('show.bs.modal', function(e) {
		 var g_id = $(e.relatedTarget).data('gid');
		  $(e.currentTarget).find('input[id="Did"]').val(g_id);
	});
	
	$('#del').on('hide.bs.modal', function(e) {
		location.reload();
	});
	
		$('#edit').on('show.bs.modal', function(e) {
		    var g_name = $(e.relatedTarget).data('gname');
		    var g_id = $(e.relatedTarget).data('gid');
		    var g_birthday = $(e.relatedTarget).data('gbirthday');
		    var g_sex = $(e.relatedTarget).data('gsex');
		    var g_father = $(e.relatedTarget).data('gfather');
		    var g_mother = $(e.relatedTarget).data('gmother');
		    var g_deverloper = $(e.relatedTarget).data('gdeverloper');
		    $(e.currentTarget).find('input[id="name"]').val(g_name);
		    $(e.currentTarget).find('input[id="id"]').val(g_id);
		    $(e.currentTarget).find('input[id="birthday"]').val(g_birthday);
		    $(e.currentTarget).find('input[id="sex"]').val(g_sex);
		    $(e.currentTarget).find('input[id="dad"]').val(g_father);
		    $(e.currentTarget).find('input[id="mom"]').val(g_mother);
		    $(e.currentTarget).find('input[id="depv"]').val(g_deverloper);

		});
		
		$('#edit').on('hide.bs.modal', function(e) {
			location.reload();
		});
		
		
		
		
		$("#list").load('search_cattle_show',{ id : 0 ,value : 0},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=8;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
		});

		function search(){
			$("#list").load('search_cattle_show',{ id : $("#sel").val(), value : $("#search").val()},function(){
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
			 $("#list").load('search_cattle_show',{ id : $("#sel").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
					$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
						for(i=0 ;i<=8;i++){
							if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
								$("[id=pageNum]").eq(i).addClass("active");
							}
						}
					});
					
				}); 
		});
		
		
		
		
		
		$(document).on('click','#add',function(e){
			$.ajax({
				url:"AddDetailCowPan",
				method:"POST",
				data:$("#cowpan").serialize()
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
		</script> -->
	
</body>
</html>