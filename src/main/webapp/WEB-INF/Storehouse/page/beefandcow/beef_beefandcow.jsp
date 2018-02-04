<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<c:url value="/resources/css/fileinput.css" />" media="all"
          rel='stylesheet' type='text/css' />

    <script src="<c:url value="/resources/js/clicktable.js" />"></script>
    <script src="<c:url value="/resources/js/fileinput.js" />"></script>
    <title>การนำเข้าโคใหม่</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
<div id="wrapper">
    <div id="content">
        <div class="container">
            <div class="col-md-3">
                <div class="jumbotron" style="background-color: rgb(218, 68, 83)"
                     align="center">
                    <p style="font-size: 28px; font-weight: 700; color: white;">การลงทะเบียนโคใหม่</p>
                </div>
            </div>
            <div class="row">

            </div>
            <br>
            <div class="row form-group">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลโคเนื้อ</a>
                        </h4>
                    </div>

                    <div class="panel-body">
                        <input  value="0" type="hidden"></input>
                        <input  value="0" type="hidden"></input>
                        <div class="row form-group ">
                            <div class="col-md-6 ">
                                <fieldset><br>


                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>ชื่อโค</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" />
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>หมายเลขลงทะเบียน</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control"  />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>หมายเลขประจำตัว</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control"  />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>เบอร์หู</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control"  />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>น้ำหนักแรกเกิด</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>น้ำหนัก1ปี</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>น้ำหนักอย่านม</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>เพศ</label>
                                        <div class="col-md-6">
                                            <select class="form-control" id="UnitMedicine.id" style="width: 55%">
                                            <option value="" class="btn btn-default dropdown-toggle" type="button" id="UnitMedicine.id" data-toggle="dropdown">กรุณาเลือก</option>
                                        	<option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">ตัวผู้</a></option>
                                            <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">ตัวเมีย</a></option>
                                            </select>
                                        </div>
                                    </div>

                                    <script src="http://code.jquery.com/jquery-latest.js"></script>
                                    <div class="row form-group">

                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>สายพันธุ</label>
                                        <div class="col-md-4">

                                    <select id="pagelist" class="form-control" style="width: 150px">
                                        <option value="" class="btn btn-default dropdown-toggle" type="button" id="pagelist1" data-toggle="dropdown">กรุณาเลือก</option>
                                        <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์ตาก</a></option>
                                        <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์กำแพงแสน</a></option>
                                        <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์กบินทร์บุรี</a></option>
                                        <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์บราห์มัน</a></option>
                                        <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์บีฟมาสเตอร์</a></option>
                                        <option value="secondOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์ชาร์โรเล่ส์</a></option>
                                        <option value="secondOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">โคพันธุ์เฮียฟอร์ด</a></option>
                                    </select>

                                        </div>
                                    </div>

                                    <%--เลือใส่ค่าใบในพันธุ์ประวัติ--%>
                                    <div id="firstOption" style="display:none" >
                                        <div class="col-lg-6">
                                            <form method="post" action="first.php">
                                                <%--<div class="col-md-8">--%>
                                                    <br><div class="jumbotron" style="background-color: CornflowerBlue "
                                                         align="center">
                                                        <p style="font-size: 25px; font-weight: 40; color: white;" align="center">ค่า EPD</p>
                                                    </div>
                                                <%--</div>--%>
                                                <div class="col-md-6 ">
                                                    <fieldset>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">BW</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">WW</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">YW</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">MILK</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">TM</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-6 ">
                                                    <fieldset>
                                                        <div class="row form-group ">
                                                            <label class="col-md-offset-0 col-md-4 control-label">SC</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">FAT</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">REA</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">IMF</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">RUMP</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="col-lg-6" style="right: -300px">
                                            <form method="post" action="first.php">
                                                <br><div class="jumbotron" style="background-color: CornflowerBlue "
                                                         align="center">
                                                <p style="font-size: 25px; font-weight: 40; color: white;" align="center">ค่า ACC</p>
                                            </div>
                                                <div class="col-md-6 ">
                                                    <fieldset>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">BW</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">WW</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">YW</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">MILK</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">TM</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-6 ">
                                                    <fieldset>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">SC</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">FAT</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">REA</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">IMF</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="row form-group">
                                                            <label class="col-md-offset-0 col-md-4 control-label">RUMP</label>
                                                            <div class="col-md-6">
                                                                <input type="text" class="form-control" style="width: 70px"/>
                                                                <input  type="hidden" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </form>
                                        </div>

                                    </div>

                                </fieldset>


                                            <%--เลือใส่ค่าใบในพันธุ์ประวัติ--%>
                                            <div id="secondOption" style="display:none" >
                                                <div class="col-lg-6">
                                                    <form method="post" action="first.php">
                                                        <br><div class="jumbotron" style="background-color: CornflowerBlue "
                                                                 align="center">
                                                        <p style="font-size: 25px; font-weight: 40; color: white;" align="center">ค่า EBV</p>
                                                    </div>
                                                        <div class="col-md-11 " >
                                                            <fieldset>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">Gestation Length</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">Calving Ease</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">DIR</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">DIRS</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">MCW</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                        <div class="col-md-11 ">
                                                            <fieldset>
                                                                <div class="row form-group ">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">SS</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">CWT</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">EMA</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">EMA</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">RBY%</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">IMF%</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                    </form>
                                                </div>

                                                <div class="col-lg-6" style="right: -300px">
                                                    <form method="post" action="first.php">
                                                        <br><div class="jumbotron" style="background-color: CornflowerBlue "
                                                                 align="center">
                                                        <p style="font-size: 25px; font-weight: 40; color: white;" align="center">ค่า ACC</p>
                                                    </div>
                                                        <div class="col-md-11 ">
                                                            <fieldset>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">Gestation Length</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">Calving Ease</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">DIR</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">DIRS</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">MCW</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                        <div class="col-md-11 " >
                                                            <fieldset>
                                                                <div class="row form-group ">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">SS</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">CWT</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">EMA</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">EMA</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">RBY%</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <label class="col-md-offset-0 col-md-6 control-label">IMF%</label>
                                                                    <div class="col-md-6">
                                                                        <input type="text" class="form-control" style="width: 70px"/>
                                                                        <input  type="hidden" class="form-control" />
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                    </form>
                                                </div>

                                            </div>
                                    <script language="javascript">
                                        $("#pagelist").change(function(){
                                            var viewID = $("#pagelist option:selected").val();
                                            $("#pagelist option").each(function(){
                                                var hideID = $(this).val();
                                                $("#"+hideID).hide();
                                            });
                                            $("#"+viewID).show();
                                        });
                                    </script>







                            </div>

                            <div class="col-md-3 ">
                                <fieldset><br>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>ชื่อฟาร์ม</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" />
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>เจ้าของโค</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" />
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>ผู้ปรับปรุง</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" />
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>พ่อ</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" />
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>เเม่</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" />
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>วันเกิด</label>
                                        <div class="col-md-6">
                                            <input type="date" class="form-control" id="dayImport" />
                                        </div>
                                    </div>
                                    
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>ราคา</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">บาท</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label"><font color="red">*</font>สี</label>
                                        <div class="col-md-6">
                                            <select class="form-control" id="UnitMedicine.id" style="width: 100%">
                                            <div class="row form-group">
                                            	<option value="" class="btn btn-default dropdown-toggle" type="button" id="UnitMedicine.id" data-toggle="dropdown">กรุณาเลือก</option>
                                        		<option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">แดง</a></option>
                                            	<option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">เทา</a></option>
                                                <option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">ขาว</a></option>
                                            	<option value="firstOption" role="presentation"><a role="menuitem" tabindex="-1" href="#">ดำ</a></option>
                                    		</div>
                                            </select>
                                        </div>
                                    </div>











                            </div>

                        </div>

                        <%--<div id="showSelected" style="border:1px solid blue;display:block;width:250px;height:30px;">--%>
                        <%--</div>--%>
                        <%--<script language="javascript">--%>
                            <%--$("#pagelist").change(function(){--%>
                                <%--var url = $("#pagelist option:selected").val();--%>
                                <%--$("#showSelected").empty().load(url);--%>
                            <%--});--%>
                        <%--</script>--%>


                               <div class="col-md-offset-9">

                                        <button name="action" value="Add" id="add" onclick="addm()"
                                                class="btn btn-success btn-lg">
                                            <i class="fa fa-save fa-lg"></i>&nbsp; บันทึกข้อมูล
                                        </button>
                                        <a href="view_beef"><button name="action" value="cancel" onclick="cancel()"
                                                                        class="btn btn-danger btn-lg">
                                            <i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
                                        </button></a>

                               </div>



                                </fieldset>
                        </div>






                    </div><!-- จบ body -->

                </div>
            </div>
            <div>
            </div>

        </div>

    </div>

