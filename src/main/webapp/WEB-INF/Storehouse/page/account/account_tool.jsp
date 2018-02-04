<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>การแก้ไขบัญชีวัสดุ/อุปกรณ์</title>
</head>
<body>
<%--<c:if test="${sessionScope.username == null}">--%>
<%--<c:redirect url="index"/>--%>
<%--</c:if>--%>
<jsp:include page="../menu.jsp"/>
<%int i=1; %>
<div class="container">
    <hr>
    <div class=" row form-group">
        <div class="form-inline">
            <div class="col-md-3">
                <div class="jumbotron" style="background-color: rgb(218, 68, 83)"
                     align="center">
                    <p style="font-size: 28px; font-weight: 700; color: white;">การแก้ไขบัญชีวัสดุ/อุปกรณ์</p>
                </div>
            </div>
            <div class="col-md-9" align="right">
                <div class="input-group form-search">

						<span class="input-group-btn search-query"> <select class="form-control  search-query btn-info" id="selectValue" style="width: 150px;color: white;">
								<option value="1">ชื่อบัญชี</option>
						</select> <input id="search" class="form-control search-query "
                                         style="margin-left: -2px; margin-right: -1px;">

							<button onclick="search()"
                                    class="btn btn-info search-query glyphicon glyphicon-search"
                                    style="padding: 5px 10px 5px 10px;"></button>
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
                    <th>ชื่อบัญชี</th>
                    <th>ประเภท</th>
                    <th>จำนวน</th>
                    <th>หน่วย</th>
                    <th>ราคารวม</th>
                    <th>วันที่นำเข้า</th>
                    <th>แก้ไข</th>
                    <th>ลบ</th>
                    <!--  <th>รายละเอียดเพิ่มเติม</th>		 -->
                </tr>
                <c:forEach items="${toolImportList}" var="data">
                <tr align="center">

                    <td>${data.id}</td>
                    <td>${data.toolEntity.name}</td>
                    <td>${data.toolEntity.typeToolEntity.value}</td>
                    <td>${data.quantity}</td>
                    <td>${data.toolEntity.unitToolEntity.value}</td>
                    <td>${data.price}</td>
                    <td>${data.day}</td>
                    <td>
                        <a href="/farm3/modify_tool?id=${data.id}"<%--?id=${data.id}--%>"><button name="action" class="btn btn-warning btn-lg"><i class="fa fa-pencil"></i>&nbsp; แก้ไข</button></a>
                    </td>
                    <td>
                        <button name="action" value="Add" id="add" onclick="deleteAccountTool(${data.id})"
                                class="btn btn-danger btn-lg">
                            <i class="fa fa-times fa-lg"></i>&nbsp; ลบ
                        </button>
                    </td>

                </tr>
                </c:forEach>
                </thead>

                <tbody style="text-align: center;" id="listM">

                </tbody>

            </table>

            <div class="row form-group" id="page" align="center"></div>
        </div>
    </div>
</div> <!-- end container -->
<jsp:include page="../footer.jsp"/>
<script>

    function deleteAccountTool(id) {
        $.ajax({
            type: "DELETE",
            url: "/farm3/account_tool/"+id,
            error: function () {
                window.location.reload()
            }
        })
    }

</script>
</body>
</html>