<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/bootflat.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/homestyle.css"/>" rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/font-awesome-4.3.0/css/font-awesome.min.css"/>" rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Access Denied</title>
<style type="text/css">
	body{
		margin-top: 100px;
	}
	#text {
		font-size : 50px;
		color : white;
		padding-top: 14px;
		padding-bottom: 5px;
	}
	#text2 {
		font-size : 48px;
		color : black;
		margin-bottom: 0px;
	}
	
	#text3 {
		font-size : 32px;
		color : black;
		margin-bottom: 30px;
	}
	
	#jumbo{
		padding-bottom: 30px;
		padding-top:45px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="row" align="center">
			<div class="jumbotron" style="background-color: red;">				
				<p id="text">ขออภัย! พบข้อผิดพลาด</p>
			</div>
			<div class="jumbotron" style="background-color: #eee;" id="jumbo">				
				<p id="text2">Oops, You've encountered an error.</p>
				<p id="text3">Sorry about that!</p>
			</div>
		</div>
	</div>
</body>
</html>