<%--
  Created by IntelliJ IDEA.
  User: naret
  Date: 9/7/2017
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/includes.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <title>เลือกวัตถุดิบการคำนวณ</title>
</head>

<body>

<c:if test="${sessionScope.username == null}">
	<c:redirect url="index"/>
</c:if>
 <c:forEach items="${userlist}" var="p">
 	<c:if test="${p.privilege.id != 2 && p.privilege.id != 1}">
		<c:redirect url="index"/>
	</c:if>
 </c:forEach>

<jsp:include page="../menu.jsp"/>

<div class="container">
    <div class=" row form-group">

        <div class="form-inline">
            <div class="col-md-4">
                <div class="jumbotron" style="background-color: rgb(218, 68, 83)"
                     align="center">
                    <p style="font-size: 26px; font-weight: 900; color: white;">วัตถุดิบอาหารหยาบและวัตถุดิบอาหารข้น</p>
                </div>
            </div>
        </div>
    </div>
    <form:form action="addrawnu" method="POST"  id="rawmaterialnutrient" modelAttribute="rawmaterialnutrient" commandName="rawmaterialnutrient" >
			

        <div class="row form-group">
            <div class="form-inline">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title" style="font-size: 25px;">เลือกวัตถุดิบ</h4>
                        </div>
                        <div class="panel-body">
                            <br>
                            <table class="table table-striped table-hover  table-bordered"  style="color: black;">

                                <tr>
                                    <th>จำนวนวัตถุดิบ</th>
                                    <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                    <th><button class="btn btn-success" onclick="cal2()">เลือก</button><br></th>
                                </tr>

                                <table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 16px;" border="1" bordercolor="#BDBDBD">


                                    <thead >
                                    <tr>
                                        <th>ชื่อวัตถุดิบ</th>
                                        <th>เลือกประเภท</th>
                                        <th>ราคา(บาท/กก.)</th>
                                        <th>แก้ไข</th>
                                        <th>ลบ</th>
                                        <th>บันทึก</th>
                                        <th>ค่าทางโภชนะ</th>

                                    </tr>

                                    <!-- 	Request para int id =1
                                        Rawmaterial raw1 = rawmaterialservice.getRawmaterial(id);
                                        String nameraw1 = raw1.getName;
                                        nameraw1= รำละเอียด -->
                                    <tr>
                                    
                  <th>
                  <div class="row form-group">
						<label class="col-md-offset-2 col-md-3 control-label"><font style="color: red;">* </font>ชื่อ </label>
						<div class="form-inline">
									<form:select class="form-control" path="rawMaterial.id" id="rawMaterialid">
										<form:option value="0">เลือกวัตถุดิบ</form:option>
											<c:forEach items="${raw }" var="raw">
												
												<form:option value="${raw.id }"  >${raw.name }</form:option>
													
												
											</c:forEach>
									</form:select>
								</div>
					</div>
					
                  </th>                  
                                    
					

                                    
                                    
                                    
                         
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>
                                    <tr>
                                        <th>
                                            <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                                <option value="0">เลือกวัตถุดิบ</option>
                                                <c:forEach items="${rawlist}" var="group">
                                                    <c:if test="${IDR[0] == group.id }">
                                                        <option value="${group.id}" selected="selected">${group.name}</option>
                                                    </c:if>
                                                    <c:if test="${group.typeMaterial.id == 2}">
                                                        <c:if test="${IDR[0] != group.id }">
                                                            <option value="${group.id }">${group.name}</option>
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </th>
                                        <th> <select class="form-control rawid " name="raw" id="raw" onchange="listdata();">
                                            <option value="0">อาหารหยาบ</option>
                                            <option value="0">อาหารข้น</option>

                                            <c:forEach items="${rawlist}" var="group">
                                                <c:if test="${IDR[0] == group.id }">
                                                    <option value="${group.id}" selected="selected">${group.name}</option>
                                                </c:if>
                                                <c:if test="${group.typeMaterial.id == 2}">
                                                    <c:if test="${IDR[0] != group.id }">
                                                        <option value="${group.id }">${group.name}</option>
                                                    </c:if>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                        </th>

                                        <th><input id="ub1" size="10" name="ub1"type="text" value="${uu[0] }"><br></th>
                                        <%-- <th><input id="calcal1" name="calcal1" type="text" value="${d[0] }"><br></th> --%>
                                        <%--<th>${d[0] } <br></th>--%>
                                        <th><button class="btn btn-success" style=" background-color: #F4A460;border-color: #F4A460" onclick="cal2()">แก้ไข</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #FF0033;border-color: #FF0033" onclick="cal2()">ลบ</button><br></th>
                                        <th><button class="btn btn-success" onclick="cal2()">บันทึก</button><br></th>
                                        <th><button class="btn btn-success" style=" background-color: #4169E1;border-color: #4169E1"onclick="cal2()">ตรวจสอบ</button><br></th>
                                        <!-- <th><input id="nameraw1" name="nameraw1" type="text"><br></th> -->
                                    </tr>




                                    </thead>

                                </table>
                        </div>
                        <div class="row form-group">
                            <div class="col-md-12" align="center">
                                <button type="button" class="btn btn-default btn-lg" id="cen4" onclick="cen4()">
                                    <a href="setrawmaterialbeef">จัดสัดส่วนอาหารข้น</a>
                                </button>
                                <!-- <button type="button" class="btn btn-default btn-lg" id="cen1" onclick="cen1()">
                                <a href="calculatedairy">จัดสัดส่วนอาหารราคาต่ำสุด</a>
                                </button> -->
                            </div>
                    </div>
                </div>

            </div>

    </form:form>


</div>


<jsp:include page="../footer.jsp"/>








</body>

<script type="text/javascript">

function addraw(){
	
	
	swal({	title: "ยืนยันบันทึกข้อมูล?",   
		text: "คุณต้องการยืนยันบันทึกข้อมูลวัตถุดิบหรือไม่!",   
		type: "warning",   
		showCancelButton: true,   
		confirmButtonColor: "#55c7dd",   
		cancelButtonText: "ไม่ต้องการ",
		confirmButtonText: "ต้องการ", 
		closeOnConfirm: false,   
		closeOnCancel: false }, 
		function(isConfirm){   
			if (isConfirm) {
				if($("#rawMaterialid").val() == 0){
					swal("กรุณาเลือกวัตถุดิบ");
				}else{
					
					$.post('chkRawNU',{id:$("#rawMaterialid").val()},function(msg){
						if(msg=="yes"){
	
				$.post('addrawnu',$("#rawmaterialnutrient").serialize(),
				      function (result) {
				     	swal({	title: "สำเร็จ",   
							text: "บันทึกการลงทะเบียนเรียบร้อยแล้ว!",  
							timer: 2000,   
							type: "success",
							showConfirmButton: false 
						},
						
				     	function(){
							window.location.href='Setrawmaterialnutrient';
							
						}
				     	);
				     	
						//setInterval(function(){location.reload()}, 2000);
					})
					}//end if spost
					else{swal("ผิดพลาด", "ชื่อวัตถุดิบซ้ำ!", "error");}
				}) //end post
				}
				} else { 
				swal({	title: "Cancelled!",   
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


</html>
