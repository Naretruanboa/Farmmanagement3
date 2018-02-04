<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>วัสดุ/อุปกรณ์คงคลัง</title>
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
							<p style="font-size: 28px; font-weight: 700; color: white;">วัสดุ/อุปกรณ์คงคลัง</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> 
						<select class="form-control  search-query btn-info" id="sel" style="width: 150px;color: white;">								
								<!-- <option value="0">ทั้งหมด</option> -->
								<option value="1">ชื่อวัสดุ/อุปกรณ์</option>							
								<option value="2">หมวดหมู่</option>
						</select> <input id="search" class="form-control search-query " oninput="search()"
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
		<!-- <div>
		<a href="import_medicine"><button type="button" class="btn btn-success"> 
		<span class="glyphicon glyphicon glyphicon-plus"></span> นำเข้ายา</button></a>
		<a href="release_medicine"><button type="button" class="btn btn-warning">
		<span class="glyphicon glyphicon glyphicon-minus"></span> เบิกยา</button></a>
		</div><br> -->
		  <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th>ลำดับที่</th>						
				    	<th>ชื่อวัสดุ/อุปกรณ์</th>
				    	<th>หมวดหมู่</th>				      
				        <th>จำนวนคงคลัง</th>
				        <th>หน่วย</th>
				       	<th>สถานที่จัดเก็บ</th> 
				       	<c:if test="${sessionScope.privilege == 1}"><th>ชำรุดเสียหายใช้งานไม่ได้</th></c:if>
				      </tr>
				</thead> 
				
				 	<tbody style="text-align: center;" id="list"> 
						
					</tbody>
				
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
</div> <!-- end container -->

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
   
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h3 class="modal-title">ระบุจำนวนที่ชำรุดเสียหายใช้งานไม่ได้</h3> 
      </div>
      <div class="modal-body">
      <form id="q">
      <input id="beforequantity"  type="hidden" class="form-control input-sm " size="35" />
			<div class="row form-group">
				<label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>จำนวน</label>
				<div class="form-inline">
					<input name="id" id="id" type="hidden" class="form-control input-sm " size="35" />
					<input name="quantity_decrease" id="quantity" type="number" class="form-control input-sm " size="35" />
				</div>
			</div>
		</form>	
      </div>
      <div class="modal-footer">
      	<button name="action" type="submit" class="btn btn-success" id="save_decrease">บันทึก</button>	
        <button type="button" class="btn btn-danger"  data-dismiss="modal">ปิด</button>	
      </div>
 
    </div>

  </div>
</div>

<jsp:include page="../footer.jsp"/>	
	
</body>
<script type="text/javascript">
$("#list").load('search_stock_tool',{ id : 0 ,value : 0},function(){
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=8;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});

function search(){
	$("#list").load('search_stock_tool',{ id : $("#sel").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_stock_tool',{ id : $("#sel").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
			$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
				for(i=0 ;i<=8;i++){
					if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
						$("[id=pageNum]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});

$(document).on('click','#save_decrease',function(e){
	var before = $("#beforequantity").val();
	var quantity = $("#quantity").val();
	
	var b = parseInt(before);
	var q = parseInt(quantity);
	
	if( q > b || quantity <=0 ){
		swal("ผิดพลาด", "กรุณาระบุจำนวนให้ถูกต้อง!", "error");
}else{
	$.ajax({
		url:"save_decrease_tool",
		method:"POST",
		data:$("#q").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "บันทึกการลดจำนวนวัสดุอุปกรณ์ชำรุดเสียหายเรียบร้อยแล้ว!", 
			type: "success",   
			showCancelButton: false,   
			confirmButtonText: "OK!",   
			closeOnConfirm: false }, 
			
			function(){   
				location.reload(); 
				});
	
	}).fail(function() {
		swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
	});
 
e.preventDefault();
} 
}); 

//ส่งค่าไปยัง model
$('#myModal').on('show.bs.modal', function(e) {
    var id1 = $(e.relatedTarget).data('id1');
    var id2 = $(e.relatedTarget).data('beforequantity');
    var name = $(e.relatedTarget).data('name');
    
    $(e.currentTarget).find('input[id="beforequantity"]').val(id2);
    $(e.currentTarget).find('input[id="id"]').val(id1);
    //$(e.currentTarget).find('c:out[value="name"]').text(name);
    
});

</script>
</html>