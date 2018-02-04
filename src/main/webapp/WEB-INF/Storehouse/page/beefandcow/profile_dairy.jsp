<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 8/8/2560
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
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
    <title>ส่งออกโคนม</title>
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
                    <p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลโคนม</p>
                </div>
            </div>
            <div class="row">

            </div>
            <br>
            <div class="row form-group">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <span class="fa fa-list-alt fa-lg"></span>&nbsp;รายละเอียด</a>
                        </h4>
                    </div>



                    <div class="panel-body">
                        <input  value="0" type="hidden"></input>
                        <input  value="0" type="hidden"></input>
                        <input  value="0" type="hidden"></input>
                        <div class="row form-group ">
                            <div class="col-md-5 ">
                                <fieldset><br>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>ชื่อโค</label>
                                        <div class="col-md-6">
                                            <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>ชื่อฟาร์ม</label>
                                        <div class="col-md-6">
                                            <input name="" id="2" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>เจ้าของโค</label>
                                        <div class="col-md-6">
                                            <input name="" id="3" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>ผู้ปรับปรุง</label>
                                        <div class="col-md-6">
                                            <input name="" id="4" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>หมายเลขลงทะเบียน</label>
                                        <div class="col-md-6">
                                            <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>หมายเลขประจำตัว</label>
                                        <div class="col-md-6">
                                            <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>เบอร์หู</label>
                                        <div class="col-md-6">
                                            <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>พ่อ</label>
                                        <div class="col-md-6">
                                            <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>เเม่</label>
                                        <div class="col-md-6">
                                            <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>วันเกิด</label>
                                        <div class="col-md-6">
                                        	<input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 250px"/>
                                            <!-- <input type="date" class="form-control" id="dayImport" style="width: 250px"/> -->
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>น้ำหนักแรกเกิด</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 160px"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>น้ำหนัก1ปี</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 160px"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>น้ำหนักอย่านม</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 160px"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>เพศ</label>
                                        <div class="col-md-6">
                                       		c
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-4 control-label"><font color="red">*</font>ราคาโค</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input name="" id="1" type="text" class="form-control" disabled="disabled" style="width: 200px"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px; style="width: 20px" >บาท</span>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>






                            <div class="col-md-4 ">
                                <fieldset><br>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>สี</label>
                                        <div class="col-md-6">
                                        
                                            <select class="form-control" id="UnitMedicine.id" style="width: 40%"></select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>สายพันธุ์</label>
                                        <div class="col-md-6">
                                            <%--<select class="form-control" id="UnitMedicine.id" style="width: 40%"></select>--%>
                                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown">
                                                เลือก
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">พันธุ์แท้ขาว-ดำ</a></li>
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">พันธุ์ลูกผสมขาว-ดำ</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>เอ็นยึดเต้านมหน้า</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>เอ็นยึดเต้านมหลัง</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความสูงเต้านมหลัง</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความกว้างเต้านมหลัง</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความลึกของเต้านม</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความยาวของหัวนม</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ตำแหน่งหัวนมของเต้านมคู่หน้า</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ตำแหน่งหัวนมของเต้านมคู่หลัง</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>อัตราการคลอดยาก</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>อัตราการคลอดยากลูกสาว</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>การตายแรกคลอด</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>การตายแรกคลอดลูกสาว</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>อัตราการตั้งท้องลูกสาว</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" style="width: 70px"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>


                            </div>
                                <div class="col-md-3 ">
                                    <fieldset><br>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>คะแนนโซมาติกเซล</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>อายุควรให้ผลผลิต</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความกว้างของสะโพก</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความโค้งของขาหลัง</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความตรงของขาหลัง</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>โครงร่าง</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความลึกลำตัว</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ความแข็งแรง</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>มุมสะโพก</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>มุมกีบ</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>คะแนนขาและกีบ</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>น้ำนม</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>โปรตีน</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>ไขมัน</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-0 col-md-6 control-label"><font color="red">*</font>รายได้เพิ่มสุทธิ</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" style="width: 70px"/>
                                                <input  type="hidden" class="form-control" />
                                            </div>
                                        </div>



                                    </fieldset>
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
                            <a href="view_dairy"><button name="action" value="cancel" onclick="cancel()"
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
                        swal("กรุณาเลือกสายพันธุ์");
                    }else{
                        $.post('chkMed',{name:$("#tradeName").val()},function(msg){
                            if(msg=="yes"){

                                $.post('addmedi',$("#beefandcow").serialize(),
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
