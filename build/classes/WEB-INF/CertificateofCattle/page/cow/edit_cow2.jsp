<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>แก้ไขโคประมูลโคพันธุ์</title>
<link href="<c:url value="/resources/popup/css/lightbox.min.css"/>" rel="stylesheet">

<script type="text/javascript">
function empty(){
	if(isNaN($("#wborn").val())||$("#wborn").val()==""){
	document.getElementById("wborn").value=0;

	}
	if(isNaN($("#wyear").val())||$("#wyear").val()==""){
		document.getElementById("wyear").value=0;

		}
	if(isNaN($("#wwean").val())||$("#wwean").val()==""){
		document.getElementById("wwean").value=0;


		}

}
</script>

</head>
<body>
<jsp:include page="../menu.jsp"/>
<h2 align="center"><font color="000000">แก้ไขโคประมูลโคพันธุ์</font></h2>
<hr>
 <form action="saveEditCow22" method="post" enctype="multipart/form-data" onsubmit="empty();" >
 <c:forEach items="${cowstrainlist }" var="cow">
<div class="example">
      
     
        <div class="row">
       
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">ข้อมูลโค</h3>
              </div>
              <div class="panel-body">
		 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2"><br> <br> <br> <br> 
								<h4><font color="red">*</font> รูปโค :</h4>
							</div>
							<div class="col-md-7">
								<%--  <img class="img-rounded" src="<c:url value="/img/pic_cattle/cattle_strain/${cow.pic }" />" style="width:300; height: 200" alt="โลโก้"> --%>
							 <a class="example-image-link" href="<c:url value="/img/pic_cattle/cattle_strain/${cow.pic }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/pic_cattle/cattle_strain/${cow.pic }" />" alt="image-1" style="width:300; height: 200"/></a>
							</div>
						</div>
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>รูปโค :</h4>
							</div>
							<div class="col-md-7">
							<!-- 	<input type="file" id="file1" name="file1" class="form-control" /> -->
							
							<input id="file1" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="true">
							</div>
						</div>
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2"></h4><br> <br> <br> <br> 
								<h4><font color="red">*</font> ใบพันธุ์ประวัติ :
							</div>
							<div class="col-md-7">
							<a class="example-image-link" href="<c:url value="/img/pic_pedigree/cattle_strain/${cow.pedigree }" />" data-lightbox="example-1"><img class="example-image" src="<c:url value="/img/pic_pedigree/cattle_strain/${cow.pedigree }" />" alt="image-2" style="width:300; height: 200"/></a>
							<%-- 	<img class="img-rounded" src="<c:url value="/img/pic_pedigree/cattle_strain/${cow.pedigree }" />" style="width:300; height: 200" alt="โลโก้"> --%>
							</div>
						</div>
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ใบพันธุ์ประวัติ :</h4>
							</div>
							<div class="col-md-7">
								<!-- <input type="file" id="file2" name="file2" class="form-control" /> -->
								<input id="file2" type="file" name="file2" class="file" data-show-upload="false" data-show-caption="true">
							</div>
						</div>
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ชื่อโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="name" name="name" value="${cow.name}" class="form-control" placeholder="ชื่อโค" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> หมายเลขโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="privateNo" name="privateNo" value="${cow.privateNo }" class="form-control" placeholder="หมายเลขโค" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> วันเกิดโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="birthday" name="birthday" value="${cow.birthday }" class="form-control" placeholder="ชื่องาน" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> สายพันธุ์ :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene">
                <c:forEach items="${ genelist}" var="g">
              <option value="${g.name }">${g.name }</option>
              </c:forEach>
               
           		</select>    
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> สี :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="color" id="color" required>
                 <c:forEach items="${ colorlist}" var="c">
              <option value="${c.value }">${c.value }</option>
              </c:forEach>
               
           		</select>    
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> เพศ :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="sex" id="sex" required>
                 <option value="male" <c:if test="${cow.sex=='male'}">selected</c:if>>ผู้</option>
				<option value="female" <c:if test="${cow.sex=='female'}">selected</c:if>>เมีย</option>
               
           		</select>    
							</div>
						</div>
									
			
			
			
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ชื่อพ่อโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="dad" name="dad" value="${cow.father }" class="form-control" placeholder="ชื่อพ่อโค" />
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ชื่อแม่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="mom" name="mom" value="${cow.mother }" class="form-control" placeholder="ชื่อแม่โค" />
							</div>
						</div>
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>รายละเอียดเพิ่มเติม :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="description" name="description" value="${cow.description }" class="form-control" placeholder="รายละเอียดเพิ่มเติม" />
							</div>
						</div>
        <br>
            </div>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">เพิ่มข้อมูล</h3>
              </div>
                  <div class="panel-body">
		   <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ล็อตที่ :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="lot" name="lot" value="${cow.lot}" class="form-control" placeholder="น้ำหนักแรกคลอด" />
							</div>
						</div>
	
            
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>นน. แรกคลอด :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="wborn" name="wborn" value="${cow.weightBirth}" class="form-control" placeholder="น้ำหนักแรกคลอด" />
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>นน. หย่านม :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="wwean" name="wwean" value="${cow.weightWean}" class="form-control" placeholder="น้ำหนักหย่านม" />
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>นน. หนึ่งปี :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="wyear" name="wyear" value="${cow.weightYear}" class="form-control" placeholder="น้ำหนักอายุ1ปี" />
							</div>
						</div>
			
		<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>อัตราการให้นม :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="rateMilk" name="rateMilk" value="${cow.rateMilk}" class="form-control" placeholder="อัตตราการให้นม " />
							</div>
						</div> 
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ปู่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="grandfather" name="grandfather" value="${cow.grandfather }" class="form-control" placeholder="ปู่โค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ย่าโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="grandmother" name="grandmother" value="${cow.grandmother }" class="form-control" placeholder="ย่าโค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>พ่อปู่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="dadGrandfather" name="dadGrandfather" value="${cow.dadGrandfather }" class="form-control" placeholder="พ่อปู่โค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>แม่ปู่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="momGrandfather" name="momGrandfather" value="${cow.momGrandfather }" class="form-control" placeholder="แม่ปู่โค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>พ่อย่าโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="dadGrandmother" name="dadGrandmother" value="${cow.momGrandmother }" class="form-control" placeholder="พ่อย่าโค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>แม่ย่าโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="momGrandmother" name="momGrandmother" value="${cow.momGrandmother }" class="form-control" placeholder="แม่ย่าโค" />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ตาโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="grandpa" name="grandpa" value="${cow.grandpa }" class="form-control" placeholder="ตาโค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ยายโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="grandma" name="grandma" value="${cow.gramdma }" class="form-control" placeholder="ยายโค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>พ่อตาโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="dadGrandpa" name="dadGrandpa" value="${cow.dadGrandpa }" class="form-control" placeholder="พ่อตาโค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>แม่ตาโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="momGrandpa" name="momGrandpa" value="${cow.momGrandpa }" class="form-control" placeholder="แม่ตาโค  " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>พ่อยายโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="dadGrandma" name="dadGrandma" value="${cow.dadGrandma }" class="form-control" placeholder="พ่อยายโค " />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>แม่ยายโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="momGrandma" name="momGrandma" value="${cow.momGrandma }" class="form-control" placeholder="แม่ยายโค " />
							</div>
						</div>
						<input type="hidden" id="id" name="id" value="${cow.id }"/>
			 
			
            </div>
            </div>
            
          </div>
        </div>
        		
        
      
      </div>	


   </c:forEach>
    
      
      <div class="text-center">
      				<a href="ViewCow2"><button type="button" class="btn btn-danger"><i class="fa fa-reply"></i> ย้อนกลับ</button></a>
		        	<button type="submit" class="btn btn-success"><i class="fa fa-floppy-o"></i> บันทึก</button>
		        	
		      </div> 
		      <br>
		       </form>
		         <jsp:include page="../footer.jsp"/>
		         <script src="<c:url value="/resources/popup/js/lightbox-plus-jquery.min.js"/>"></script>	
</body>
</html>