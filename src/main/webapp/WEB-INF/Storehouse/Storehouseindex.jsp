<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ระบบการจัดการคลัง</title>
<script type="text/javascript">
function date_time1(id) {
    date = new Date;
    year = date.getFullYear();
    month = date.getMonth();
    months = new Array('มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม');
    d = date.getDate();
    day = date.getDay();
    days = new Array('อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสดี', 'ศุกร์', 'เสาร์');
    h = date.getHours();
    if (h < 10) {
        h = "0" + h;
    }
    m = date.getMinutes();
    if (m < 10) {
        m = "0" + m;
    }
    s = date.getSeconds();
    if (s < 10) {
        s = "0" + s;
    }
    result = 'วัน' + days[day] + 'ที่\t' + d + ' ' + months[month] + '\tพ.ศ.\t' + (year+543) + '\tเวลา '  + h + ':' + m + '\tน.';
    document.getElementById(id).innerHTML = result;
    setTimeout('date_time("' + id + '");', '1000');
    return true;
}
function date_time2(id) {
    date = new Date;
    year = date.getFullYear();
    month = date.getMonth();
    months = new Array('มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม');
    d = date.getDate();
    day = date.getDay();
    days = new Array('อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสดี', 'ศุกร์', 'เสาร์');
    h = date.getHours();
    if (h < 10) {
        h = "0" + h;
    }
    m = date.getMinutes();
    if (m < 10) {
        m = "0" + m;
    }
    s = date.getSeconds();
    if (s < 10) {
        s = "0" + s;
    }
    result = 'วัน' + days[day] + 'ที่\t' + d + ' ' + months[month] + '\tพ.ศ.\t' + (year+543) + '\tเวลา '  + h + ':' + m + '\tน.' ;
    document.getElementById(id).innerHTML = result;
    setTimeout('date_time("' + id + '");', '1000');
    return true;
}
function date_time3(id) {
    date = new Date;
    year = date.getFullYear();
    month = date.getMonth();
    months = new Array('มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม');
    d = date.getDate();
    day = date.getDay();
    days = new Array('อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสดี', 'ศุกร์', 'เสาร์');
    h = date.getHours();
    if (h < 10) {
        h = "0" + h;
    }
    m = date.getMinutes();
    if (m < 10) {
        m = "0" + m;
    }
    s = date.getSeconds();
    if (s < 10) {
        s = "0" + s;
    }
    result = 'วัน' + days[day] + 'ที่\t' + d + ' ' + months[month] + '\tพ.ศ.\t' + (year+543) + '\tเวลา '  + h + ':' + m + '\tน.';
    document.getElementById(id).innerHTML = result;
    setTimeout('date_time("' + id + '");', '1000');
    return true;
}
function date_time4(id) {
    date = new Date;
    year = date.getFullYear();
    month = date.getMonth();
    months = new Array('มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม');
    d = date.getDate();
    day = date.getDay();
    days = new Array('อาทิตย์', 'จันทร์', 'อังคาร', 'พุธ', 'พฤหัสดี', 'ศุกร์', 'เสาร์');
    h = date.getHours();
    if (h < 10) {
        h = "0" + h;
    }
    m = date.getMinutes();
    if (m < 10) {
        m = "0" + m;
    }
    s = date.getSeconds();
    if (s < 10) {
        s = "0" + s;
    }
    result = 'วัน' + days[day] + 'ที่\t' + d + ' ' + months[month] + '\tพ.ศ.\t' + (year+543) + '\tเวลา '  + h + ':' + m + '\tน.';
    document.getElementById(id).innerHTML = result;
    setTimeout('date_time("' + id + '");', '1000');
    return true;
}
</script>
 

<style>

div.panell{
margin: 15px 0px 37px 0px;
}

.panel-footer{
  background:#ffc107;
  border-color: #cccccc; 
 }
 
 .button {
 box-shadow: 0 3px 0 #2F4F4F; 
 background-color: #FFFFFF; 
 border: none; 
 padding: 2px 5px; 
 border-radius: 5px; 
 float: right; 
 margin: 2;" 
 }
 
 .button:hover{
 background-color: #CCFFFF
 }

