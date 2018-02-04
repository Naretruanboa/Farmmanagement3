<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ออกใบสรุปค่าใช้จ่าย</title>
<script type="text/javascript">
function show(str)
{
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  } 
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    document.getElementById("print").value=str;
    }
  }
xmlhttp.open("GET","getWork?wId="+str,true);	
xmlhttp.send();
}

</script>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<div><h2 align="center"><font color="000000">ออกใบสรุปค่าใช้จ่าย</font></h2></div>
<hr>


 <div class="row demo-row">
        <div class="col-xs-1"></div>
        
          <div class="col-xs-10">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">ข้อมูลโค</h4>
	   	</div>
	   	<form id="calpercen">	
		<div class="panel-body">

 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>เลือกงานโค :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control"  id="wId" name="wId" onchange="show(this.value)">
                <option value="">เลือกงาน</option>
              <c:forEach items="${festivity_list}" var="fes">
                <option value="${fes.id}">${fes.title }</option>
           	  </c:forEach>
            	   
           		</select>    
							</div>
						</div>
						
		<div id="txtHint"></div>
			        	<center>
			        	
			        	<button type="button" class="btn btn-primary" id="cal">คำนวณ <span class="glyphicon glyphicon-cog"></span></button>
			        	<button type="button" class="btn btn-success" id="print1" onclick="report_cal1()"><i class="fa fa-print"></i> เจ้าหน้าที่   </button>
			        	<button type="button" class="btn btn-success " id="print2" onclick="report_cal2()"><i class="fa fa-print"></i> ผู้ประมูล   </button>
			        	
			        	</center>
</div>
</form>
</div>
</div>
</div>
	<jsp:include page="../footer.jsp"/>
	
	<script type="text/javascript">
$(document).on('click','#cal',function(e){
	$.ajax({
		url:"saveCal",
		method:"POST",
		data:$("#calpercen").serialize()
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

function report_cal1(){
	var type =  $("#type").val();
	var wId = $("#wId").val();
	window.open("report/cal?wId="+wId+"&type="+type+"&i=1");
}

function report_cal2(){
	var type =  $("#type").val();
	var wId = $("#wId").val();
	window.open("report/cal?wId="+wId+"&type="+type+"&i=2");
}
</script>


</body>
</html>