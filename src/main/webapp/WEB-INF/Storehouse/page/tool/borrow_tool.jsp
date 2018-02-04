<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>การยืมคืนอุปกรณ์</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<%int i=1,j=1; %>
<div class="container">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">การยืมคืนอุปกรณ์</p>
						</div>
					</div>
					<div class="col-md-9" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> 
						 <select class="form-control  search-query btn-info" id="selectValue1" style="width: 150px;color: white;">
								<option value="1">ชื่ออุปกรณ์</option>	
						</select>
						
							<input id="search1" class="form-control search-query " oninput="search1()"
							style="margin-left: -2px; margin-right: -1px;">

							<button onclick="search1()"
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
	        <h4 class="panel-title" style="font-size: 25px;">อุปกรณ์คงคลัง</h4>
	   	</div>
		<div class="panel-body">
		  <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th>ลำดับที่</th>						
				    	<th>ชื่ออุปกรณ์</th>	
				    	<th>หมวดหมู่</th>
				        <th>ยอดที่อยู่ระหว่างการยืม</th>
				        <th>ยอดที่ยืมได้</th>
				        <th>หน่วย</th>
				        <th>ยืมอุปกรณ์</th>
				       		        
				      </tr>
				</thead> 
				
				 	<tbody style="text-align: center;" id="listBorrow"> 
							
					</tbody>
				
			</table>
			<div class="row form-group" id="p" align="center"></div>
		</div>
	</div>
<br>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 25px;">ประวัติการยืม</h4>
	   	</div>
		<div class="panel-body">
		  <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th>ลำดับที่</th>
						<th>วันที่ยืม</th>
						<th>วันที่คืน</th>					
				    	<th>รายการ</th>	
				    	<th>จำนวน</th>			      
				        <th>หน่วย</th>
				        <th>ผู้ยืม</th>
				        <th>คืนอุปกรณ์</th>
				        <th>ยกเลิกการยืม</th>
				       		        
				      </tr>
				</thead> 
				
				 	<tbody style="text-align: center;" > 
						<c:forEach items="${listBrrow }" var="listb">
						<fmt:parseDate value="${listb.dayBorrow}" pattern="yyyy-MM-dd" var="dayBorrow" />
						<fmt:parseDate value="${listb.dayReturn}" pattern="yyyy-MM-dd" var="dayReturn" />
						<tr>
							<td><%=j++%></td>						
				    		<td><fmt:formatDate value="${dayBorrow}" pattern="dd-MM-yyyy"/></td>   
				    		<td><fmt:formatDate value="${dayReturn}" pattern="dd-MM-yyyy"/></td>   	   
				    		<td>${listb.tool.name }</td>	   		
				        	<td>${listb.quantity }</td>
				        	<td>${listb.tool.unitTool.value}</td>
				        	<td>${listb.member.first} ${listb.member.last}</td>
				        	<td><button class="btn btn-info" value="${listb.id}" 
				        		onclick="chkreturn(this.value)">คืน</button></td>
				        	<td>
				        		<button class="btn btn-danger"	value="${listb.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
				        	</td>
						</tr>
						</c:forEach>
					</tbody>
				
			</table>
			
		</div>
	</div>	


<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
   
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h3 class="modal-title">ระบุจำนวนการยืม</h3> 
      </div>
      <div class="modal-body">
      <form id="Brrow">
      	<input id="beforequantity"  type="hidden" class="form-control input-sm " size="35" />
      	<input name="id" id="id" type="hidden" class="form-control input-sm " size="35" />	
       	<div class="row form-group">
				<label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>วันที่ยืม</label>
				<div class="form-inline">
					<input name="dayborrow" value="${day }" id="dayborrow" type="date" class="form-control input-sm " size="35" />
				</div>
		</div>
		<div class="row form-group">
				<label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>วันที่คืน</label>
				<div class="form-inline">
					<input name="dayreturn" id="dayreturn" type="date" class="form-control input-sm " size="35" />
				</div>
		</div>
		<div class="row form-group">
				<label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>จำนวนยืม</label>
				<div class="form-inline">
					<input name="quantity" id="quantity" type="number" class="form-control input-sm " size="35" />
				</div>
		</div>
		<div class="row form-group">
				<label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>ผู้ยืม</label>
				<div class="form-inline">
					<select class="form-control " name="memberid"  id="memberid">
						<option value="0" >ชื่อผู้ยืม</option>
						<c:forEach items="${member }" var="mem">
							<option value="${mem.id }">${mem.first} ${mem.last } </option>
						</c:forEach>
					</select>
					
				</div>
		</div>
		</form>	
      </div>
      <div class="modal-footer">
      	<button name="action" type="submit" class="btn btn-success" id="save_borrow">บันทึกการยืม</button>	
        <button type="button" class="btn btn-danger"  data-dismiss="modal">ปิด</button>	
      </div>
 
    </div>

  </div>
</div>	

</div> <!-- end container -->

<jsp:include page="../footer.jsp"/>
</body>
<script type="text/javascript">
//search for release ####################################################
$("#listBorrow").load('search_borrow_t',{ id : 1 ,value : null},function(){ 
	$("#p").load('page1',{ pagePresent1 : $("#Page1").val(), pageLast1  : $("#countPage1").val() },function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum1]").eq(i).val()==$("#Page1").val()){
				$("[id=pageNum1]").eq(i).addClass("active");
			}
		}
	});
}); 