.button:active {
 
  box-shadow: 0 5px #2F4F4F;
  transform: translateY(4px);
}

</style>
</head>
<body OnLoad="JavaScript:date_time1('date_time1');date_time2('date_time2');date_time3('date_time3');date_time4('date_time4')">

<jsp:include page="page/menu.jsp"/>
<div class="section-bg">
	<div class="container">
		<c:if test="${sessionScope.privilege == null}">
			<img class="icon"
				src="<c:url value= "resources/img/home.png"/> "
				height="100%"> <br>
			<div>
				<h3 class="homepage-title">ระบบการจัดการฟาร์ม : ระบบการจัดการคลัง</h3>
			</div>
			<div>
				<h3 class="homepage-subtitle">Farm Management System : Storehouse System</h3>
			</div>
			</c:if>
		</div>
		
<div class="container">	
<c:if test="${sessionScope.privilege != null}">	
	<div class="panel panel-primary">	
			<div class="panel-heading" align="left" >
	       		<h3 class="panel-title" style="font-size: 24px; color: white;"> <i class="fa fa-tachometer" aria-hidden="true"></i>&nbsp; Dashboard
	       		<button class="button" id="button1" ><img src="resources/img/design/1.png" alt="logo" style="width:20px;height:20px;"></button>
	       		<button class="button" id="button2" ><img src="resources/img/design/2.png" alt="logo" style="width:20px;height:20px;"></button>
	       		<button class="button" id="button3" ><img src="resources/img/design/3.png" alt="logo" style="width:20px;height:20px;"></button>
	       		<button class="button" id="button4" ><img src="resources/img/design/4.png" alt="logo" style="width:20px;height:20px;"></button></h3>
	       		
	   		</div>
	   		<div >
	   		<div class="panel-body" id="dash0">
				
            		<div class="row">
            		
				<div class="col-md-12" >
                    <div class="panel" style="background-color:#c2c2a3">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-globe fa-4x"></i>
                                </div>
                                <div class="col-xs-20 text-right">
                                
									<span id="date_time1" style="color: #ffffff; font-size: 22px;"></span>
            						
            						<!-- <script type="text/javascript"> window.onload = date_time('date_time');</script> -->
            						
                                </div>
                            </div>
                            
                    <div class="panell" style="background-color:#eeeeee ">
                        <div class="panel-heading">
                            <div class="row">
                                
                                <div class="col-xs-20 text-left ">
                                
                                    <div class="huge" style="font-size: 22px; color: black; font-weight : bold ;" >&nbsp;การแจ้งเตือนรวม&nbsp;${Total}&nbsp;รายการ</div>
            						
                                </div>
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                    

            	</div>

                <div class="col-md-12">
                    <div class="panel" style="background-color:#DC7633">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineStock }</div>
                                    <div>ยอดยาคงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert" >
                            <div class="panel-footer "  >
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <div class="col-md-12">
                    <div class="panel" style="background-color:#da282f">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/semen_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${SemenStock }</div>
                                    <div>ยอดน้ำเชื้อคงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=2">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel" style="background-color:#E91E63">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/raw_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawStock }</div>
                                    <div>ยอดวัตถุดิบคงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=3">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel" style="background-color:#DAA520">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/tool_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${ToolStock }</div>
                                    <div>ยอดวัสดุ/อุปกรณ์คงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=4">
                            <div class="panel-footer ">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel" style="background-color:#3498DB">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineExp }</div>
                                    <div>ยอดยาใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=5">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel" style="background-color:#2980B9">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                     <img src="resources/img/storehouse/raw_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawExp }</div>
                                    <div>ยอดวัตถุดิบใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=6">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel" style="background-color:#26A69A">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/nitank.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ไนโตรเจนเหลวต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=7">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                 <div class="col-md-12">
                    <div class="panel" style="background-color:#229954">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/dilapidated.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${Toolbroken }</div>
                                    <div>ยอดอุปกรณ์ชำรุดเสียหาย/ส่งซ่อม</div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${sessionScope.privilege ==1}"><a href="Tool_broken">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a></c:if>
                    </div>
                </div>
				<%--<div class="col-md-12">
                    <div class="panel" style="background-color:#8E44AD">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/release.png" alt="logo" style="width:115px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ยอดรวมอุปกรณ์ที่อยู่ระหว่างการยืม</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div> --%>
            		
        			</div>
				
			</div>
			</div>
			
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////	 -->			
			
			<div class="panel-body" id="dash1">
				
            		<div class="row">
            		
				<div class="col-md-6">
                    <div class="panel" style="background-color:#c2c2a3">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-globe fa-4x"></i>
                                </div>
                                <div class="col-xs-20 text-right">
                                
									<span id="date_time2" style="color: #ffffff; font-size: 22px;"></span>
            						
            						<!-- <script type="text/javascript"> window.onload = date_time('date_time');</script> -->
            						
                                </div>
                            </div>
                            
                    <div class="panell" style="background-color:#eeeeee ">
                        <div class="panel-heading">
                            <div class="row">
                                
                                <div class="col-xs-20 text-left ">
                                
                                    <div class="huge" style="font-size: 21px; color: black; font-weight : bold ;" >&nbsp;การแจ้งเตือนรวม&nbsp;${Total}&nbsp;รายการ</div>
            						
                                </div>
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                    

            	</div>

                <div class="col-md-6">
                    <div class="panel" style="background-color:#DC7633">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineStock }</div>
                                    <div>ยอดยาคงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert" >
                            <div class="panel-footer "  >
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="panel" style="background-color:#da282f">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/semen_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${SemenStock }</div>
                                    <div>ยอดน้ำเชื้อคงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=2">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel" style="background-color:#E91E63">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/raw_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawStock }</div>
                                    <div>ยอดวัตถุดิบคงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=3">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel" style="background-color:#DAA520">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/tool_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${ToolStock }</div>
                                    <div>ยอดวัสดุ/อุปกรณ์คงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=4">
                            <div class="panel-footer ">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel" style="background-color:#3498DB">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineExp }</div>
                                    <div>ยอดยาใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=5">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel" style="background-color:#2980B9">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                     <img src="resources/img/storehouse/raw_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawExp }</div>
                                    <div>ยอดวัตถุดิบใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=6">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel" style="background-color:#26A69A">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/nitank.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ไนโตรเจนเหลวต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=7">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel" style="background-color:#229954">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/dilapidated.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${Toolbroken }</div>
                                    <div>ยอดอุปกรณ์ชำรุดเสียหาย/ส่งซ่อม</div>
                                </div>
                            </div>
                        </div>
                       <c:if test="${sessionScope.privilege ==1}"> <a href="Tool_broken">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a></c:if>
                    </div>
                </div>
				 <%--<div class="col-md-6">
                    <div class="panel" style="background-color:#8E44AD">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/release.png" alt="logo" style="width:115px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ยอดรวมอุปกรณ์ที่อยู่ระหว่างการยืม</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div> --%>
            		
        			</div>
				
			</div>
			
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////	 -->
			
			<div class="panel-body" id="dash2">
				
            		<div class="row">
            		
				<div class="col-md-4">
                    <div class="panel" style="background-color:#c2c2a3">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-globe fa-4x"></i>
                                </div>
                                <div class="col-xs-20 text-right">
                                
									<span id="date_time3" style="color: #ffffff; font-size: 22px;"></span>
            						
            						<!-- <script type="text/javascript"> window.onload = date_time('date_time');</script> -->
            						
                                </div>
                            </div>
                            
                    <div class="panell" style="background-color:#eeeeee ">
                        <div class="panel-heading">
                            <div class="row">
                                
                                <div class="col-xs-20 text-left ">
                                
                                    <div class="huge" style="font-size: 22px; color: black; font-weight : bold ;" >&nbsp;การแจ้งเตือนรวม&nbsp;${Total}&nbsp;รายการ</div>
            						
                                </div>
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                    

            	</div>

                <div class="col-md-4">
                    <div class="panel" style="background-color:#DC7633">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineStock }</div>
                                    <div>ยอดยาคงคลัง<br>ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert" >
                            <div class="panel-footer "  >
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="panel" style="background-color:#da282f">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/semen_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${SemenStock }</div>
                                    <div>ยอดน้ำเชื้อคงคลัง<br>ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=2">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel" style="background-color:#E91E63">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/raw_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawStock }</div>
                                    <div>ยอดวัตถุดิบคงคลัง<br> ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=3">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel" style="background-color:#DAA520">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/tool_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${ToolStock }</div>
                                    <div>ยอดวัสดุ/อุปกรณ์<br>คงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=4">
                            <div class="panel-footer ">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel" style="background-color:#3498DB">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineExp }</div>
                                    <div>ยอดยา<br>ใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=5">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel" style="background-color:#2980B9">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                     <img src="resources/img/storehouse/raw_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawExp }</div>
                                    <div>ยอดวัตถุดิบ<br>ใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=6">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel" style="background-color:#26A69A">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/nitank.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ไนโตรเจนเหลว<br>ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=7">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel" style="background-color:#229954">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/dilapidated.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${Toolbroken }</div>
                                    <div>ยอดอุปกรณ์<br>ชำรุดเสียหาย/ส่งซ่อม</div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${sessionScope.privilege ==1}"><a href="Tool_broken">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a></c:if>
                    </div>
                </div>
				 <%--<div class="col-md-4">
                    <div class="panel" style="background-color:#8E44AD">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/release.png" alt="logo" style="width:115px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ยอดรวมอุปกรณ์ที่<br>อยู่ระหว่างการยืม</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div> --%>
            		
        			</div>
				
			</div1>
		</div>
		
		<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////	 -->
			
			<div class="panel-body" id="dash3">
				
            		<div class="row">
            		
				<div class="col-md-3">
                    <div class="panel" style="background-color:#c2c2a3">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-globe fa-4x"></i>
                                </div>
                                <div class="col-xs-20 text-right">
                                
									<span id="date_time4" style="color: #ffffff; font-size: 22px;"></span>
            						
            						<!-- <script type="text/javascript"> window.onload = date_time('date_time');</script> -->
            						
                                </div>
                            </div>
                            
                    <div class="panell" style="background-color:#eeeeee ">
                        <div class="panel-heading">
                            <div class="row">
                                
                                <div class="col-xs-20 text-left ">
                                
                                    <div class="huge" style="font-size: 22px; color: black; font-weight : bold ;" >&nbsp;การแจ้งเตือนรวม&nbsp;${Total}&nbsp;รายการ</div>
            						
                                </div>
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                    

            	</div>

                <div class="col-md-3">
                    <div class="panel" style="background-color:#DC7633">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineStock }</div>
                                    <div>ยอดยาคงคลัง<br>ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert" >
                            <div class="panel-footer "  >
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="panel" style="background-color:#da282f">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/semen_store.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${SemenStock }</div>
                                    <div>ยอดน้ำเชื้อคงคลัง<br>ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=2">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel" style="background-color:#E91E63">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/raw_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawStock }</div>
                                    <div>ยอดวัตถุดิบคงคลัง<br> ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=3">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel" style="background-color:#DAA520">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/tool_store.png" alt="logo" style="width:120px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${ToolStock }</div>
                                    <div>ยอดวัสดุ/อุปกรณ์<br>คงคลังต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=4">
                            <div class="panel-footer ">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel" style="background-color:#3498DB">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/drug_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${MedicineExp }</div>
                                    <div>ยอดยา<br>ใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=5">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel" style="background-color:#2980B9">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                     <img src="resources/img/storehouse/raw_exp.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${RawExp }</div>
                                    <div>ยอดวัตถุดิบ<br>ใกล้หมดอายุ</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=6">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel" style="background-color:#26A69A">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/nitank.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ไนโตรเจนเหลว<br>ต่ำกว่ากำหนด</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert?id=7">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                 <div class="col-md-3">
                    <div class="panel" style="background-color:#229954">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/dilapidated.png" alt="logo" style="width:140px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${Toolbroken }</div>
                                    <div>ยอดอุปกรณ์<br>ชำรุดเสียหาย/ส่งซ่อม</div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${sessionScope.privilege ==1}"><a href="Tool_broken">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a></c:if>
                    </div>
                </div>
				<%--<div class="col-md-3">
                    <div class="panel" style="background-color:#8E44AD">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <img src="resources/img/storehouse/release.png" alt="logo" style="width:115px;height:120px;">
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" style="font-size: 50px; color: white;" >&nbsp;${BucketExp }</div>
                                    <div>ยอดรวมอุปกรณ์ที่<br>อยู่ระหว่างการยืม</div>
                                </div>
                            </div>
                        </div>
                        <a href="alert">
                            <div class="panel-footer">
                                <span class="pull-left">แสดงรายละเอียด</span>
                                <span class="pull-right"><i class="fa fa-file-text"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div> --%>
            		
        			</div>
		</div>
		</div>
		

