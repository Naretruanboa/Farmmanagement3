<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<jsp:include page="menu.jsp"/>
<script>
swal({  title: 'สำเร็จ',text: 'บันทึกข้อมูลเรียบร้อยแล้ว!', type: 'success',showCancelButton: false,confirmButtonText: 'OK!',closeOnConfirm: false }, 
		function(){window.location.href='Storehouse' });

</script>

</body>
</html>