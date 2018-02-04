<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/jssor.slider-21.1.5.min.js"></script>
<title>ระบบการจัดการฟาร์ม</title>
</head>
    <!-- use jssor.slider-21.1.5.debug.js instead for debug -->
    <script>
        jssor_1_slider_init = function() {
            
            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              },
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $Cols: 1,
                $Align: 0,
                $NoDrag: true
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1600);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        };
    </script>
<body> <!-- OnLoad="JavaScript:$('#loginForm').show('show');" -->
 
<jsp:include page="menuHome.jsp"/>
<div class="section-bg" style="padding: 0px 0px;">
	<div class="container">
<c:if test="${sessionScope.privilege == null}">
	<div class="section-bg" id="divform" style="padding: 0px 0px;">
		<div class="container">
			<div>
				<img class="icon"
				src="<c:url value= "resources/img/center.png"/> "
				height="100%">
			</div>
			<div>
				<h3 class="homepage-title">ระบบการจัดการฟาร์ม : Farm Management System</h3>
			</div>
			<div class="row" align="center">
				<div class="col-md-offset-2 col-md-2">
					<img alt="" src="<c:url value="/resources/img/logostore.png"/>"
						width="130px">
					<h4 class="homepage-subtitle-col">ระบบการจัดการคลัง</h4>
				</div>
				<div class="col-md-2">
					<img alt="" src="<c:url value="/resources/img/g2.png"/>"
						width="130px">
					<h4 class="homepage-subtitle-col">ระบบการรักษา</h4>
				</div>
				<div class="col-md-2">
					<img alt="" src="<c:url value="/resources/img/logo-3.png"/>"
						width="130px">
					<h4 class="homepage-subtitle-col">ระบบคำนวณหาค่าความต้องการทางโภชนะของโคเนื้อและโคนม</h4>
				</div>
				<div class="col-md-2">
					<img alt="" src="<c:url value="/resources/img/b2.png"/>"
						width="130px">
					<h4 class="homepage-subtitle-col">ระบบการออกใบสูจิบัตรโคประกวดและโคประมูล</h4>
				</div>
			</div>
		</div>
	</div>
</c:if>
	
<c:if test="${sessionScope.privilege != null}">	
	<br><br><h1 style="color:blue;">ยินดีต้อนรับเข้าสู่ระบบการจัดการฟาร์ม</h1><br><br><br>
	<div class="round-button-1"><div class="round-button-circle-1"><a href="Storehouse" class="round-button-1">
			<img src="resources/img/logostore.png" alt="logo" style="width:183px;height:183px; margin-top:20px; margin-left:-900px;" >
			</a></div></div>
			<div class="round-button-2"><div class="round-button-circle-2"><a href="HealthCare" class="round-button-2">
			<img src="resources/img/g2.png" alt="logo" style="width:185px;height:175px; margin-top:-180px; margin-left:-330px;" >
			</a></div></div>
			<div class="round-button-3"><div class="round-button-circle-3"><a href="Nutrient" class="round-button-3">
			<img src="resources/img/logo-3.png" alt="logo" style="width:202px;height:205px; margin-top:-201px; margin-left:250px;" >
			</a></div></div>
			<div class="round-button-4"><div class="round-button-circle-4"><a href="Certificate" class="round-button-4">
			<img src="resources/img/b2.png" alt="logo" style="width:190px;height:175px; margin-top:-183px; margin-left:850px;" >
			</a></div></div>
</c:if>
	</div>
</div> 


<div id="footer_container">
	<footer class="footer">
	<div class="container">
		<div class="col-md-6" align="left">
				<div class="row form-inline">
						<span style="color: white;font-size: 16px;">Copyright 2016</span>
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="development" target="_blank" style="font-size: 16px;">Development Team</a>	
						<span style="color: white;font-size: 18px;"> | </span>
						<a href="contact" target="_blank" style="font-size: 16px;">Contact</a>
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
					<a href="index" class="textright" >Farm Management System</a>
					<img id="imgfooter" src="<c:url value="resources/img/home.png" /> " height="45"  title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
</div>
</body>

</html>