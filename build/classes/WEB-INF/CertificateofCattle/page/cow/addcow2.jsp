<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>ลงทะเบียนโคพันธุ์</title>

<script type="text/javascript">

function chk(){
	var MsgError="";
	var name = $("#name").val();
	var birthday = $("#birthday").val();
	var gene = $("#gene").val();
	var sex = $("#gender").val();
	var pic = $("#file1").val();
	var dad = $("#dad").val();
	var mom = $("#mom").val();
	var privateNo = $("#privateNo").val();
	
	if(name==""){
		MsgError+="ใส่ชื่อให้ถูกต้อง\n";
	}
	if(privateNo==""){
		MsgError+="ใส่หมายเลขให้ถูกต้อง\n";
	}
	if(birthday==""){
		MsgError+="ใส่วันเกิดให้ถูกต้อง\n";
	}
	if(pic==""){
		MsgError+="ใส่ใบพันธุ์ประวัติให้ถูกต้อง\n";
	}
	if(dad==""){
		MsgError+="ใส่ชื่อพ่อให้ถูกต้อง\n";
	}
	if(mom==""){
		MsgError+="ใส่ชื่อแม่ให้ถูกต้อง\n";
	}
	
	if(MsgError!=""){
		swal("ผิดพลาด...",MsgError, "error");
		return false;
	}
	else{
	
		return true;
	}
}
	
</script>

</head>

<body>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="nologin"/>
</c:if>
<jsp:include page="../menu.jsp"/>
	    <h2 align="center"><font color="000000">ลงทะเบียนโคพันธุ์</font> </h2>
	    <hr>
	    
	    
		
	  <div class="row demo-row">
        <div class="col-xs-3"></div>
        
          <div class="col-xs-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">ข้อมูลโคพันธุ์</h4>
	   	</div>
		<div class="panel-body">
		 
		
            <form action="saveCow2" method="post" enctype="multipart/form-data" onsubmit="return chk();">
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ชื่อโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="name" name="name" class="form-control" placeholder="ชื่อโค" />
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> หมายเลขโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="privateNo" name="privateNo" class="form-control" placeholder="หมายเลขโค" />
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> วันเกิดโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="birthday" name="birthday" class="form-control" placeholder="ชื่องาน" />
							</div>
						</div>
			
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> สายพันธุ์ :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene" >
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
				<select class="form-control" name="color" id="color" >
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
				<select class="form-control" name="sex" id="sex" >
                 <option value="male">ผู้</option>
                <option value="female">เมีย</option>
               
           		</select>    
							</div>
						</div>
									
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> รูปโค :</h4>
							</div>
							<div class="col-md-7">
								<input id="file1" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="true">
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ใบพันธุ์ประวัติ :</h4>
							</div>
							<div class="col-md-7">
								<input id="file2" type="file" name="file2" class="file" data-show-upload="false" data-show-caption="true">
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ชื่อพ่อโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="dad" name="dad" class="form-control" placeholder="ชื่อพ่อโค" />
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ชื่อแม่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="mom" name="mom" class="form-control" placeholder="ชื่อแม่โค" />
							</div>
						</div>
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>รายละเอียดโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="description" name="description" class="form-control" placeholder="ลักษณะ" />
							</div>
						</div>
			
					<div class="text-center">	
						<a href="ViewCow2"><button type="button" class="btn btn-danger fui-plus-circle"><i class="fa fa-reply"></i> ย้อนกลับ</button></a> |									
						<button type="submit" name="submit" id="submit" class="btn btn-success pull-center">ลงทะเบียน</button>  
						
					</div>
                    </form>  
            </div>
            
              </div>
              
            </div>
         </div>
        
         <br></br><br></br><br></br>




		<footer class="footer">
	<div class="container">
		<div class="col-md-6" align="left">
				<div class="row form-inline">
						<span style="color: white;font-size: 16px;">Copyright ©2015</span>
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="" target="_blank" style="font-size: 16px;">Development Team</a>	
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="" target="_blank" style="font-size: 16px;">Contact</a>
				</div>
				<div class="row form-inline">
					<span style="color: white;font-size: 16px;">By Computer Engineering 
					<a href="http://www.up.ac.th" target="_blank" class="textright">University Of Phayao &nbsp;</a></span>
					<a href="https://www.facebook.com/ComputerEngineeringUP?fref=ts" target="_blank" class="textright"><i class="fa fa-facebook-official"></i></a>
				</div>
		</div>
		<div class="col-md-6">
			<div align="right">
				<a>
					<a class="textright" href="index">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</a>
					<img id="imgfooter" src="<c:url value="/resources/img/b2.png" /> " height="45" " title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
	
  
</body>
</html>