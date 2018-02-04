<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>นำโคร่วมงานประกวด</title>
</head>

<body>
	<jsp:include page="../menu.jsp"/>
<div align="center"><h2><font color="000000">นำโคร่วมงานประกวด</font></h2></div>
<hr>

<div class="example">
      
        <div class="row">
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">รายชื่อโค</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		 
				<thead>
					<tr>
						
				    	<th>ชื่อโค</th>
				        <th>อายุโค</th>
				        <th>สายพันธุ์</th>
				        <th>เพศ</th>
				        
				        <th>แก้ไข</th>
				        <th>นำเข้า</th>
				      </tr>
				    </thead>
				    <tbody>
				   <c:forEach items="${cowshowlist }" var="c">
				      <tr>
				   		<td class="text-center">${c.name }</td>
					    <td class="text-center">${c.age }</td>
				     	<td class="text-center">${c.gene }</td>
				     	<td class="text-center">${c.sex }</td>
				     	
				   		<td><div align="center"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#edit" 
							data-cid2="${c.idcow}" data-wid2="${wId}" data-commen="${c.commen}">
				        	<span class="glyphicon glyphicon-pencil"></span></button></div></td>
				       
				        
				        <td><div align="center">
						   <button type="button" class="btn btn-success" onclick="show(${c.idcow},${wId})" <c:if test="${c.status==0}">disabled</c:if>>
				        	<span class="glyphicon glyphicon-log-in"></span></button></div></td>
				      </tr>
					</c:forEach>
				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">โคที่ร่วมงาน</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						<th>ชื่อโค</th>
				        <th>อายุโค</th>
				        <th>สายพันธุ์</th>
				        <th>เพศ</th>
				        <th>นำออก</th>
				      </tr>
				    </thead>
				    <tbody>
				     <c:forEach items="${cowshowlist2 }" var="c">
				      <tr>
					 	<td class="text-center">${c.name }</td>
					    <td class="text-center">${c.age }</td>
				     	<td class="text-center">${c.gene }</td>
				     	<td class="text-center">${c.sex }</td>
				   
				       
				        
				        <td><div align="center"><button type="button" class="btn btn-success" data-toggle="modal" data-target="#out" 
							data-cid="${c.idcow}" data-wid="${wId}">
				        	<span class="glyphicon glyphicon-log-out"></span></button></div></td>
				      </tr>
				</c:forEach>
				</tbody>
			</table>
            </div>
            
          </div>
        </div>
           <div class="text-center">
      				<a href="Work"><button type="button" class="btn btn-danger"><i class="fa fa-reply"></i> ย้อนกลับ</button></a>
      		<c:if test="${authId==1||authId==2}">
		       <!-- <button type="button" class="btn btn-success glyphicon glyphicon-print" onclick="print1()"> พิมพ์ใบสูจิบัตรเพศผู้</button>
		       <button type="button" class="btn btn-success glyphicon glyphicon-print" onclick="print2()"> พิมพ์ใบสูจิบัตรเพศเมีย</button> -->
		       
		       <button type="button" class="btn btn-success " onclick="print1()"><i class="fa fa-print"></i> พิมพ์ใบสูจิบัตรเพศผู้  <!-- <span class="glyphicon glyphicon-print"></span> --></button>
		       <button type="button" class="btn btn-success " onclick="print2()"><i class="fa fa-print"></i> พิมพ์ใบสูจิบัตรเพศเมีย  <!-- <span class="glyphicon glyphicon-print"></span> --></button>
		    </c:if> 
		      </div> 
      </div>	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br><br><br><br><br>
<jsp:include page="../footer.jsp"/>

