<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ขาย/ส่งออกโค</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<%int i=1,j=1; %>
<div class="container">
    <hr>
    <div class=" row form-group">
        <div class="form-inline">
            <div class="col-md-3">
                <div class="jumbotron" style="background-color: rgb(218, 68, 83)"
                     align="center">
                    <p style="font-size: 28px; font-weight: 700; color: white;">ส่งออกโคเนื้อ</p>
                </div>
            </div>
            <div class="col-md-9" align="right">
                <div class="input-group form-search">

						<span class="input-group-btn search-query">
						 <select class="form-control  search-query btn-info" id="selectValue1" style="width: 150px;color: white;">
								<option value="1">หมายเลขทะเบียน</option>
                                <option value="2">หมายเลขประจำตัว</option>
						</select>

							<input id="search1" class="form-control search-query " oninput="search1()"
                                   style="margin-left: -2px; margin-right: -1px;">

							<button onclick="search1()"
                                    class="btn btn-info search-query glyphicon glyphicon-search"
                                    style="padding: 8px 10px 7px 10px;"></button>
						</span>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
        </div>
        <div class="panel-body">
            <table class="table table-striped table-hover  table-bordered">
                <thead>
                <tr>
                    <th>ลำดับที่</th>
                    <th>ชื่อโค</th>
                    <th>หมายเลขทะเบียน</th>
                    <th>หมายเลขประจำตัว</th>
                    <th>น้ำหนัก</th>
                    <th>วันที่นำเข้า</th>
                    <th>ขาย</th>

                </tr>
                </thead>

                <tbody style="text-align: center;" >
                <%--<c:forEach items="${listBrrow }" var="listb">--%>
                <%--<fmt:parseDate value="${listb.dayBorrow}" pattern="yyyy-MM-dd" var="dayBorrow" />--%>
                <%--<fmt:parseDate value="${listb.dayReturn}" pattern="yyyy-MM-dd" var="dayReturn" />--%>
                <tr>
                    <td>1</td>
                    <td>F</td>
                    <td>125021ND 10844</td>
                    <td>248</td>
                    <td>650</td>
                    <td>10/10/2560</td>
                    <td>
                        <a href="profile_cow">
                            <button style="color: white; background-color: #26A65B; border: 2px solid #26A65B;" class="btn btn-info" value="${listb.id}"onclick="chkreturn(this.value)">
                                <i class="fa fa-shopping-cart"></i>
                            </button>
                        </a>
                    </td>



                </tr>
                <%--</c:forEach>--%>
                </tbody>

            </table>

        </div>
    </div>


    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title">ระบุหมายเลขประจำตัว</h3>
                </div>
                <div class="modal-body">
                    <form id="Brrow">
                        <input id="beforequantity"  type="hidden" class="form-control input-sm " size="35" />
                        <input name="id" id="id" type="hidden" class="form-control input-sm " size="35" />
                        <div class="row form-group">
                            <label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>ชื่อโค</label>
                            <div class="form-inline">
                                <input name="dayborrow" value="${day }" id="dayborrow" type="date" class="form-control input-sm " size="35" />
                            </div>
                        </div>
                        <div class="row form-group">
                            <label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>วหมายเลขทะเบียน/label>
                            <div class="form-inline">
                                <input name="dayreturn" id="dayreturn" type="date" class="form-control input-sm " size="35" />
                            </div>
                        </div>
                        <div class="row form-group">
                            <label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>น้ำหนัก</label>
                            <div class="form-inline">
                                <input name="quantity" id="quantity" type="number" class="form-control input-sm " size="35" />
                            </div>
                        </div>
                        <div class="row form-group">
                            <label class="col-md-offset-3 col-md-2 control-label"><font style="color: red;">* </font>วันที่นำเข้า</label>
                            <div class="form-inline">
                                <select class="form-control " name="memberid"  id="memberid">
                                    <option value="0" >ชื่อผู้ขาย</option>
                                    <%--<c:forEach items="${member }" var="mem">--%>
                                    <%--<option value="${mem.id }">${mem.first} ${mem.last } </option>--%>
                                    <%--</c:forEach>--%>
                                </select>

                            </div>
                        </div>
                    </form>
                </div>
                <%--<div class="modal-footer">--%>
                    <%--<button name="action" type="submit" class="btn btn-success" id="save_borrow">บันทึกการขาย</button>--%>
                    <%--<button type="button" class="btn btn-danger"  data-dismiss="modal">ปิด</button>--%>
                <%--</div>--%>

            </div>

        </div>
    </div>

</div> <!-- end container -->

