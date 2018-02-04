<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>ออกรายงาน</title>

</head>

<body>

<jsp:include page="../menu.jsp"/>
	<%int i=1,n=1,m=1; %>
		<hr> 
       		<div class="container">
        		<div class="col-md-3">
					<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
						align="center">
						<p style="font-size: 28px; font-weight: 700; color: white;">ออกรายงานจำนวนคงคลัง</p>
					</div>
				</div>
			 </div>
		<div class="container">
			<br>
			<div class="panel-body" style="font-size: 18px;" >
				<div class="row form-group" align="center">
						<label style="font-size: 20px; font-weight: bold;">เลือกประเภทรายงานคงคลัง : </label>
						<select class="form-control" style="font-size: 18px;" id="selectValue" > <!-- onchange="selectsR(this);" -->
								<option value="0">กรุณาเลือกประเภทรายงาน</option>
								<option value = "1">รายงานยาคงคลัง</option>
								<option value = "2">รายงานน้ำเชื้อคงคลัง</option>
								<option value = "3">รายงานวัตถุดิบอาหารสัตว์คงคลัง</option>
								<option value = "4">รายงานวัสดุ/อุปกรณ์คงคลัง</option>
						</select>
						<button type="button" class="btn btn-info btn-lg" id="btnSeach">
								<i class="fa fa-search"></i> ค้นหา
						</button>
				</div>
				
<br>    
	<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<i class="fa fa-list-alt fa-lg"></i> ข้อมูลที่ต้องการ
						</h4>
					</div>
					<div class="panel-body" style="font-size: 18px;">
						<table class="table table-striped table-hover table-bordered" id="dataBody" >
							
						</table>
							<div class="row form-group" id="page" align="center"></div>
						<center>
							<h4 style="font-size: 38px; color: gray;" id="not_found">ไม่พบข้อมูล!!</h4>
						</center>
						<div class="row form-group" align="right" id="btnReport">
							<button type="button" class="btn btn-success btn-lg">
								<i class="fa fa-print fa-lg"></i> พิมพ์รายงาน
							</button>
						</div> 
					</div>
				</div>
          </div>
          </div>	
          
      
          <jsp:include page="../footer.jsp"/>
	

</body>
<script type="text/javascript">


	//$("#btnReport").addClass("hide");
	$("#not_found").addClass("hide");
	
	$(document).on('click','#btnSeach',function(e){
		var id = $("#selectValue").val();
		if(id!=0){
				$("#dataBody").load('search_Stock_pdf',{id : id}
				,function(e){
					
					$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
						for(i=0 ;i<=8;i++){
							if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
								$("[id=pageNum]").eq(i).addClass("active");
							}
						}
					});
					
					if($("#count").val()!=0){
						$("#not_found").addClass("hide");
						$("#btnReport").removeClass("hide");
						$("#dataBody").removeClass("hide");
					}else{
						$("#not_found").removeClass("hide");
						$("#dataBody").addClass("hide");
						$("#btnReport").addClass("hide");
					} 
				});
		}else{
			swal("ผิดพลาด!", "กรุณาเลือกประเภทรายงานคงคลัง", "error");
		}
	});
	
	$(document).on('click','#pageNum',function(e){
		 var id =  $('[id=pageNum]').index(e.target);
		 $("#dataBody").load('search_Stock_pdf',{ id:$("#selectValue").val(),page:$("[id=pageNum]").eq(id).val()},function(){
				$("#page").load('page',{ pagePresent : $("#Page").val(), pageLast : $("#countPage").val()},function(m){
					for(i=0 ;i<=8;i++){
						if($("[id=pageNum]").eq(i).val()==$("#Page").val()){
							$("[id=pageNum]").eq(i).addClass("active");
						}
					}
				});
				
			}); 
	}); 	
	//printpdf
	$(document).on('click','#btnReport',function(e){
		//var count = $("#count").val();
		//alert(count);
		var id = $("#selectValue").val();
		if(id!=0){
			window.open("ReportStock?id="+$("#selectValue").val());
		}else{
			swal("ผิดพลาด!", "กรุณาเลือกประเภทรายงานคงคลัง", "error");
		}
	});	 


	

</script>
</html>