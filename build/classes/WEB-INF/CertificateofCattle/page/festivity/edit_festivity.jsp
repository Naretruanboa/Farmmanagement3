<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/popup/css/lightbox.min.css"/>" rel="stylesheet">
<title>แก้ไขข้อมูลงานโค</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<%int i=1; %>  
 <div class="container">
<hr>
		<div class=" row form-group">
				<div class="form-inline">
				
					<div class="col-md-3">
						<div class="jumbotron" style="background-color: rgb(218, 68, 83)"
							align="center">
							<p style="font-size: 28px; font-weight: 700; color: white;">แก้ไขข้อมูลงานโค</p>
						</div></div>
					
					
				</div>
			</div>
		<hr></div>
		
<div class="row">
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">แก้ไขงานโค</h4>
	   	</div>
		<div class="panel-body">
			<form:form action="saveEdit_Work" commandName="festivity" id="festivity" method="POST" enctype="multipart/form-data">
		  	<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				    <c:forEach items="${festivitylist }" var="f">
				    	<form:hidden path="id" id="id" value="${f.id }"/>
				    	<form:hidden path="logo" id="logo" value="${f.logo }"/>
				    	<form:hidden path="poster" id="poster" value="${f.poster }"/>
				    	<form:hidden path="newStatus" id="newStatus" value="${f.newStatus }"/>
				    	<form:hidden path="cowId" id="cowId" value="${f.cowId }"/>
				    	<form:hidden path="member.id" id="member.id" value="${f.member.id }"/>
				      	
				     <tr>
				      		<td class="text-center" colspan="2" width="50%">
				      			<%-- <img class="img-rounded" src="<c:url value="/img/festivity/${f.logo }" />" style="width:300; height: 200" alt="โลโก้"> --%>
				      			<a class="example-image-link" href="<c:url value="/img/festivity/${f.logo }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/festivity/${f.logo }" />" alt="image-1" style="width:300; height: 200"/></a>
				      			<h4>โลโก้</h4>
				      			
				      		</td>

				      		<td class="text-center" colspan="2" width="50%">
				      		<a class="example-image-link" href="<c:url value="/img/festivity/${f.poster }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/festivity/${f.poster }" />" alt="image-1" style="width:300; height: 200"/></a>
				      				<%-- <img class="img-rounded" src="<c:url value="/img/festivity/${f.poster }" />" style="width:300; height: 200" alt="โปสเตอร์"> --%>
				      				<h4>โปสเตอร์</h4>
				      		</td>
				      </tr>
				      <tr>
				      		<td class="text-center" colspan="2" width="50%">
<div class=" col-md-offset-3 col-md-6">
				      			<input id="file1" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="false">
</div>
				      		</td>
				      		<td class="text-center" colspan="2" width="50%">
				      		<div class=" col-md-offset-3  col-md-6">
				      				<input id="file2" type="file" name="file2" class="file" data-show-upload="false" data-show-caption="false">
				      		</div>
				      		</td>
		
				      </tr>
				       <tr>
				      		<th class="text-center" colspan="4"><h4>ข้อมูลงานโค</h4></th>
				      	</tr>
				      <tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> ชื่องาน</th>
				      		<td class="text-center" width="30%">
				      			<form:input type="text" class="form-control" path="title" id="title" value="${f.title }"/>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> ชนิดงาน</th>
				      		<td class="text-center" width="30%">
				      		
				      		 <form:select path="type.id" id="type.id" class="form-control">
				      		 	<c:forEach items="${typelist}" var="type">
				      		 		<option value="${type.id }" <c:if test="${type.id == f.type.id}">selected</c:if>>${type.name }</option>
				      		 	</c:forEach>
				      		 </form:select>
							</td>
				      </tr>
				         <tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> สายพันธุ์</th>
				      		<td class="text-center" width="30%">
				      			 <form:select path="gene" id="gene" class="form-control">
				      			 	<c:forEach items="${ genelist}" var="g">
				      			 		<option value="${g.name }" <c:if test="${f.gene==g.name }">selected</c:if>>${g.name }</option>
				      			 	</c:forEach>
				      			 </form:select>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> เจ้าของงาน</th>
				      		<td class="text-center" width="30%">
				      			<input type="text" class="form-control" value="${f.member.first }" readonly/>
				      		</td>
				      	</tr>
				      	 <tr id="jd">
				      	
				      		<th class="text-center" width="20%"><font color="red">*</font> วันเริ่มงาน</th>
				      		<td class="text-center" width="30%">
				      		
				      			<form:input type="date" class="form-control  start" path="SWork" id="SWork" value="${f.SWork }"/>
				   
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> วันสุดท้ายของงาน</th>
				      		<td class="text-center" width="30%">
			
				      			<form:input type="date" class="form-control  end" path="EWork" id="EWork" value="${f.EWork }"/>
			
				      		</td>
			
				      	</tr>
				      
				      	 <tr id="jd2">
				      		<th class="text-center" width="20%"><font color="red">*</font> วันเริ่มรับข้อมูล</th>
				      		<td class="text-center" width="30%">
				      				<form:input type="date" class="form-control  start" path="SData" id="SData" value="${f.SData }"/>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> วันสุดท้ายของการรับข้อมูล</th>
				      		<td class="text-center" width="30%">
				      			<form:input type="date" class="form-control  end" path="EData" id="EData" value="${f.EData }"/>
				      		
				      		</td>
				      	</tr>
				      	<tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> ผู้ตัดสิน</th>
				      		<td class="text-center" width="30%">
				      				<form:input type="text" class="form-control" path="referee" id="referee" value="${f.referee }"/>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> เปอร์เซ็นต์</th>
				      		<td class="text-center" width="30%">
				      			<form:input type="number" class="form-control" path="percen" id="percen" value="${f.percen }"/>
				      		
				      		</td>
				      		
				      	</tr>
				      	 <tr>
				      		<th class="text-center" width="20%">รายละเอียดงาน</th>
				      		<td class="text-center" width="30%">
				      				<form:input type="text" class="form-control" path="details" id="details" value="${f.details }"/>
				      		</td>
				      		<td colspan="2"></td>
				      	</tr>
				      	<tr>
				      		<th class="text-center" colspan="4">หน่วยงาน</h4></th>
				      	</tr>
				      	 <tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> ชื่อหน่วยงาน</th>
				      		<td class="text-center" width="30%">
				      				<form:input type="text" class="form-control" path="farmName" id="farmName" value="${f.farmName }"/>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> ที่อยู่-หน่วยงาน</th>
				      		<td class="text-center" width="30%">
				      			<form:input type="text" class="form-control" path="location" id="location" value="${f.location }"/>
				      		
				      		</td>
				      	</tr>
				      	<tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> โทรศัพท์</th>
				      		<td class="text-center" width="30%">
				      				<form:input type="text" class="form-control" path="phone" id="phone" value="${f.phone }"/>
				      		</td>
				      		<td colspan="2"></td>
				      	</tr>
				      	</c:forEach>
				    </tbody>
				    <tbody>
		  	</table>
		  	<div class="text-center">
					
										
					<a href="Work">
						<button type="button" class="btn btn-danger fui-plus-circle"><i class="fa fa-reply"></i> ย้อนกลับ</button>
					</a>
					<button type="submit" name="add" class="btn btn-success"><i class="fa fa-floppy-o"></i> บันทึก</button>
		</div>
		  	</form:form>
		</div>
		
		<br>
	</div>
</div>
</div>
  <script src="<c:url value="/resources/popup/js/lightbox-plus-jquery.min.js"/>"></script>
  <jsp:include page="../footer.jsp"/>
</body>
</html>