</div>
<jsp:include page="../footer.jsp"/>
</div>

<script type="text/javascript">
    /* 	$(document).ready(function(){

            if($("#id").val() != ""){
                $("#add").hide();
            }

            if( $("#id").val() == ""){
            $("#edit").hide();
        }

        })
     */
    // ยืนยันบันทึก
    function addm(){
        swal({	title: "ยืนยันบันทึกข้อมูล?",
                text: "คุณต้องการยืนยันบันทึกข้อมูลโคหรือไม่!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#55c7dd",
                confirmButtonText: "ต้องการ",
                cancelButtonText: "ไม่ต้องการ",
                closeOnConfirm: false,
                closeOnCancel: false },
            function(isConfirm){
                if (isConfirm) {
                    if($("#tradeName").val() == ""){
                        swal("กรุณากรอกชื่อทางการค้า");
                    }else if($("#groupMedicine\\.id").val() == "0"){
                        swal("กรุณาเลือกประเภท");
                    }else if($("#UnitMedicine\\.id").val() == "0"){
                        swal("กรุณาเลือกหน่วยที่ใช้ในคลัง");
                    }else{
                        $.post('chkMed',{name:$("#tradeName").val()},function(msg){
                            if(msg=="yes"){

                                $.post('addmedi',$("#medicine").serialize(),
                                    function (result) {
                                        swal({	title: "สำเร็จ",
                                            text: "บันทึกการลงทะเบียนเรียบร้อยแล้ว!",
                                            timer: 2000,
                                            type: "success",
                                            showConfirmButton: false
                                        });
                                        setInterval(function(){location.reload()}, 2000);
                                    })
                            }//end if spost
                            else{swal("ผิดพลาด", "ชื่อโคซ้ำ!", "error");}
                        }) //end post
                    }
                } else {
                    swal({	title: "ยกเลิก!",
                        text: "คุณได้ยกเลิกการบันทึกข้อมูล",
                        timer: 1000,
                        type: "error",
                        showConfirmButton: false
                    });
                }
            }
        );
    }

</script>
</body>
</html>