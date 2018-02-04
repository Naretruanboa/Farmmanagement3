<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/popup/css/lightbox.min.css"/>" rel="stylesheet">
<title>แก้ไขโคประมูลโคขุน</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<%int i=1; %>  
<h2 class="text-center"><font color="#000000">แก้ไขโคประมูลโคขุน</font></h2>
		<hr>
<div class="row">
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">แก้ไขโคประมูลโคขุน</h4>
	   	</div>
		<div class="panel-body">
			<form action="saveEdit3" method="post" enctype="multipart/form-data" >
		  	<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				  <c:forEach items="${cowfattenlist}" var="cow">
				      <input type="hidden" name="id" id="id" value="${cow.id }"/>
				     <tr>
				      		<div class="text-center" colspan="2" width="100%">
				      			<%-- <img class="img-rounded" src="<c:url value="/img/pic_cattle/cattle_fatten/${cow.pic }" />" style="width:300; height: 200" alt="รูปโค"> --%>
				      			 <a class="example-image-link" href="<c:url value="/img/pic_cattle/cattle_fatten/${cow.pic }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/pic_cattle/cattle_fatten/${cow.pic }" />" alt="image-1" style="width:300; height: 200"/></a>
				      			<h4>รูปโค</h4>
				      			
				      		</div>

				      	
				      </tr>
				      <tr>
				      		<div class="text-center" colspan="2" width="100%">
							<div class=" col-md-offset-3 col-md-6">
				      			<input id="input-2" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="true">
								</div>
				      		</div>
				      		
		
				      </tr>
				      <tr>
				      		<th class="text-center" width="20%">จำนวนโค</th>
				      		<td class="text-center" width="30%">
				      			<input type="text" class="form-control" name="num" id="num" value="${cow.quantity }"/>
				      		</td>
				      		<th class="text-center" width="20%">ล็อต</th>
				      		<td class="text-center" width="30%">
				      		<input type="text" class="form-control" name="lot" id="lot" value="${cow.lot }"/>
							</td>
				      </tr>
				         <tr>
				      		<th class="text-center" width="20%">สายพันธุ์</th>
				      		<td class="text-center" width="30%">
				      			 <select name="gene" id="gene" class="form-control">
				      			<c:forEach items="${ genelist}" var="g">
							              <option value="${g.name }" <c:if test="${cow.gene==g.name }">selected</c:if>>${g.name }</option>
							        </c:forEach>
							      </select>
				      		</td>
				
				      	
				      		<th class="text-center" width="20%">น้ำหนัก</th>
				      		<td class="text-center" width="30%">
				      		
				      			<input type="text" class="form-control" name="weight" id="weight" value="${cow.weight }"/>
				   
				      		</td>

				      	</tr>
				      	</c:forEach>
				    </tbody>
				    <tbody>
		  	</table>
		  	<div class="text-center">
					
										
					<a href="ViewCow3">
						<button type="button" class="btn btn-danger fui-plus-circle"><i class="fa fa-reply"></i> ย้อนกลับ</button>
					</a>
					<button type="submit" name="add" class="btn btn-success"><i class="fa fa-floppy-o"></i> บันทึก</button>
		</div>
		  	</form>
		</div>
		
		<br>
	</div>
</div>
</div>
  <jsp:include page="../footer.jsp"/>
  <script src="<c:url value="/resources/popup/js/lightbox-plus-jquery.min.js"/>"></script>	
</body>
</html>