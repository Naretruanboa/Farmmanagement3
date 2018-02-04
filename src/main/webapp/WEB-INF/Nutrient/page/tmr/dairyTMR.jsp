<%--
  Created by IntelliJ IDEA.
  User: Meu
  Date: 27/10/2560
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>คำนวณอาหารข้นราคาต่ำสุด</title>
</head>
<body>

<jsp:include page="../menu.jsp"/>

<%int i=1; %>

<div class="container">
    <hr>
    <div class=" row form-group">
        <div class="form-inline">
            <div class="col-md-3">
                <div class="jumbotron" style="background-color: rgb(218, 68, 83)"
                     align="center">
                    <p style="font-size: 28px; font-weight: 700; color: white;">คำนวณอาหารข้น TMR</p>
                </div>
            </div>
        </div>
    </div>

    <%--------------------------------------------------------------------------------------------------------------%>
                <div class="col-md-6.5">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
                        </div>
                        <div class="table-responsive">
                            <div class="panel-body">
                                <table class="table table-striped table-hover  table-bordered">
                                    <thead>
                                    <tr>
                                        <th>ผลการจัดสัดส่วนอาหาร</th>
                                        <th>ชื่อสหกรณ์/ฟาร์ม</th>
                                        <th>ผู้จัดสัดส่วน</th>
                                        <th>วัน/เดือน/ปี</th>
                                    </tr>
                                    <tr>

                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>

                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <%--------------------------------------------------------------%>
                <div class="col-md-6.5">
                    <div class="panel panel-primary"
                         style="font-size: 18px; color: black;">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="font-size: 18px; color: white;">
                                <i class="fa fa-cart-plus"></i>&nbsp;ข้อมูลโคนม
                            </h3>
                        </div>
                        <div class="table-responsive">
                            <div class="panel-body">
                                <form action="rawmaterialprice" method="POST"  id="rawmaterialprice" >
                                    <center>
                                        <div class="row form-group">
                                            <table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">
                                                <thead >

                                                <tr>
                                                    <th>จำนวณโคในฝูง</th>
                                                    <th>น้ำหนักโค(กก.) </th>
                                                    <th>น้ำหนักเพิ่มวันละ </th>
                                                    <th width="120px">ปริมาณที่กินได้<br>(%น้ำหนักตัว)</th>
                                                    <th>ปริมาณที่กินได้นน.แห้ง(กก.)</th>
                                                </tr>

                                                <tr>
                                                    <th><input id="lb2" size="10" type="text" value="${ll[1] }" placeholder="0"><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                </tr>
                                                </thead>
                                            </table>


                                        </div>
                                    </center>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <%--------------------------------------------------------------%>

                <div class="col-md-6">
                    <div class="panel panel-primary"
                         style="font-size: 18px; color: black;">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="font-size: 18px; color: white;">
                                <i class="fa fa-cart-plus"></i>&nbsp;การให้อาหาร
                            </h3>
                        </div>
                        <%--<table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">--%>
                        <br>
                        <td>ให้อาหารต่อวัน (ครั้ง) =</td>
                        <th><input id="lb2" size="10" type="text" value="${ll[1] }" placeholder="0"><br></th>

                        <div class="table-responsive">
                            <div class="panel-body">
                                <form action="rawmaterialprice" method="POST"  id="rawmaterialprice" >
                                    <center>
                                        <div class="row form-group">
                                            <table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">
                                                <thead >

                                                <tr>
                                                    <th>ปริมาณสด</th>
                                                    <th>ปริมาณ(กก.)</th>
                                                    <th>ราคาต่อ กก.(บาท)</th>
                                                </tr>

                                                <tr>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </center>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <%--------------------------------------------------------------%>
                <div class="col-md-6">
                    <div class="panel panel-primary"
                         style="font-size: 18px; color: black;">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="font-size: 18px; color: white;">
                                <i class="fa fa-cart-plus"></i>&nbsp;อาหารเสริม
                            </h3>
                        </div>
                        <div class="table-responsive">
                            <div class="panel-body">
                                <form action="rawmaterialprice" method="POST"  id="rawmaterialprice" >
                                    <center>
                                        <div class="row form-group">
                                            <table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">
                                                <thead >
                                                <tr>
                                                    <th>ปริมาณสด</th>
                                                    <th>ปริมาณ(กก.)</th>
                                                </tr>
                                                <tr>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                    <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                                </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </center>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>




    <%--------------------------------------------------------------%>

    <div class="col-md-12">
        <div class="panel panel-primary"
             style="font-size: 18px; color: black;">
            <div class="panel-heading">
                <h3 class="panel-title" style="font-size: 18px; color: white;">
                    <i class="fa fa-cart-plus"></i>&nbsp;องค์ประกอบของอาหารรวม
                </h3>
            </div>
            <div class="table-responsive">
                <div class="panel-body">
                    <form action="rawmaterialprice" method="POST"  id="rawmaterialprice" >
                        <center>
                            <div class="row form-group">
                                <table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="0" bordercolor="#BDBDBD">
                                    <thead >
                                    <tr>
                                        <th>แป้ง (%) <br>(ไม่ควรเกิน 40%)</th>
                                        <th> %โปรตีนสลายตัว <br>ของโปรตีนรวม (ควรอยู่ระหว่าง 60-66)</th>
                                        <th> แป้ง/โปรตีนสลายตัว<br>(ควรอยู่ระหว่าง 2.5-4)</th>
                                        <th> เยื่อใยNDF (%) <br>(ระหว่าง 28-35%)</th>

                                    </tr>
                                    <tr>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                        <th><input readonly="true" id="sol1" size="10" name="sol1" type="text"value="${d[0] }" ><br></th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </center>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <%--------------------------------------------------------------%>
        <div class="col-md-12" align="center">
            &nbsp;
            <button class="btn btn-success" id="cen1" onclick="calcal()">กลับ</button>
            <button class="btn btn-success" id="cen1" onclick="calcal1()">พิมพ์</button>
            <button class="btn btn-success" id="cen1" onclick="calcal1()">บันทึก</button>
            &nbsp;
        </div>



</div>

<jsp:include page="../footer.jsp" />

<script type="text/javascript">

</script>

</body>
</html>