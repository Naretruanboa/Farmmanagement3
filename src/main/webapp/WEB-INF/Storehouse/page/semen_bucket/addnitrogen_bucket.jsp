<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%int i=1; %>
<meta charset="utf-8">
<title>การเติมไนโตรเจนเหลว</title>
</head>
<body>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
	<jsp:include page="../menu.jsp"/>
	
		 <div class="container">
		 <hr>
		<div class=" row form-group">
				<div class="form-inline">
					<div class="col-md-4">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">การเติมไนโตรเจนเหลวในถังเก็บน้ำเชื้อ</p>
						</div>
					</div>
					<div class="col-md-15" align="right">
						<div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="sel" style="width: 150px;color: white;">								
								<option value="1">รหัสถังเก็บน้ำเชื้อ</option>
								<option value="2">ชื่อถัง</option>							
								
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
		<br>
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
				
					<tr>
						<th>ลำดับที่</th>	
						<th>รหัสถังเก็บน้ำเชื้อ</th>				       
				        <th>ชื่อถังเก็บน้ำเชื้อ</th>
				        <th>สถานที่จัดเก็บ</th>						
				    	<th>วันที่เติมไนโตรเจนเหลวครั้งสุดท้าย</th>					    			    	
				        <th>วันที่ควรเติมไนโตรเจนเหลวครั้งใหม่</th>				        				               
				        <th>เติมไนโตรเจนเหลว</th>			       
				      </tr>
			   </thead>
			    <tbody style="text-align: center;" id="list">
			   <%-- <c:forEach items="${bucket}" var="bucket">
			   	<fmt:parseDate value="${bucket.dayInN}" pattern="yyyy-MM-dd" var="dayInN" />
				<fmt:parseDate value="${bucket.dayExpN}" pattern="yyyy-MM-dd" var="dayExpN" />
			    	<tr>
			    		<td><%=i++%></td>
						<td>${bucket.number}</td>
						<td>${bucket.name } ขนาด ${bucket.size } ลิตร</td>
						<td>${bucket.place}</td>
						<td><fmt:formatDate value="${dayInN}" pattern="dd-MM-yyyy"/></td>   
						<td><fmt:formatDate value="${dayExpN}" pattern="dd-MM-yyyy"/></td>   
						<td>
							<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" 
							data-id1="${bucket.id }" data-dayInN="${bucket.dayInN }" data-dayExpN="${bucket.dayExpN }">
								<i class="glyphicon glyphicon-plus-sign"></i>
							</button>
						</td>
				   		
				          
				 	</tr>   
				 </c:forEach> --%>
				</tbody>
			     
			</table>
			<div class="row form-group" id="page" align="center"></div>
		</div>
	</div>
	
	
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
   
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h3 class="modal-title">เติมไนโตรเจนเหลว</h3> 
      </div>
      <div class="modal-body">
      <form id="q">
      
       	
            <div class="row form-group">
				<label class="col-md-offset-1 col-md-5 control-label"><font style="color: red;">* </font>วันที่เติมไนโตรเจนเหลว</label>
				<div class="form-inline">
				
					<input name="id" id="id" type="hidden" class="form-control input-sm " size="35" />
					<input name="dayinN" id="dayin" value="${day }" type="date" class="form-control input-sm " size="35" />
				</div>
			</div>
			<div class="row form-group">
				<label class="col-md-offset-1 col-md-5 control-label"><font style="color: red;">* </font>วันที่ควรเติมไนโตรเจนเหลวครั้งถัดไป</label>
				<div class="form-inline">
					<input name="dayExpN" id="dayexp" type="date" class="form-control input-sm " size="35" />
				</div>
			</div>
			<div class="row form-group">
				<label class="col-md-offset-1 col-md-5 control-label">นำไนโตรเจนเหลวออกจากถัง</label>
				<div class="form-inline">
							<select class="form-control" id="bucketNitrogen">
										<option value="0">เลือกถังเก็บไนโตรเจนเหลว</option>
										<c:forEach items="${Nitrogen }" var="nitro">
											<option value="${nitro.id }">${nitro.number }</option>
										</c:forEach>
							</select>
				</div>
			</div><div class="row form-group">
				<label class="col-md-offset-1 col-md-5 control-label">ปริมาณการนำออก</label>
				<div class="form-inline">
					<div class="input-group">
						<input name="quantity" id="quantity" type="number" class="form-control input-sm " size="35" />
						<span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">ลิตร</span>
					</div>
				</div>
			</div>
		</form>	
      </div>
      <div class="modal-footer">
      	<button name="action" type="submit" class="btn btn-success" id="save">บันทึก</button>	
        <button type="button" class="btn btn-danger"  data-dismiss="modal">ปิด</button>	
      </div>
 
    </div>

  </div>
</div>
</div> <!-- end container -->

<jsp:include page="../footer.jsp"/>

</body>
<script type="text/javascript">

/* function search(){
	$("#list").load('search_bucketForADDNITROGEN',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
	});
} */
$("#list").load('search_bucketForADDNITROGEN',{ id : 0 ,value : 0},function(){
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=8;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});

function search(){
	$("#list").load('search_bucketForADDNITROGEN',{ id : $("#sel").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_bucketForADDNITROGEN',{ id : $("#sel").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
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
	var dayin = $("#dayin").val();
	var dayexp = $("#dayexp").val();
	var quantity = $("#quantity").val();
	var bucketNitrogen = $("#bucketNitrogen").val();
	
if( dayin == "" ){
		swal("ผิดพลาด", "กรุณากรอกข้อมูลให้ถูกต้อง!", "error");
}else if(dayexp == ""){
	swal("ผิดพลาด", "กรุณากรอกข้อมูลให้ถูกต้อง!", "error");
}else if(bucketNitrogen != 0 && quantity <= 0){
		swal("ผิดพลาด", "กรุณาระบุปริมาณการนำออกให้ถูกต้อง!", "error");
}else{
	$.ajax({
		url:"Saveaddnitrogen_bucket",
		method:"POST",
		data:$("#q").serialize()
	}).done(function(s){
		swal({  title: "สำเร็จ",   
			text: "บันทึกการเติมไนโตรเจนเหลวเรียบร้อยแล้ว!", 
			type: "success",   
			showCancelButton: false,   
			confirmButtonText: "OK!",   
			closeOnConfirm: false }, 
			
			function(){   
				location.reload(); 
				});
	
	});
 
e.preventDefault();
} 
}); 




$('#myModal').on('show.bs.modal', function(e) {
    var id1 = $(e.relatedTarget).data('id1');
    var id2 = $(e.relatedTarget).data('dayInN');
    var id3 = $(e.relatedTarget).data('dayExpN');

    $(e.currentTarget).find('input[id="id"]').val(id1);
    $(e.currentTarget).find('input[id="dayInN"]').val(id2);
    $(e.currentTarget).find('input[id="dayExpN"]').val(id3);
});

//$('#myModal').on('hide.bs.modal', function(e) {
  //  location.reload();
//});
</script>
</html>