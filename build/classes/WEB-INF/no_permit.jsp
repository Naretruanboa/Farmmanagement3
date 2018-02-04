<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:include page="menuHome.jsp"/>
<script type="text/javascript">
swal({  title: "ขออภัย!",   
	text: "คุณไม่มีสิทธิ์เข้าถึงหน้านี้", 
	type: "error",   
	showCancelButton: false,   
	confirmButtonText: "OK!",   
	closeOnConfirm: false }, 
	
	function(){   
		location.href="index"; 
		});
</script>
</body>
</html>