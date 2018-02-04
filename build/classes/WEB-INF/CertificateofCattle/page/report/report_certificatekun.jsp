<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ออกใบสูจิบัตรโค</title>
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
xmlhttp.open("GET","getWork2?wId="+str,true);	
xmlhttp.send();
}

</script>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<div><h2 align="center"><font color="000000">ออกใบสูจิบัตรโคประมูลโคขุน</font></h2></div>
<hr>




 <div class="row demo-row">
        <div class="col-xs-1"></div>
        
          <div class="col-xs-10">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">งานโค</h4>
	   	</div>
	   	<form id="calpercen">	
		<div class="panel-body">

 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>เลือกงานโค :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control"  id="wId" name="wId" onchange="show(this.value)">
                <option value="">งานโค</option>
              <c:forEach items="${festivity_list}" var="fes">
                <option value="${fes.id}">${fes.title }</option>
           	  </c:forEach>
            	   
           		</select>    
							</div>
						</div>
						
		<div id="txtHint"></div>
			        	<center>
			        	<%-- <a href="Coverpdf?wId=${wId}"><button type="button" class="btn btn-success "><i class="fa fa-print"></i> พิมพ์หน้าปก <!-- <span class="glyphicon glyphicon-print"></span> --></button></a>
		        	
		        	<a href="Kokunpdf?wId=${wId}"><button type="button" class="btn btn-success "><i class="fa fa-print"></i> พิมพ์ใบสูจิบัตรโคขุน <!-- <span class="glyphicon glyphicon-print"></span> --></button></a> --%>
			        	<button type="button" class="btn btn-success" onclick="onclickCoverpdf()"><i class="fa fa-print"></i> พิมพ์หน้าปกใบสูจิบัตร  <span class="glyphicon glyphicon-print"></span></button>
			        	<button type="button" class="btn btn-success" onclick="onclickKokunpdf()"><i class="fa fa-print"></i> พิมพ์ใบสูจิบัตรโค  <span class="glyphicon glyphicon-print"></span></button>
			        	</center>
</div>
</form>
</div>
</div>
</div>
		<script>
	
		
		
		</script>
	<jsp:include page="../footer.jsp"/>
	
	<script>
		$('#log').on('show.bs.modal', function(e) {
		    var g_id = $(e.relatedTarget).data('gid');
		    $(e.currentTarget).find('input[id="id"]').val(g_id);
		});
		
		$('#log').on('hide.bs.modal', function(e) {
			location.reload();
		});
		
		
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
		
		
		function onclickCoverpdf(){
			var type =  $("#type").val();
			var wId = $("#wId").val();
			window.open("Coverpdf?wId="+wId+"&type="+type+"&i=1");
		}

		function onclickKokunpdf(){
			var type =  $("#type").val();
			var wId = $("#wId").val();
			window.open("Kokunpdf?wId="+wId+"&type="+type+"&i=2");
		}
</script>


</body>
</html>