<div class="container">
		<!-- modal -->
		<div id="out" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<form id="outwork">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">นำโคออกจากงาน</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">เลือกเหตุผล</h4>						
						<input type="text" name="wId" id="wId" class="form-control hide"/>
						<input type="text" name="cId" id="cId" class="form-control hide"/>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>สถานะ :</h4>
							</div>
							<div class="col-md-6">
							<select name="status" id="status" class="form-control">
							  <option value="1">ปกติ</option>
							  <option value="0">ไม่ปกติ</option>
							</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>หมายเหตุ :</h4>
							</div>
							<div class="col-md-6">
							<textarea name="commen" id="commen" class="form-control"></textarea>
							 
							</div>
						</div>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="button" class="btn btn-danger" id="btn_delete"><span class="glyphicon glyphicon-trash"></span> ลบ</button>					
					</div>
				</form>
					</div>
			</div>
		</div>
		<!-- modal -->
	</div>
	
	<div class="container">
		<!-- modal -->
		<div id="edit" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
				<form id="editwork">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">แก้ไขโค</h3>						
					</div>
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>หมายเหตุ :</h4>
							</div>
							<div class="col-md-6">
							<textarea name="commen2" id="commen2" class="form-control" readonly></textarea>
							 
							</div>
						</div>	
						<input type="text" name="wId2" id="wId2" class="form-control hide"/>
						<input type="text" name="cId2" id="cId2" class="form-control hide"/>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>สถานะ :</h4>
							</div>
							<div class="col-md-6">
							<select name="status2" id="status2" class="form-control">
							  <option value="1">แก้ไขแล้ว</option>
							  <option value="0">ยังไม่ได้แก้ไข</option>
							</select>
							</div>
						</div>
						
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="button" class="btn btn-warning" id="btn_edit"><span class="glyphicon glyphicon-edit"></span> แก้ไข</button>					
					</div>
				</form>
					</div>
			</div>
		</div>
		<!-- modal -->
	</div>
<script type="text/javascript">
$('#out').on('show.bs.modal', function(e) {
	 var wid = $(e.relatedTarget).data('wid');
	 var cid = $(e.relatedTarget).data('cid');
	  $(e.currentTarget).find('input[id="wId"]').val(wid);
	  $(e.currentTarget).find('input[id="cId"]').val(cid);
});

$('#out').on('hide.bs.modal', function(e) {
	location.reload();
});

$('#edit').on('show.bs.modal', function(e) {
	 var wid2 = $(e.relatedTarget).data('wid2');
	 var cid2 = $(e.relatedTarget).data('cid2');
	 var commen = $(e.relatedTarget).data('commen');
	  $(e.currentTarget).find('input[id="wId2"]').val(wid2);
	  $(e.currentTarget).find('input[id="cId2"]').val(cid2);
	  document.getElementById('commen2').innerHTML=commen;
});

$('#edit').on('hide.bs.modal', function(e) {
	location.reload();
});
function print1(){
	window.open("Koshowpdf?wId=${wId}&sex=male");
}
function print2(){
	window.open("Koshowpdf?wId=${wId}s&sex=female");
}


function show(str,str2){
	$.ajax({
		url:'In_Work',
		type:'GET',
		data:{
			cId:str,
			wId:str2,
		},success : function (result) {
			
					location.reload();

		},error: function(result){
			swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
		}
	});
}


$(document).on('click','#btn_delete',function(e){
	$.ajax({
		url:"Out_Work",
		method:"GET",
		data:$("#outwork").serialize()
	}).done(function(s){

				location.reload(); 

	
	}).fail(function() {
		 swal("ผิดพลาด", "ไม่สามารถทำรายการได้!", "error");
	}); 
	/* }*/
	e.preventDefault();
});


$(document).on('click','#btn_edit',function(e){
	$.ajax({
		url:"edit_cow_inwork",
		method:"GET",
		data:$("#editwork").serialize()
	}).done(function(s){

				location.reload(); 

	
	}).fail(function() {
		 swal("ผิดพลาด", "ไม่สามารถทำรายการได้!", "error");
	}); 
	/* }*/
	e.preventDefault();
});

</script>
</body>
</html>