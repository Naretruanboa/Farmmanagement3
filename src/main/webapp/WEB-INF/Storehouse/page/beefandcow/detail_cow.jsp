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
    <title>ข้อมูลการขายโค</title>
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
                    <p style="font-size: 28px; font-weight: 700; color: white;">ข้อมูลโคเนื้อ</p>
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
                        <div class="row form-group ">
                            <div class="col-md-6 ">
                                <fieldset><br>

							<%-- 		<div class="row form-group">
												<label class="col-md-offset-2 col-md-3 control-label"><font color="red">*</font> ชื่อทางการค้า</label>
												<div class="col-md-6">

													<input  value="${cattlein.}" type="text"
														class="form-control" disabled="true"/>
														

												</div>
											</div> --%>
									
									
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">ชื่อโค</label>
                                        <div class="col-md-6">
                                         
                                             <input id="numDate" type="text" class="form-control" value="${cattleid.name}" disabled="disabled"/> 
        
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">หมายเลขลงทะเบียน</label>
                                        <div class="col-md-6">
                                            <input name="" id="2" type="text" class="form-control"   disabled="disabled"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">หมายเลขประจำตัว</label>
                                        <div class="col-md-6">
                                            <input name="" id="3" type="text" class="form-control"  value="${cattleid.num}" disabled="disabled"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">เบอร์หู</label>
                                        <div class="col-md-6">
                                            <input name="" id="4" type="text" class="form-control"  value=" ${cattleid.numEar}" disabled="disabled"/>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">น้ำหนักแรกเกิด</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input name="" type="text" class="form-control" value="${cattleid.weightBirth}"  disabled="disabled"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">น้ำหนัก1ปี</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input name=""  value="${cattleid.weight}" type="text" class="form-control" disabled="disabled"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <label class="col-md-offset-1 col-md-3 control-label">น้ำหนักหย่านม</label>
                                        <div class="col-md-6">
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="${cattleid.weightWean}" disabled="disabled"/>
                                                <span class="input-group-addon" style="border-radius: 0px 10px 10px 0px;">กิโลกรัม</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">

                                        <label class="col-md-offset-1 col-md-3 control-label">สายพันธุ์</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control"  value="${cattleid.breed.value}"  disabled="disabled"style="width:150px"/>
                                        </div>
                                    </div>
                            </div>



                            <div class="col-md-5 ">
                                <fieldset><br>
                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">ชื่อฟาร์ม</label>
                                        <div class="col-md-6">
                                            <input name="" id="10" type="text" class="form-control"  value="${cattleid.farm}" disabled="disabled"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">เจ้าของโค</label>
                                        <div class="col-md-6">
                                            <input name="" id="11" type="text" class="form-control" disabled="disabled"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">ผู้ปรับปรุง</label>
                                        <div class="col-md-6">
                                            <input name="" id="12" type="text" class="form-control" disabled="disabled"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">พ่อ</label>
                                        <div class="col-md-6">
                                            <input name="" id="13" type="text" class="form-control" value="${cattleid.faId}" disabled="disabled"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">เเม่</label>
                                        <div class="col-md-6">
                                            <input name="" id="14" type="text" class="form-control" value="${cattleid.maId}" disabled="disabled"/>
                                            <input  type="hidden" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">เพศ</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" value="${cattleid.sex.value}" disabled="disabled"style="width:150px"/>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">วันเกิด</label>
                                        <div class="col-md-6">
                                            <input name=""  value="${cattleid.calved }" type="text" class="form-control" id="dayImport" disabled="disabled"style="width:150px"/>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label class="col-md-offset-0 col-md-3 control-label">สี</label>
                                        <div class="col-md-6">
                                            <input name="" id="17" type="text" class="form-control" value="${cattleid.color.value}" disabled="disabled"style="width: 70px"/>
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


                        <%--<div class="col-md-offset-9">--%>
                            <%--<button name="action" value="Add" id="add" onclick="addm()"--%>
                                    <%--class="btn btn-success btn-lg">--%>
                                <%--<i class="fa fa-save fa-lg"></i>&nbsp; ขาย--%>
                            <%--</button>--%>
                            <%--<a href="view_medicine"><button name="action" value="cancel" onclick="cancel()"--%>
                                                            <%--class="btn btn-danger btn-lg">--%>
                                <%--<i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก--%>
                            <%--</button></a>--%>
                        <%--</div>--%>
                        <%--</fieldset>--%>
                    </div>
                </div><!-- จบ body -->
                        <div class="col-md-offset-9">
                        <a href="view_beef">
                            		<button name="action" value="cancel" onclick="cancel()"
										class="btn btn-danger btn-lg">
										<i class="fa fa-reply" aria-hidden="true"></i>&nbsp; ย้อนกลับ
									</button></a>			
                        </div>
            </div>
        </div>
        <div>
        </div>

    </div>

</div>

</div>
<jsp:include page="../footer.jsp"/>
</div>


</body>
</html>