<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>จัดการสิทธิ์การใช้งาน</title>
</head>
<body>
<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
<%@ include file="../menu.jsp"%>
<div class="container">
<br><br>
	<div class="col-xs-3">
          <h3 class="demo-panel-title">สิทธิ์ผู้ใช้งาน</h3>
          <select class="form-control select select-info" data-toggle="select" name="position" onchange="show(this.value)">
    	    <option value="0">เลือกรายการ</option>
			<option value="1">ผู้ดูแลระบบ</option>
			<option value="2">สัตวแพทย์</option>
			<option value="3">สัตวบาล</option>
			<option value="4">หัวหน้าพนักงาน</option>
			<option value="5">พนักงาน</option>
			<option value="6">สมาชิก</option>
		  </select>		
   </div>
<br>
<br>
<br>
<br>
<br>  
<div id="txtHint"></div>
</div>
<%-- <jsp:include page="../footer.jsp"/> --%>
</body>
<script type="text/javascript">
function show(str){
	$("#txtHint").load('getPrivilege',{ id : str});
}

$(document).on('click','#save',function(e){
	var chk1 = $("#chk1").val();
	var chk2 = $("#chk2").val();
	var chk3 = $("#chk3").val();
	var chk4 = $("#chk4").val();
	var chk5 = $("#chk5").val();
	var chk6 = $("#chk6").val();
	var chk7 = $("#chk7").val();
	var chk8 = $("#chk8").val();
	var chk9 = $("#chk9").val();
	var chk10 = $("#chk10").val();
	var chk11 = $("#chk11").val();
	var chk12 = $("#chk12").val();
	var pId = $("#pId").val();
	$.ajax({
		url:'saveSetPrivilege',
		type:'POST',
		data:{
			chk1:chk1,
			chk2:chk2,
			chk3:chk3,
			chk4:chk4,
			chk5:chk5,
			chk6:chk6,
			chk7:chk7,
			chk8:chk8,
			chk9:chk9,
			chk10:chk10,
			chk11:chk11,
			chk12:chk12,
			
			pId:pId,
		},success : function (result) {
			swal({  title: "สำเร็จ",   
				text: "บันทึกเรียบร้อยแล้ว!", 
				type: "success",   
				showCancelButton: false,   
				confirmButtonText: "OK!",   
				closeOnConfirm: false }, 
				
				function(){   
					location.reload();
					});
		},error: function(result){
			swal("ผิดพลาด", "ไม่สามารถบันทึกได้!", "error");
		}
		
	});
	e.prevenDefault();
});
</script>
</html>