</c:if>
		<br> 
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
					<a href="index" class="textright" >Farm Management System : Storehouse System</a>
					<img id="imgfooter" src="<c:url value="/resources/img/logostore.png" /> " height="45"  title="กลับสู่หน้าหลัก">
				</a> 
			</div>
		</div>
	</div>
	</footer>
</div>
<script>

$(document).ready(function(){
	$("#dash3").show();
    $("#dash1").hide();
    $("#dash2").hide();
    $("#dash0").hide();
    
    
    $('#button1').click(function(){
    	$("#dash0").show();
        $("#dash1").hide();
        $("#dash2").hide();
        $("#dash3").hide();
        
    });
    $('#button2').click(function(){
        $("#dash0").hide();
        $("#dash1").show();
        $("#dash2").hide();
        $("#dash3").hide();
        
    });
    $('#button3').click(function(){
        $("#dash0").hide();
        $("#dash1").hide();
        $("#dash2").show();
        $("#dash3").hide();
        
    });
    $('#button4').click(function(){
        $("#dash0").hide();
        $("#dash1").hide();
        $("#dash2").hide();
        $("#dash3").show();
    });
});
</script>


</body>
<script>
 var events = document.getElementById("events");        
 baloon.autocheck(); 
 var ag1 = ${Medi};
 //alert(ag1); เหลือจำนวนวันที่หมดอายุยา กับวัตถุดิบยังไม่ได้ใส่
 var ag2 = ${Raw};
 var ag3 = ${Semen};
 var ag4 = ${Tool};
 var ag5 = ${Bucket};
 function oko(){
	 if(ag1!=0){
		  baloon({
		        title: "แจ้งแตือนยา",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag1+" รายการแจ้งแตือน"].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	 /* window.location.href="alert_stock";  */
		        }
		
		    });
		  }
	if(ag2!=0){
		 baloon({
		        title: "แจ้งแตือนวัตถุดิบอาหารสัตว์",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag2+" รายการแจ้งแตือน"
		        ].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	/* window.location.href="index"; */
		        }
		
		    });
		}
	if(ag3!=0){
		 baloon({
		        title: "แจ้งแตือนน้ำเชื้อโค",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag3+" รายการแจ้งแตือน"
		        ].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	/* window.location.href="index"; */
		        }
		
		    });
		}
	if(ag4!=0){
		  baloon({
		        title: "แจ้งแตือนวัสดุ/อุปกรณ์",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag4+" รายการแจ้งแตือน"].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	 /* window.location.href="alert_stock";  */
		        }
		
		    });
		  }
	if(ag5!=0){
		  baloon({
		        title: "แจ้งแตือนถังเก็บน้ำเชื้อโค",
		        image: "<c:url value='/resources/img/alert/alert1.jpg'/>",
		        message:["คุณมี "+ag5+" รายการแจ้งแตือน"].join(""),
		        timer: 5000,
		        closed: function baloonClosed () {
		            events.innerHTML = "Cancel\n" + events.innerHTML;
		        },
		        callback: function baloonCallback () {
		        	events.innerHTML = "Callback\n" + events.innerHTML;
		        	 /* window.location.href="alert_stock";  */
		        }
		
		    });
		  } 
  }
 </script>
</html>