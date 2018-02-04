<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<%int i=1; %>  
<br>
<br>
<br>
<div class="row">
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">รายการโค</h4>
	   	</div>
		<div class="panel-body">
		    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add" 
							data-gid="${f.id}"><span class="glyphicon glyphicon-plus"></span>เพิ่มโค</button><br></br>
		  	<table class="table table-striped table-hover  table-bordered">
		  		<thead>
		  			<tr>
		  				<th>ลำดับที่</th>
		  				<th>ชื่อ</th>
		  				<th>สี</th>
		  				<th>วันเกิด</th>
		  				<th>น้ำหนัก</th>
		  				<th>ฟาร์ม</th>
		  				<th>ลบ</th>
		  			</tr>
		  		</thead>
				    <tbody>
				    <c:forEach items="${cowlist }" var="c">
				  		 <tr>
				  			<td class="text-center"><%=i++ %></td>
				  			<td class="text-center">${c.name}</td>
				  			<td class="text-center">${c.color}</td>
				  			<td class="text-center">${c.birthday}</td>
				  			<td class="text-center">${c.weight}</td>
				  			<td class="text-center">${c.farm}</td>
				  			<td class="text-center">
				  			<button type="button" class="btn btn-danger glyphicon glyphicon-remove" data-toggle="modal" data-target="#del" 
							data-gid="${c.id}" data-gwid="${wId}">
							</button>
				  			</td> 
				      	</tr>
				      	</c:forEach>
				      	<tr>
				  			<td class="text-center"><br></td>
				  			<td class="text-center"> </td>
				  			<td class="text-center"> </td>
				  			<td class="text-center"> </td>
				  			<td class="text-center"> </td>
				  			<td class="text-center"> </td>
				  			<td class="text-center"> </td>
				      	</tr>
				    </tbody>
				    <tbody>
		  	</table>
		  	<div class="text-center">
					
			
					<a href="ViewCow3">
						<button type="button" class="btn btn-danger fui-plus-circle"><i class="fa fa-reply"></i> ย้อนกลับ</button>
					</a>
		</div>

		</div>
		
		<br>
	</div>
</div>
</div>



	<!-- modal -->
	<div class="container">
		<!-- modal -->
		<div id="add" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
			<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">ข้อมูลโค</h4>
	   	</div>
		<div class="panel-body">
		 
					  <form:form commandName="fattenlist" id="fattenlist" method="post"  ><!-- onsubmit="return chk()&&a()" -->
            
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ชื่อโค :</h4>
							</div>
							<div class="col-md-7">
								<form:input path="name" id="name" class="form-control" />
							</div>
						</div>
						
				<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>วันเกิด :</h4>
							</div>
							<div class="col-md-7">
								<form:input type="date" path="birthday" id="birthday" class="form-control" />
							</div>
						</div>
			
	
					
			
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>เพศ :</h4>
							</div>
							<div class="col-md-7">
				<form:select class="form-control" path="sex" id="sex">
                <option value="male">ผู้</option>
                <option value="female">เมีย</option>
           		</form:select>    
							</div>
						</div>
						
						
				 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สี :</h4>
							</div>
							<div class="col-md-7">
				<form:select class="form-control" items="${colorlist }" path="color" id="color"/>

							</div>
						</div>
						
						
			  <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>น้ำหนักโค :</h4>
							</div>
							<div class="col-md-7">
								<form:input path="weight" id="weight" class="form-control" />
							</div>
						</div>
								
									
			
		
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ชื่อฟาร์ม :</h4>
							</div>
							<div class="col-md-7">
								<form:input type="text" path="farm" id="farm" class="form-control"  />
							</div>
						</div>
			
		
							
				
							<form:hidden path="cattleFatten.id" id="cattleFatten.id" value="${wId}"/>

         </form:form>
         				<div class="row">
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-success text-center" id="save">ลงทะเบียน</button>
								<button type="button" class="btn btn-danger text-center"  id="btn_cancle" data-dismiss="modal">ย้อนกลับ</button>
							</div>
						</div>
            </div>
              </div>
					</div>
			</div>
		</div>
		<!-- modal -->
	</div>
	
	
	<div class="container">
		<!-- modal -->
		<div id="del" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<form action="Del_fattenlist" method="get">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบข้อมูล</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" name="Did" id="Did" class="form-control hide"/>
						<input type="text" name="wId" id="wId" class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_delete">ลบ</button>					
					</div>
				</form>
					</div>
			</div>
		</div>
		<!-- modal -->
	</div>
  <jsp:include page="../footer.jsp"/>
  
<script type="text/javascript">
$('#del').on('show.bs.modal', function(e) {
	 var g_id = $(e.relatedTarget).data('gid');
	 var wid = $(e.relatedTarget).data('gwid');
	  $(e.currentTarget).find('input[id="Did"]').val(g_id);
	  $(e.currentTarget).find('input[id="wId"]').val(wid);
});

$('#del').on('hide.bs.modal', function(e) {
	location.reload();
});

$(document).on('click','#save',function(e){
$.ajax({
		url:"add_fatten_list",
		method:"POST",
		data:$("#fattenlist").serialize()
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
		 swal("ผิดพลาด...", "ไม่สำเร็จ!", "error");
	});  
	/* }*/
	e.preventDefault();
});


</script>
</body>
</html>