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
		<div align="center"><h2><font color="000000">ออกรายงาน</font></h2></div>
		<hr>

<div class="row demo-row">
        <div class="col-xs-1"></div>
          
          
  <div class="example">
        <div class="row">
          <div class="col-md-10">
           <div class="panel">
            
              <ul id="myTab1" class="nav nav-pills nav-justified">
                <li class="active"><a href="#home1" data-toggle="tab"><font size="3">ประกวดโค</font></a></li>
                <li><a href="#profile1" data-toggle="tab"><font size="3">ประมูลโคพันธุ์</font></a></li>
                 <li><a href="#profile2" data-toggle="tab"><font size="3">ประมูลโคขุน</font></a></li>
                
              </ul>
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home1">
                
                 <table class="table table-striped table-hover  table-bordered">
				<thead>
				
					<tr>
						<th align="center">ลำดับที่</th>
				    	<th align="center">ชื่องาน</th>
				        <th align="center">พิมพ์รายงาน</th>
				      </tr>
				
				    </thead>
				    <tbody>
				    <c:forEach items="${fes_show_list}" var="show">
				      <tr>
				    <td><div align="center"><%=i++ %></div></td>
				    <td><div align="center">${show.title }</div></td>

				    
				        <td><div align="center"><!-- <a href="addfes_sh"> --><button type="button" class="btn btn-success" onclick="report_show(${show.id})">
				        	<i class="fa fa-print"></i></button><!-- </a> --></div></td>
				      </tr>
			</c:forEach>
				</tbody>
			</table>
			
                </div>
                <div class="tab-pane fade" id="profile1">
               
                 <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th align="center">ลำดับที่</th>
				    	<th align="center">ชื่องาน</th>
				        <th align="center">พิมพ์รายงาน</th>
				      </tr>
				    </thead>
				  
				    <tbody>
			<c:forEach items="${fes_pun_list}" var="pun">
				      <tr>
				    <td><div align="center"><%=n++ %></div></td>
				    <td><div align="center">${pun.title }</div></td>
		
		
				       <td><div align="center"><!-- <a href="addfes_sh"> --><button type="button" class="btn btn-success" onclick="report_pun(${pun.id})">
				        	<i class="fa fa-print"></i></button><!-- </a> --></div></td>
				      </tr>
			</c:forEach>
				</tbody>
			
			</table>
			
                </div>
                 <div class="tab-pane fade" id="profile2">
                
                 <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th align="center">ลำดับที่</th>
				    	<th align="center">ชื่องาน</th>

				        <th align="center">พิมพ์รายงาน</th>
				      </tr>
				    </thead>
				    
				    <tbody>
				   	<c:forEach items="${fes_kun_list}" var="kun">
				      <tr>
				    <td><div align="center"><%=m++ %></div></td>
				    <td><div align="center">${kun.title }</div></td>
		
		
				       <td><div align="center"><!-- <a href="addfes_sh"> --><button type="button" class="btn btn-success" onclick="report_kun(${kun.id})">
				        	<i class="fa fa-print"></i></button><!-- </a> --></div></td>
				      </tr>
			</c:forEach>

				</tbody>
			
			</table>
			
			
			
                </div>
               
              </div>
            </div>
          </div></div></div>
          </div>
          
          <jsp:include page="../footer.jsp"/>
	
<script type="text/javascript">
function report_show(id){
	window.open("report/cattle_show?id="+id);
}

function report_pun(id){
	window.open("report/cattle_strain?id="+id);
}

function report_kun(id){
	window.open("report/cattle_fatten?id="+id);
}
</script>
</body>
</html>