function search1(){
	$("#listBorrow").load('search_borrow_t',{ id : $("#selectValue1").val(), value : $("#search1").val()},function(){
		$("#p").load('page1',{ pagePresent1 : $("#Page1").val(), pageLast1 : $("#countPage1").val()},function(m){
			for(i=0 ;i<=10;i++){
				if($("[id=pageNum1]").eq(i).val()==$("#Page1").val()){
					$("[id=pageNum1]").eq(i).addClass("active");
				}
			}
		});
	});
}

$(document).on('click','#pageNum1',function(e){ 
	 var id =  $('[id=pageNum1]').index(e.target);
	 $("#listBorrow").load('search_borrow_t',{ id : $("#selectValue1").val(), value : $("#search1").val(),page:$("[id=pageNum1]").eq(id).val()},function(){
			$("#p").load('page1',{ pagePresent1 : $("#Page1").val(), pageLast1 : $("#countPage1").val()},function(m){
				for(i=0 ;i<=10;i++){
					if($("[id=pageNum1]").eq(i).val()==$("#Page1").val()){
						$("[id=pageNum1]").eq(i).addClass("active");
					}
				}
			});
			
		}); 
});

$(document).on('click','#save_borrow',function(e){
	var beforequantity = $("#beforequantity").val();
	var quantity = $("#quantity").val();
	var dayborrow = $("#dayborrow").val();
	var dayreturn = $("#dayreturn").val();
	var memberid = $("#memberid").val();
	
	var b = parseInt(beforequantity);
	var q = parseInt(quantity);
	
if( q > b || quantity <=0 ){
		swal("ผิดพลาด", "กรุณาระบุจำนวนเบิกให้ถูกต้อง!", "error");
}else if(dayborrow == "" || dayreturn =="" ){
		swal("ผิดพลาด", "กรุณากรอกวันที่ให้ถูกต้อง!", "error");
	}else if(memberid == 0){
		swal("ผิดพลาด", "กรุณาระบุชื่อผู้ยืมให้ถูกต้อง!", "error");
	}else{
			$.ajax({
				url:"SaveBorrow_tool",
				method:"POST",
				data:$("#Brrow").serialize()   //id ของ form
			}).done(function(s){
				swal({  title: "สำเร็จ",   
					text: "บันทึกการยืมเรียบร้อยแล้ว!", 
						type: "success",   
						showCancelButton: false,   
						confirmButtonText: "OK!",   
						closeOnConfirm: false }, 
						function(){   
							window.location.href='borrow_tool'; 
						});
				});
		e.preventDefault();
		}
});


$('#myModal').on('show.bs.modal', function(e) {
    var id1 = $(e.relatedTarget).data('id1');
    var id2 = $(e.relatedTarget).data('beforequantity');

    $(e.currentTarget).find('input[id="beforequantity"]').val(id2);
    $(e.currentTarget).find('input[id="id"]').val(id1);
    
});
//$('#myModal').on('hide.bs.modal', function(e) {
  //  location.reload();
//});



//คืนอุปกรณ์
function chkreturn(str){//alert(str);
						swal({  title: "ยืนยันการคืนอุปกรณ์!",   
								text: "คุณต้องการคืนอุปกรณ์ใช่หรือไม่?",   
								type: "warning",   
								showCancelButton: true,   
								confirmButtonColor: "#DD6B55",   
								confirmButtonText: "ต้องการ",   
								cancelButtonText: "ไม่ต้องการ",   
								closeOnConfirm: false,   closeOnCancel: false 
								}, function(isConfirm){   
									if (isConfirm) {     
										$.ajax({
											url:'return_tool',
											type:'POST',
											data:{
												id:str, //send id to controller and have value=str
											},success : function (result){
										swal({title:"สำเร็จ", 
												text:"คืนอุปกรณ์เรียบร้อยแล้ว!", 
												type:"success",
												timer: 2000,   
												showConfirmButton: false
											},function(isClose){ 
												window.location.reload();
											}
											);   
											}
										,error: function(result){
											swal("ผิดพลาด", "ไม่สามารถคืนอุปกรณ์ได้!", "error");
										}
										
									});
										} 
									else {     swal({
											title:"ยกเลิก", 
											text:"ยกเลิกการคืนเรียบร้อยแล้ว!", 
											type:"error",
											timer: 2000,   
											showConfirmButton: false
									});} 
								});
	
						}

function chkdel(str){ //alert(str);
	swal({  title: "ยกเลิกการยืมอุปกรณ์!",   
			text: "คุณต้องการยกเลิกการยืมอุปกรณ์ใช่หรือไม่?",   
			type: "warning",   
			showCancelButton: true,   
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "ต้องการ",   
			cancelButtonText: "ไม่ต้องการ",   
			closeOnConfirm: false,   closeOnCancel: false 
			}, function(isConfirm){   
				if (isConfirm) {     
					$.ajax({
						url:'cancle_borrow_tool',
						type:'POST',
						data:{
							id:str,
						},success : function (result){
					swal({title:"เสร็จเรียบร้อย", 
							text:"ยกเลิกการยืมเรียบร้อยแล้ว!",
							type:"success",
							timer: 2000,   
							showConfirmButton: false
						},function(isClose){ 
							window.location.reload();
						}
						);   
						}
					,error: function(result){
						swal("ผิดพลาด", "ไม่สามารถยกเลิกการยืมได้!", "error");
					}
					
				});
					} 
				else {  swal({
						title:"ยกเลิก", 
						text:"ยกเลิกการรายการที่เลือกเรียบร้อยแล้ว!", 
						type:"error",
						timer: 2000,   
						showConfirmButton: false
				});} 
			});

	}
</script>
</html>
