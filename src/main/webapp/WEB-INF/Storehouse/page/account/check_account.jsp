<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>การแก้ไขบัญชี</title>
</head>
<body>
<%@ include file="../menu.jsp"%>
<br><br>
<div class="container">
    <div class="col-md-3">
        <div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
            <p style="font-size: 28px; font-weight: 700; color: white;">ตรวจสอบบัญชี</p>
        </div>
    </div>
    <br><br><br>
    <div class="row form-group"> <!-- //ตาราง -->
        <div class="col-md-offset-3 col-md-6">  <!-- //ขนาดตาราง -->
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title"><span class="fa fa-list-alt fa-lg"></span>&nbsp;ข้อมูลบัญชี</h4>
                </div>
                <div class="panel-body" >

                    <%--<form:form action="rawmaterial" method="POST"  id="rawmaterial" modelAttribute="rawmaterial"  commandName="rawmaterial" >--%>
                    <%--<form:input path="quantity" value="0" type="hidden"></form:input>--%>
                    <%--<form:input type="hidden" value="0" path="statusalert"/>--%>
                    <div class="row form-group">
                        <label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ประเภท </label>
                        <div class="form-inline">
                            <select id="pagelist" class="form-control" style="width: 150px">
                                <option value="0">เลือกชื่อประเภทบัญชี</option>
                                <c:forEach items="${typeBill }" var="bill">
                                    <%--<c:if test="${Semen.id == semen.id }">--%>
                                    <%--<option value="${semen.id }" selected="selected">${semen.nameCattle }</option>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${Semen.id != semen.id }">--%>
                                    <option value="${bill.id }">${bill.value }</option>
                                    <%--</c:if>--%>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                        <div class="row form-group">
                        <label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ตั้งแต่ </label>
                        <div class="form-inline">
                            <input  id="startDate"  class="form-control date"  placeholder="ว/ด/ป"/>
                        </div>
                    </div>
                    <div class="row form-group">
                        <label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>จนถึง </label>
                        <div class="form-inline">
                            <input  id="endDate"  class="form-control date"  placeholder="ว/ด/ป"/>
                        </div>
                    </div>




                    <%--</form:form>--%>

                    <div class="row form-group" align="center">  <!-- //ปุ่มสำหรับกดบันทึก หรือยกเลิก -->
                        <button name="action" value="Add" id="add" onclick="drawChart()"
                                class="btn btn-success btn-lg">
                            <i class="fa fa-search"></i>&nbsp; ตรวจสอบข้อมูล
                        </button>
                        <a href="view_raw"><button name="action" value="cancel" onclick="cancel()"
                                                   class="btn btn-danger btn-lg">
                            <i class="fa fa-times fa-lg"></i>&nbsp; ยกเลิก
                        </button></a>
                    </div>



                </div>
            </div>
        </div>

    </div> <!-- ปิดตาราง -->
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h4 class="panel-title" style="font-size: 25px;">รายละเอียด</h4>
        </div>

        <div class="panel-body" align="center">
            <div id="columnchart_material" style="width: 800px; height: 500px;"></div></div><br><br><br><br>
            <table id="summary" class="table table-striped table-hover  table-bordered">
                <thead>
                <tr>
                    <th>ลำดับที่</th>
                    <th>ชื่อบัญชี</th>
                    <th>ประเภท</th>
                    <th>จำนวน</th>
                    <th>หน่วย</th>
                    <th>ราคารวม</th>
                    <th>วันที่นำเข้า</th>
                    <!--  <th>รายละเอียดเพิ่มเติม</th>		 -->
                </tr>
                <tr align="center">
                    <td>1</td>
                    <td>บิวตาซิว</td>
                    <td>ยา</td>
                    <td>17</td>
                    <td>กล่อง</td>
                    <td>1700</td>
                    <td>7/11/2560</td>
                </tr>
                <tr align="center">
                    <td>2</td>
                    <td>เบเรนิล 7%</td>
                    <td>ยา</td>
                    <td>20</td>
                    <td>กล่อง</td>
                    <td>2400</td>
                    <td>7/11/2560</td>
                </tr>
                <tr align="center">
                    <td>3</td>
                    <td>คานซิล</td>
                    <td>ยา</td>
                    <td>10</td>
                    <td>กล่อง</td>
                    <td>1500</td>
                    <td>7/11/2560</td>
                </tr>
                <tr align="center">
                    <td>4</td>
                    <td>ไบโอคาตาลิน</td>
                    <td>ยา</td>
                    <td>16</td>
                    <td>กล่อง</td>
                    <td>3200</td>
                    <td>7/11/2560</td>
                </tr>
                <tr align="center">
                    <td>5</td>
                    <td>ไบรีน่า 20%</td>
                    <td>ยา</td>
                    <td>5</td>
                    <td>กล่อง</td>
                    <td>2500</td>
                    <td>7/11/2560</td>
                </tr>
                <tr align="center">
                    <td>6</td>
                    <td>ซิบ-ฟอส</td>
                    <td>ยา</td>
                    <td>8</td>
                    <td>กล่อง</td>
                    <td>1600</td>
                    <td>7/11/2560</td>
                </tr>
                </thead>

                <tbody style="text-align: center;" id="listM">

                </tbody>

            </table>
            <div class="row form-group" id="page" align="center"></div>
            <div class="row form-group" align="center" id="btnReport">
                <button type="button" class="btn btn-success btn-lg" id="reportimpo">
                    <i class="fa fa-print fa-lg"></i> พิมพ์รายงาน
                </button>
            </div><br>

        </div>
    </div>
</div> <!-- ปิดcontainer -->
<%@ include file="../footer.jsp" %>
</body>
</html>
<script type="text/javascript">
    google.charts.load('current', {'packages':['bar']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        var typeBillId = $('#pagelist').val();
        var startDate = $('#startDate').val();
        var endDate = $('#endDate').val();


        $.ajax({
            method:"POST",
            url:"/farm3/getListAmount",
            contentType: "application/json",
            data : JSON.stringify({
                type_bill : typeBillId,
                start_date : startDate,
                end_date : endDate
            }),
            success: function (result) {
                var table = document.getElementById('summary')
                var list = new Array();
                var index = 0
                list[index] = ['ชื่อยา', 'รายจ่าย']
                for (var o in result) {
                    var obj = result[o]
                    var arr = [obj.trade_name, obj.price]
                    list[++index] = arr
                }
                var data = google.visualization.arrayToDataTable(list);

                var options = {
                    chart: {
                        title: 'บัญชีของยา',
                        subtitle: 'รายจ่ายในช่วง : 01/11/2560 ถึง 01/12/2560',
                    }
                };

                var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

                chart.draw(data, google.charts.Bar.convertOptions(options));
            }
        });

    }
</script>