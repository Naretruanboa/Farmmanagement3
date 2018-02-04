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
<script src="<c:url value="/resources/js/fileinput.js" />"></script>">
<title>ประวัติการรักษา</title>
</head>

<script type="text/javascript">

function EnableDisableTextBox(checkbox) {
    var textBox = document.getElementById ("day_input");
    textBox.readOnly = !checkbox.checked;
}

function Init () {
    var checkBox1 = document.getElementById ("check1");

    EnableDisableTextBox (checkBox1);
}

</script>

<body onload="Init(); ">
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
			<div class="col-md-3">
				<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">ประวัติการรักษา</p>
				</div>	
			</div>
			<div class="row">
				<hr>
			</div><br><br>
			<div class="row form-group">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> ข้อมูลโค</a>
						</h4>
					</div>	
					<div class="panel-body">
							<div class="row form-group">
								<div class="col-md-6">
									<fieldset><br>
									
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"></font> ชื่อโค</label>
												<div class="col-md-6">
							 						<div>
							 							<input value="${cattle.name }" id="name" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
													</div>																				
																			
												</div>
										</div>
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable"> วัน/เดือน/ปี เกิด</label>
											<div class="col-md-6">
												<input value="${cattle.calved }" id="calved" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
											</div>
										</div>										
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable">สายพันธุ์</label>
											<div class="col-md-6">
												<input value="${cattle.typeCattle.value}" id="typeCattle" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
											</div>
										</div>		
										
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable">ฝูงโค</label>
											<div class="col-md-6">
												<input value="${cattle.groupCattle.value}" id="stall" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
											</div>
										</div>		
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable">คอกโค</label>
											<div class="col-md-6">
												<input value="${cattle.stall.value}" id="stall" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
											</div>
										</div>	
											
							<%-- 			<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> คอกโค</label>
										<div class="col-md-6">
											<input value="${cattle.stall.value}" id="colo" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
										</div>
										</div>  --%>
										<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable">รหัสแม่โค</label>
											<div class="col-md-6">
												<input value="${cattle.maId }" id="maId" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
											</div>
										</div>
									<%-- 	<div class="row form-group">
											<label class="col-md-offset-s col-md-3 control-lable">สถานะการรักษา</label>
											<div class="col-md-6">
												<input value="${cattle.statusTreat.value}" id="statusTreat" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
											</div>
										</div>		--%>
										</fieldset>
										</div>
										

										<div class="col-md-4 ">
										<fieldset><br>
										<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> เบอร์แรกเกิด</label>
										<div class="col-md-6">
											<input value="${cattle.numDate }" id="numDate" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
										</div>
										</div> 
										<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> หมายเลขโค</label>
										<div class="col-md-6">
											<input value="${cattle.num }" id="num" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
										</div>
										</div> 
										<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> สายพันธุ์โค</label>
										<div class="col-md-6">
												<c:if test="${cattle.typeCattle.id == 1 }">
													<input value="${cattle.breed.value }" id="statusCattle" type="name" class="form-control"  readonly style="background-color:#e3eefd"/>	
												</c:if>
												<c:if test="${cattle.typeCattle.id == 2 }">
													<input value="${cattle.typeDairy.value }" id="typeDairy" type="name" class="form-control" readonly style="background-color:#e3eefd"/>	
												</c:if>
											
										</div>
										</div>
											<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> เพศโค</label>
										<div class="col-md-6">
											<input value="${cattle.sex.value}" id="sex" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
										</div>
										</div>
										<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> สีโค</label>
										<div class="col-md-6">
											<input value="${cattle.color.value}" id="colo" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
										</div>
										</div> 
										
														
										<div class="row form-group">
											<label  class="col-md-offset-2 col-md-3 control-label"> รหัสพ่อโค</label>
										<div class="col-md-6">
											<input value="${cattle.faId }" id="faId" type="text" class="form-control" readonly style="background-color:#e3eefd"/>
										</div>
										</div> 	
								</div>
								</div>
									
							 		</div>											
								</div>
</div>
</div>		
</div>

<div class="container">
			<div class="col-md-3">
			</div>			
					<div class="panel panel-primary">

					<div class="panel-heading">
						<h4 class="panel-title">
							<span class="fa fa-list-alt fa-lg"></span> ประวัติการรักษา </a>
						</h4>
					</div>
					<%
						int i = 1;
					%>
					<div class="panel-body">
						<table class="table table-striped table-hover  table-bordered"
							style="font-size: 16px;">
							<thead>
								<tr>
									<th style="width: 100px;">วันที่</th>
									<th style="width: 70px;">เวลา</th>
									<th style="width: 170px;">การรักษา</th>
									<th style="width: 250px;">อาการเจ็บป่วย</th>
									<th style="width: 250px;">ยาที่ใช้ในการรักษา/จำนวนยาที่ใช้</th>
									<!-- <th style="width: 60px;">จำนวนยาที่ใช้</th> -->
									<!-- <th style="width: 150px;">วันที่ติดตามการรักษา</th> -->
									<th>หมายเหตุ</th>
								</tr>
							</thead>
							<tbody style="text-align: center;" id="listM">
					
							</tbody>
						</table>
							<div class="row form-group" id="page" align="center"></div>
					
							<%-- 	</c:forEach> --%>
					<div class="col-md-offset-8 col-md-6">
						<a href=cattlelist><button type="button" class="btn btn-embossed btn-primary">
						<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; ย้อนกลับ</button></a>
						
<!-- 						<a href=EditDisease><button type="button" class="btn btn-embossed btn-warning">
						<i class="fa fa-pencil fa-lg"></i></i>&nbsp; แก้ไขข้อมูล</button></a> -->
					</div>
		
					</div>
					
																
</div>
</div>
	

<input id = "id_cattle" type="Hidden" value="${cattle.id}">




<%@ include file="../footer.jsp"%><br><br>
<script type="text/javascript">

/* var Cattlet = ${"#id_cattle"}.val(); */
$("#listM").load('search_treat',{ id : 0 ,value : 0},function(){ //load list_view_medicine
	$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast  : $("#countPage").val()},function(m){
		for(i=0 ;i<=10;i++){
			if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
				$("[id=pageNum]").eq(i).addClass("active");
			}
		}
	});
});

function search(){ //click button search
	$("#listM").load('search_treat',{ id : $("#selectValue").val(), value : $("#search").val()},function(){
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
	 $("#listM").load('search_treat',{ id : $("#selectValue").val(), value : $("#search").val(),page:$("[id=pageNum]").eq(id).val()},function(){
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