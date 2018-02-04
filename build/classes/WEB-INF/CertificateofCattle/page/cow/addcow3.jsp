<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>ลงทะเบียนโคขุน</title>

<script type="text/javascript">

function chk(){
	var MsgError = "";
	var num = $("#num").val();
	var weight = $("#weight").val();
	var gene = $("#gene").val();
	var lot = $("#lot").val();
	var pic = $("#file1").val();

	
	if(num==""){
		MsgError=+"ใส่จำนวน/n";
	}
	if(weight==""){
		MsgError=+"ใส่น้ำหนัก/n";
	}
	if(pic==""){
		MsgError=+"ใส่รูป/n";
	}
	if(lot==""){
		MsgError=+"ใส่ล็อต/n";
	}
	if(MsgError!=""){
		swal("ผิดพลาด...", "กรุณากรอกข้อมูล!", "error");
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
	
	    <h2 align="center"><font color="000000">ลงทะเบียนโคขุน</font></h2>
	    <hr>
	    
	    
		
	  <div class="row demo-row">
        <div class="col-xs-3"></div>
        
          <div class="col-xs-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">ข้อมูลโคขุน</h4>
	   	</div>
		<div class="panel-body">
		 
		<form action="saveCow3" method="post" enctype="multipart/form-data" onsubmit="return chk()&&a()">
            
            
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> จำนวนโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="num" name="num" class="form-control" placeholder="จำนวนโค"/>
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
								<h4><font color="red">*</font> รูปโค :</h4>
							</div>
							<div class="col-md-7">
							<input id="file1" type="file" name="file1" class="file" data-show-upload="false" data-show-caption="true">
							</div>
						</div>
						
				<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> ล็อตที่ :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="lot" name="lot" class="form-control" />
							</div>
						</div>
						
				<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4><font color="red">*</font> น้ำหนัก :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="weight" name="weight" class="form-control" />
							</div>
						</div>
			
						<div class="text-center">			
						<a href="ViewCow3"><button type="button" class="btn btn-danger fui-plus-circle"><i class="fa fa-reply"></i> ย้อนกลับ</button></a>
						<button type="submit" name="submit" id="submit" class="btn btn-success">ลงทะเบียน</button>  
						</div>	
                    </form>
            </div>
            
              </div>
            </div>
         </div>
        <br></br><br></br>
         



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