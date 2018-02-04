<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<jsp:include page="menuHome2.jsp"/>
<br>
		<div class="container">
		<div class="col-md-offset-3 col-md-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title">ลืมรหัส</h4>
	   	</div>
		<div class="panel-body">

		<form action="getQuestion" id="getQuestion" method="GET">
		  	<table class="table table-striped table-hover  table-bordered">
		  	<tbody>
	<tr>
		<th class="text-center">ชื่อผู้ใช้งาน</th>
		<td class="text-center">
		<input type="text" name="username" id="username" class="form-control text-center"/>
		</td>
	</tr>
			</tbody>
			</table>
		
		<div class="text-center"><button type="submit" class="btn btn-success" id="ok">ตกลง</button></div>
		<c:if test="${key!=null }">
		<div class="text-center"><h6><font color="red">${key}</font></h6></div>
		</c:if>
	</form>
			</div>
	
</div>
</div>
</div>
</body>
</html>