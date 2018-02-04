<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/popup/css/lightbox.min.css"/>" rel="stylesheet">
<!-- 
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->

<title>แก้ไขโคประกวด</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<%int i=1; %>  
<h2 class="text-center"><font color="#000000">แก้ไขโคประกวด</font></h2>
		<hr>
<div class="row">
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">แก้ไขโคประกวด</h4>
	   	</div>
		<div class="panel-body">
			<form action="saveEdit1" method="post" enctype="multipart/form-data" >
		  	<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				  
				      <c:forEach items="${cowshowlist}" var="cow">
				      <input type="hidden" name="id" id="id" value="${cow.id }"/>
				     <tr>
				      		<td class="text-center" colspan="2" width="50%">
				      		 <a class="example-image-link" href="<c:url value="/img/pic_cattle/cattle_show/${cow.pic }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/pic_cattle/cattle_show/${cow.pic }" />" alt="image-1" style="width:300; height: 200"/></a>
				      		<%-- <a href="#myPopup" data-rel="popup" data-position-to="window">
				      			  
 							<img class="img-rounded" src="<c:url value="/img/pic_cattle/cattle_show/${cow.pic }" />" style="width:300; height: 200" alt="รูปโค"></a>	
						<div data-role="popup" id="myPopup">
   
      				<a href="#pageone" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img src="<c:url value="/img/pic_cattle/cattle_show/${cow.pic }" />" style="width:800px;height:400px;" alt="Skaret View">
    					</div> --%>
				      			  
   
				      			<h4>รูปโค</h4>
				      			
				      		</td>
				      		<td class="text-center" colspan="2" width="50%">
 <a class="example-image-link" href="<c:url value="/img/pic_pedigree/cattle_show/${cow.pedegree }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/pic_pedigree/cattle_show/${cow.pedegree }" />" alt="image-1" style="width:300; height: 200"/></a>
				      		
						<%-- <a href="#myPopup1" data-rel="popup" data-position-to="window">
				      		<img class="img-rounded" src="<c:url value="/img/pic_pedigree/cattle_show/${cow.pedegree }" />" style="width:300; height: 200" alt="ใบพันธุ์ประวัติ"></a>
				      	 <div data-role="popup" id="myPopup1">
     					 <a href="#pageone" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img src="<c:url value="/img/pic_pedigree/cattle_show/${cow.pedegree }" />" style="width:800px;height:400px;" alt="">
   						 </div>	 --%>
    
    
				      				<h4>ใบพันธุ์ประวัติ</h4>
				      		</td>
				      </tr>
				      <tr>
				      		<td class="text-center" colspan="2" width="50%">
						<div class=" col-md-offset-3 col-md-6">
				      			<input id="input-2" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="true">
						</div>
				      		</td>
				      		<td class="text-center" colspan="2" width="50%">
				      		<div class=" col-md-offset-3  col-md-6">
				      				<input id="input-2" type="file" name="file2" class="file" data-show-upload="false" data-show-caption="true">
				      		</div>
				      		</td>
		
				      </tr>
				      <tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> ชื่อโค</th>
				      		<td class="text-center" width="30%">
				      			<input type="text" class="form-control" name="name" id="name" value="${cow.name}"/>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> วันเกิดโค</th>
				      		<td class="text-center" width="30%">
				      		<input type="date" class="form-control date start" name="birthday" id="birthday" value="${cow.birthday }"/>
							</td>
				      </tr>
				         <tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> สายพันธุ์</th>
				      		<td class="text-center" width="30%">
				      			 <select name="gene" id="gene" class="form-control">
									<c:forEach items="${ genelist}" var="g">
							              <option value="${g.name }" <c:if test="${cow.gene==g.name }">selected</c:if>>${g.name }</option>
							        </c:forEach>
								</select>
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> เพศ</th>
				      		<td class="text-center" width="30%">
				      			 <select name="gender" id="gender" class="form-control">
					    		<option value="male" <c:if test="${cow.sex=='male'}">selected</c:if>>ผู้</option>
					    		<option value="female" <c:if test="${cow.sex=='female'}">selected</c:if>>เมีย</option>
				      			 </select>
				      		</td>
				      	</tr>
				      	 <tr>
				      	
				      		<th class="text-center" width="20%"><font color="red">*</font> ชื่อพ่อ</th>
				      		<td class="text-center" width="30%">
				      		
				      			<input type="text" class="form-control" name="dad" id="dad" value="${cow.father }"/>
				   
				      		</td>
				      		<th class="text-center" width="20%"><font color="red">*</font> ชื่อแม่</th>
				      		<td class="text-center" width="30%">
			
				      			<input type="text" class="form-control" name="mom" id="mom" value="${cow.mother }"/>
			
				      		</td>
			
				      	</tr>
				      
				      	 <tr>
				      		<th class="text-center" width="20%"><font color="red">*</font> ผู้พัฒนา</th>
				      		<td class="text-center" width="30%">
				      				<input type="text" class="form-control" name="depv" id="depv" value="${cow.deverloper }"/>
				      		</td>
				      		
				      		<th class="text-center" width="20%"><font color="red">*</font> เจ้าของโค</th>
				      		<td class="text-center" width="30%">
				      				<input type="text" class="form-control" value="${cow.member.first } ${cow.member.last }" readonly/>
				      		</td>
				      		</tr>
				      		
				      	</c:forEach>
				    </tbody>
				    
		  	</table>
		  	
		  	<div class="text-center">
					
						
					<a href="ViewCow1">
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
</body>

  <script src="<c:url value="/resources/popup/js/lightbox-plus-jquery.min.js"/>"></script>	
</html>