<jsp:include page="../footer.jsp"/>
</body>
<script type="text/javascript">
    //search for release ####################################################
    $("#listBorrow").load('search_borrow_t',{ id : 1 ,value : null},function(){
        $("#p").load('page1',{ pagePresent1 : $("#Page1").val(), pageLast1  : $("#countPage1").val() },function(m){
            for(i=0 ;i<=10;i++){
                if($("[id=pageNum1]").eq(i).val()==$("#Page1").val()){
                    $("[id=pageNum1]").eq(i).addClass("active");
                }
            }
        });
    });

    function search1(){
        $("#listBorrow").load('search_borrow_t',{ id : $("#selectValue1").val(), value : $("#search1").val()},function(){
            $("#p").load('page1',{ pagePresent1 : $("#Page1").val(), pageLast1 : $("#countPage1").val()},function(m){
                for(i=0 ;i<=10;i++){
                    if($("[id=pageNum1]").eq(i).val()==$("#Page1").val()){
                        $("[id=pageNum1]").eq(i).addClass("active");
                    }
                }
            });
        });
    }

    $(document).on('click','#pageNum1',function(e){
        var id =  $('[id=pageNum1]').index(e.target);
        $("#listBorrow").load('search_borrow_t',{ id : $("#selectValue1").val(), value : $("#search1").val(),page:$("[id=pageNum1]").eq(id).val()},function(){
            $("#p").load('page1',{ pagePresent1 : $("#Page1").val(), pageLast1 : $("#countPage1").val()},function(m){
                for(i=0 ;i<=10;i++){
                    if($("[id=pageNum1]").eq(i).val()==$("#Page1").val()){
                        $("[id=pageNum1]").eq(i).addClass("active");
                    }
                }
            });

        });
    });

    $(document).on('click','#save_borrow',function(e){
        var beforequantity = $("#beforequantity").val();
        var quantity = $("#quantity").val();
        var dayborrow = $("#dayborrow").val();
        var dayreturn = $("#dayreturn").val();
        var memberid = $("#memberid").val();

        var b = parseInt(beforequantity);
        var q = parseInt(quantity);

        if( q > b || quantity <=0 ){
            swal("ผิดพลาด", "กรุณากรอกข้อมูลให้ถูกต้อง!", "error");
        }else if(dayborrow == "" || dayreturn =="" ){
            swal("ผิดพลาด", "กรุณากรอกข้อมูลให้ถูกต้อง!", "error");
        }else if(memberid == 0){
            swal("ผิดพลาด", "กรุณาระบุชื่อผู้ขายให้ถูกต้อง!", "error");
        }else{
            $.ajax({
                url:"SaveBorrow_tool",
                method:"POST",
                data:$("#Brrow").serialize()   //id ของ form
            }).done(function(s){
                swal({  title: "สำเร็จ",
                        text: "บันทึกการขายเรียบร้อยแล้ว!",
                        type: "success",
                        showCancelButton: false,
                        confirmButtonText: "OK!",
                        closeOnConfirm: false },
                    function(){
                        window.location.href='borrow_tool';
                    });
            });
            e.preventDefault();
        }
    });


    $('#myModal').on('show.bs.modal', function(e) {
        var id1 = $(e.relatedTarget).data('id1');
        var id2 = $(e.relatedTarget).data('beforequantity');

        $(e.currentTarget).find('input[id="beforequantity"]').val(id2);
        $(e.currentTarget).find('input[id="id"]').val(id1);

    });
    //$('#myModal').on('hide.bs.modal', function(e) {
    //  location.reload();
    //});



    //คืนอุปกรณ์
//    function chkreturn(str){//alert(str);
//        swal({  title: "ยืนยันการคืนอุปกรณ์!",
//            text: "คุณต้องการคืนอุปกรณ์ใช่หรือไม่?",
//            type: "warning",
//            showCancelButton: true,
//            confirmButtonColor: "#DD6B55",
//            confirmButtonText: "ต้องการ",
//            cancelButtonText: "ไม่ต้องการ",
//            closeOnConfirm: false,   closeOnCancel: false
//        }, function(isConfirm){
//            if (isConfirm) {
//                $.ajax({
//                    url:'return_tool',
//                    type:'POST',
//                    data:{
//                        id:str, //send id to controller and have value=str
//                    },success : function (result){
//                        swal({title:"สำเร็จ",
//                                text:"คืนอุปกรณ์เรียบร้อยแล้ว!",
//                                type:"success",
//                                timer: 2000,
//                                showConfirmButton: false
//                            },function(isClose){
//                                window.location.reload();
//                            }
//                        );
//                    }
//                    ,error: function(result){
//                        swal("ผิดพลาด", "ไม่สามารถคืนอุปกรณ์ได้!", "error");
//                    }
//
//                });
//            }
//            else {     swal({
//                title:"ยกเลิก",
//                text:"ยกเลิกการคืนเรียบร้อยแล้ว!",
//                type:"error",
//                timer: 2000,
//                showConfirmButton: false
//            });}
//        });
//
//    }




</script>
</html>
