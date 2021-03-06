<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/fileinput.css" />" media="all"
	rel='stylesheet' type='text/css' />

<link href="<c:url value="/resources/css/easy-autocomplete.min.css" />" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/easy-autocomplete.themes.min.css" />" rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="<c:url value="/resources/js/jquery.easy-autocomplete.min.js" />"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">

<script src="<c:url value="/resources/js/clicktable.js" />"></script>
<script src="<c:url value="/resources/js/fileinput.js" />"></script>
<title>ข้อมูลโรค</title>
</head>
<body>
	<%@ include file="../menu.jsp"%>
	<br><br>
	<div id="wraper">
			<div id="content">
			<div class="container">
				<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">รายการข้อมูลโรค</p>
					</div>
				</div>
				<div class="row">
					<hr>
				</div>

				<div align="right" class=" row form-group"
							style="margin-right: 30px">
							<div class="form-inline">
								<label for="select">ค้นหาโดย</label>
								<div class="input-group form-search">

									<select class="form-control  search-query"
										style="width: 150px; border-radius: 10px 0px 0px 10px; margin-right: -1px;"
										id="selectValue" onchange="changInput()">
										<option value="1">ชื่อโรค</option>
										<option value="2">อาการของโรค</option>
										<option value="3">ประเภทของโรค</option>

									</select> <span class="input-group-btn"> <input type="text"
										class="form-control search-query" id="search" oninput="search()">
										<button class="btn btn-info " type="button" onclick="search()"
											id="btnSeach"
											style="border-radius: 0px 10px 10px 0px; padding: 5px 7px 5px 7px; margin-top: 0px;">
											<i class="fa fa-search fa-lg"></i> ค้นหา
										</button>
									</span>
								</div>
							</div>
						</div>
				<center>
					<hr>
				</center>
				<br>



				<div class="panel panel-primary">

					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> ข้อมูลโรค
						</h4>
					</div>
					<%
						int i = 0;
					%>
					<div class="panel-body">
						<table class="table table-striped table-hover  table-bordered"
							style="font-size: 16px;">
							<thead>
								<tr>
									<th style="width: 55px;">ลำดับที่</th>
									<th style="width: 190px;">ชื่อโรค</th>
									<th>อาการของโรค</th>
									<th style="width: 190px;">ประเภทโรค</th>
									<th style="width: 190px;">ผู้บันทึก</th>
									<th>รายละเอียด</th>
					<c:if test="${sessionScope.privilege == 1 || sessionScope.privilege ==2 || sessionScope.privilege ==3}">				
									<th>แก้ไข</th>
									<th>ลบ</th>
					</c:if>				
									<!-- <th>ลบ</th> -->


								</tr>
							</thead>
							<tbody style="text-align: center;" id="list">

							</tbody>
						</table>
						<div class="row form-group" id="page" align="center"></div>
					</div>
					
				</div>
			</div>
		</div>
	</div>			
	<%@ include file="../footer.jsp"%>	
	
</body>


<script type="text/javascript">

$("#list").load('search_disease',{ id : 0 ,value : 0},function(){ //load list_view_medicine
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});
function search(){ //click button search
	$("#list").load('search_disease',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
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
	 $("#list").load('search_disease',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
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
						url:'del_disease',
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