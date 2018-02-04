<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<c:url value="/resources/css/fileinput.css" />" media="all"
          rel='stylesheet' type='text/css' />
    <script src="<c:url value="/resources/js/jquery-1.10.2.js" />"></script>
    <script src="<c:url value="/resources/js/clicktable.js" />"></script>
    <script src="<c:url value="/resources/js/fileinput.js" />"></script>
    <title>บันทึกข้อมูลโค</title>
</head>
<body>
<%@ include file="../menu.jsp"%><br><br>
<div id="content">
<div class="container">
		<div class="col-md-3">
			<div class="jumbotron" style="background-color: rgb(218, 68, 83)" align="center">
				<p style="font-size: 28px; font-weight: 700; color: white;">ใบพันธุ์ประวัติโค</p>						
			</div>		
		</div>
	<div class="row">
		<hr>
	</div>
	<br> <br>
		<div class="row form-group">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h4 class="panel-title">
					<span class="fa fa-list-alt fa-lg"></span> ข้อมูลใบพันธุ์ประวัติโค</a>
				</h4>
			</div>
			<div class="panel-body">
				<form action="Pedigree" method="GET" id="pedi">
				<div class="row form-group">
					<div class="col-md-10">
					
								

                            <%--ข้อมูลโคข้างบนสุด--%>
                            <div class="row form-group">

                                <div class="col-md-6 " style="right : -50px">
                                    <fieldset><br>

                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">ชื่อ</label>
                                            <div class="col-md-5">
                                                <div class="input-group"  style="width: 280px" >
                                                    <input value="${cattle.name }" id="name" type="name" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">เจ้าของโค</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="ไทยเสรี" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">ผู้ปรับปรุงพันธุ์</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="${cattle.farm }" id="namefarm" type="namefarm" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">หมายเลขโค</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="${cattle.num }" id="num" type="text" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">เบอร์หู</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="B-1232" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>

                                <%--อีกฝั่ง--%>
                                
                                <div class="col-md-6 " style="right: -180px">
                                    <fieldset><br>

                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">ประเภทโค</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="${cattle.typeCattle.value }" id="typeCattle" type="name" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">สายพันธุ์โค</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                	<c:if test="${cattle.typeCattle.id == 1 }">
														<input value="${cattle.breed.value }" id="statusCattle" type="name" class="form-control" disabled="disabled"/>	
													</c:if>
													<c:if test="${cattle.typeCattle.id == 2 }">
														<input value="${cattle.typeDairy.value }" id="typeDairy" type="name" class="form-control" disabled="disabled"/>	
													</c:if>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">วันเกิดโค</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="${cattle.calved }" id="calved"  type="date" class="form-control" disabled="disabled"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <label class="col-md-offset-s col-md-4 control-lable">เพศ</label>
                                            <div class="col-md-5">
                                                <div class="input-group" style="width: 280px">
                                                    <input value="${cattle.sex.value }" id="statusCattle" type="name" class="form-control" disabled="disabled"/>	
                                                </div>
                                            </div>
                                            <br><br>
                                        </div>
                                        <br><br><br><br>
                                        
                                    </fieldset>
                                </div>



                                <%--3ชั่วรุ่น--%>
                               <br>
                                
   
                                <div class="col-md-6"  style="right : -240px">
                                                     
                                <center><table width="710" height="5" border="0" bordercolor="#000000">
								
                                    <tr class="style41">

                                        <td width="73">&nbsp;</td>
                                        <td width="84">&nbsp;</td>
                                        <td width="87">&nbsp;</td>
                                        <td width="111">&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler2" style="display:none">** RED SUGAR 104/93 LH C529759</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff"><div align="left" class="style297" id="spoiler" style="display:none" onclick="myFunction1()">** INFINITY 120/96 LH C706197</div></td>
                                        <td width="104" class="style297">&nbsp;</td>
                                        <td width="114" class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler3" style="display:none">** VANNA 5660 LH C273206</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td colspan="3" bgcolor="#ffffff"><div align="left" class="style294" onclick="myFunction()"><strong>L2 CAPTAIN LUCEY 116/01 LH C844030  </strong></div></td>
                                        <td>&nbsp;</td>
                                        <td width="1" class="style297">&nbsp;</td>
                                        <td width="5" class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler4" style="display:none">** SYNERGY 84/95 LH C615710</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff"><div align="left" class="style297" id="spoiler1" style="display:none" onclick="myFunction2()">** MILK &amp; HONEY 45/98 LH C763541</div></td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler5" style="display:none">** DOLCE FREDDO 34/92 LH C493544</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler8" style="display:none">** GLADIATOR 8/36 LH C85998</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff"><div align="left" class="style297" id="spoiler6" style="display:none" onclick="myFunction4()">** SPARTACUS 86/653 RH C317158</div></td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler9" style="display:none">** DREAMLADY 2C 9-77 LH S769</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td colspan="3" bgcolor="#ffffff"><div align="left" class="style294" onclick="myFunction3()"><strong>DREAMLADY IN RED 7-192 LE C754023</strong></div></td>
                                        <td>&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td height="16">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler11" style="display:none">** CHEROKEE PHANTOM USA 122/90 LE C457159</div></td>
                                    </tr>
                                    <tr class="style41">
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff"><div align="left" class="style297" id="spoiler7" style="display:none" onclick="myFunction5()">062/4 LH C573100</div></td>
                                        <td class="style297">&nbsp;</td>
                                        <td class="style297">&nbsp;</td>
                                    </tr>
                                    <tr class="style41">
                                        <td colspan="2">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td colspan="4" bgcolor="#ffffff" class="style297"><div align="left" id="spoiler10" style="display:none">** 062/7 LH C324276</div></td>
                                    </tr>
								
                                </table></center>
								
                               <br>
								</div>
								
								</div>
                                        <%--Cha กับ Hare--%>
                                <%--ตาราง--%>
                                <center><div class="row form-group" >
                                    
                                    
                                    
                                    <%--Beef กับ Braman--%>
                                     <c:if test="${cattle.typeCattle.id == 1 }">
                                     <center>
                                     	
                                     	
                                 			 <c:if test="${cattle.breed.id == 6 || cattle.breed.id == 2 }">
                                     	
                                     
                                    <table width="600" class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="3" bordercolor="#BDBDBD">
                                        <thead >
                                        <tr>
                                            <th bgcolor="#6495ED"><br> </th>
                                            <th bgcolor="#6495ED">BW<br>(Kg.)</th>
                                            <th bgcolor="#6495ED">WW<br>(Kg.)</th>
                                            <th bgcolor="#6495ED">YW <br>(Kg.)</th>
                                            <th bgcolor="#6495ED">MILK<br></th>
                                            <th bgcolor="#6495ED">TM<br></th>
                                            <th bgcolor="#6495ED">SC<br></th>
                                            <th bgcolor="#6495ED">FAT<br></th>
                                            <th bgcolor="#6495ED">REA<br></th>
                                            <th bgcolor="#6495ED">IMF<br>(%)</th>
                                            <th bgcolor="#6495ED">RUMP<br>(mm.)</th>
                                        </tr>
                                        <tr>
                                            <th bgcolor="#6495ED">EPD</th>
                                            <th>${cattle.cattlePedigree.bwEpd}</th>
                                            <th>${cattle.cattlePedigree.wwEpd}</th>
                                            <th>${cattle.cattlePedigree.ywEpd}</th>
                                            <th>${cattle.cattlePedigree.milkEpd}</th>
                                            <th>${cattle.cattlePedigree.tmEpd}</th>
                                            <th>${cattle.cattlePedigree.scEpd}</th>
                                            <th>${cattle.cattlePedigree.fatEpd}</th>
                                            <th>${cattle.cattlePedigree.reaEpd}</th>
                                            <th>${cattle.cattlePedigree.imfEpd}</th>
                                            <th>${cattle.cattlePedigree.rumpEpd}</th>
                                           
                                        </tr>
                                        <tr>
                                            <th bgcolor="#6495ED">ACC (%)</th>
                                             <th>${cattle.cattlePedigree.bwAcc}</th>
                                            <th>${cattle.cattlePedigree.wwAcc}</th>
                                            <th>${cattle.cattlePedigree.ywAcc}</th>
                                            <th>${cattle.cattlePedigree.milkAcc}</th>
                                            <th>${cattle.cattlePedigree.tmAcc}</th>
                                            <th>${cattle.cattlePedigree.scAcc}</th>
                                            <th>${cattle.cattlePedigree.fatAcc}</th>
                                            <th>${cattle.cattlePedigree.reaAcc}</th>
                                            <th>${cattle.cattlePedigree.imfAcc}</th>
                                            <th>${cattle.cattlePedigree.rumpAcc}</th>
                                        </tr>
                                        </thead>
											
											</table>
										</center>
												
                                     	</c:if>
											
											
                                        <%--Cha กับ Hare--%>
                                        <br>
                                        
                                        
                                         <c:if test="${cattle.breed.id == 1 || cattle.breed.id == 7 }">
                                        <table class="table table-striped table-hover" class="form-control" class="font-nav" style="font-size: 18px;" border="3" bordercolor="#BDBDBD">
                                          <center>
                                         
                                            <thead >
                                            <tr>
                                                <th bgcolor="#6495ED"><br> </th>
                                                <th bgcolor="#6495ED">Calving Ease DIR<br>(%)</th>
                                                <th bgcolor="#6495ED">Calving Ease DTRS<br>(%)</th>
                                                <th bgcolor="#6495ED">Gestation Length <br>(Days)</th>
                                                <th bgcolor="#6495ED">BW<br>(Kg.)</th>
                                                <th bgcolor="#6495ED">200 Day Wt.<br>(Kg.)</th>
                                                <th bgcolor="#6495ED">400 Day Wt.<br>(Kg.)</th>
                                                <th bgcolor="#6495ED">600 Day Wt.<br>(Kg.)</th>
                                                <th bgcolor="#6495ED">MCW<br>(Kg.)</th>
                                                <th bgcolor="#6495ED">SS<br>(cm.)</th>
                                                <th bgcolor="#6495ED">CWT<br>(Kg.)</th>
                                                <th bgcolor="#6495ED">EMA<br>(sq.cm)</th>
                                                <th bgcolor="#6495ED">RIB Fat<br>(mm.)</th>
                                                <th bgcolor="#6495ED">Rump Fat<br>(mm.)</th>
                                                <th bgcolor="#6495ED">Retail Beef Yield<br>(%) </th>
                                                <th bgcolor="#6495ED">IMF<br>(%)</th>
                                            </tr>
                                            <tr>
                                                <th bgcolor="#6495ED">EBV</th>
                                                <th>${cattle.cattlePedigree.calvingEaseDirEbv}</th>
                                                <th>${cattle.cattlePedigree.calvingEaseDtrsEbv}</th>
                                                <th>${cattle.cattlePedigree.gestationLengthEbv}</th>
                                                <th>${cattle.cattlePedigree.bwEbv}</th>
                                              	<th>${cattle.cattlePedigree.wt200dayEbv}</th>
                                                <th>${cattle.cattlePedigree.wt400dayEbv}</th>
                                                <th>${cattle.cattlePedigree.wt600dayEbv}</th>
                                                <th>${cattle.cattlePedigree.matCowEbv}</th>
                                                <th>${cattle.cattlePedigree.scrotalSizeEbv}</th>
                                                <th>${cattle.cattlePedigree.carcaseWtEbv}</th>
                                                <th>${cattle.cattlePedigree.eyeMuscleAreaEbv}</th>
                                                <th>${cattle.cattlePedigree.ribFatEbv}</th>
                                                <th>${cattle.cattlePedigree.rumpEbv}</th>
                                                <th>${cattle.cattlePedigree.retailBeefYieldEbv}</th>
                                                <th>${cattle.cattlePedigree.imfEbv}</th> 
                                            </tr>
                                            <tr>
                                                <th bgcolor="#6495ED">ACC</th>
                                                <th>${cattle.cattlePedigree.calvingEaseDirAcc}</th>
                                                <th>${cattle.cattlePedigree.calvingEaseDtrsAcc}</th>
                                                <th>${cattle.cattlePedigree.gestationLengthAcc}</th>
                                                <th>${cattle.cattlePedigree.bwAcc}</th>
                                             	<th>${cattle.cattlePedigree.wt200dayAcc}</th>
                  								<th>${cattle.cattlePedigree.wt400dayAcc}</th>
                                                <th>${cattle.cattlePedigree.wt600dayAcc}</th>
                                                <th>${cattle.cattlePedigree.matCowAcc}</th>
                                                <th>${cattle.cattlePedigree.scrotalSizeAcc}</th>
                                                <th>${cattle.cattlePedigree.carcaseWtAcc}</th>
                                                <th>${cattle.cattlePedigree.eyeMuscleAreaAcc}</th>
                                                <th>${cattle.cattlePedigree.ribFatAcc}</th>
                                                <th>${cattle.cattlePedigree.rumpAcc}</th>
                                                <th>${cattle.cattlePedigree.retailBeefYieldAcc}</th>
                                                <th>${cattle.cattlePedigree.imfAcc}</th>
                                                                                             
                                            </tr>
                                            </thead>


                                            <tbody style="text-align: center;" id="lists"></tbody>
                                        </table>
                                        </c:if>
                                         </center>
                                        </c:if>
                                       
								

                                        <%--โคนม--%>
                                    
								 <c:if test="${cattle.typeCattle.id == 2 }">
								 <br>
							
                                        <div class="col-md-6" style="right: -120px">
                                            <fieldset><br>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-0 col-md-5 control-lable">เอ็นยึดเต้านมหน้า</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.breastFront}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">เอ็นยึดเต้านมหลัง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.breastBack}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความสูงเต้านมหลัง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.breastBack}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความกว้างเต้านมหลัง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.breastBackWidth}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความลึกของเต้านม</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.breastDepth}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความยาวของหัวนม</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.lenthNipple}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ตำแหน่งหัวนมของเต้านมคู่หน้า</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.frontBreast}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ตำแหน่งหัวนมของเต้านมคู่หลัง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.backBreast}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">อัตราการคลอดยาก</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.birthRate}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">อัตราการคลอดยากลูกสาว</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.daughterBirthRate}"  name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">การตายแรกคลอด</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.firstDeath}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">การตายแรกคลอดลูกสาว</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.daughterFirstDeath}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">อัตราการตั้งท้องลูกสาว</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.daughterPregnancyRate}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">คะแนนโซมาติกเซล</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.somatic}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>

                                        <%--อีกฝั่ง--%>
                                        <div class="col-md-5 " style="right: -190px">
                                            <fieldset><br>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">อายุควรให้ผลผลิต</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.ageYield}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความกว้างของสะโพก</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.widthHips}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความโค้งของขาหลัง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.curBackLegs}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความตรงของขาหลัง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.straightBackLegs}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">โครงร่าง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.body}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความลึกลำตัว</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.bodyDepth}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ความแข็งแรง</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.stong}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">มุมสะโพก</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.hipAngle}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">มุมกีบ</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.hoofCorner}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">คะแนนขาและกีบ</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.pointLegHoof}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">น้ำนม</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.milkDairy}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">โปรตีน</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.protein}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <label class="col-md-offset-s col-md-5 control-lable">ไขมัน</label>
                                                    <div class="col-md-6">
                                                        <div class="input-group">
                                                            <input value="${cattle.cattlePedigree.fatDairy}" name="" id="" type="text" class="form-control" disabled="disabled"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                        </c:if>
                                </div>

                            </div>
                          <br>
                          <br> 
                                       		<%-- 	</c:forEach> --%>
					<div class="col-md-offset-8 col-md-6">
						<a href=cattlelist><button type="button" class="btn btn-embossed btn-primary">
						<i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp; ย้อนกลับ</button></a>
						
<!-- 						<a href=EditDisease><button type="button" class="btn btn-embossed btn-warning">
						<i class="fa fa-pencil fa-lg"></i></i>&nbsp; แก้ไขข้อมูล</button></a> -->
					</div>

                        </div>
                    </div>
                </div>
                
            </div></table>
            

		

        </div>
    </div></div>
<%@ include file="../footer.jsp"%>

<script>
    function myFunction() {
        if (document.getElementById('spoiler').style.display == 'none') {
            document.getElementById('spoiler' ).style.display = ''
            document.getElementById('spoiler1' ).style.display = ''
        }
        else {
            document.getElementById('spoiler').style.display = 'none'
            document.getElementById('spoiler1').style.display = 'none'
            document.getElementById('spoiler2').style.display = 'none'
            document.getElementById('spoiler3').style.display = 'none'
            document.getElementById('spoiler4').style.display = 'none'
            document.getElementById('spoiler5').style.display = 'none'
        }
    }
    function myFunction1() {
        if (document.getElementById('spoiler2').style.display == 'none') {
            document.getElementById('spoiler2' ).style.display = ''
            document.getElementById('spoiler3' ).style.display = ''
        }
        else {
            document.getElementById('spoiler2').style.display = 'none'
            document.getElementById('spoiler3').style.display = 'none'

        }
    }
    function myFunction2() {
        if (document.getElementById('spoiler4').style.display == 'none') {
            document.getElementById('spoiler4' ).style.display = ''
            document.getElementById('spoiler5' ).style.display = ''
        }
        else {
            document.getElementById('spoiler4').style.display = 'none'
            document.getElementById('spoiler5').style.display = 'none'
        }
    }
    function myFunction3() {
        if (document.getElementById('spoiler6').style.display == 'none') {
            document.getElementById('spoiler6' ).style.display = ''
            document.getElementById('spoiler7' ).style.display = ''
        }
        else {
            document.getElementById('spoiler6').style.display = 'none'
            document.getElementById('spoiler7').style.display = 'none'
            document.getElementById('spoiler8').style.display = 'none'
            document.getElementById('spoiler9').style.display = 'none'
            document.getElementById('spoiler10').style.display = 'none'
            document.getElementById('spoiler11').style.display = 'none'

        }
    }
    function myFunction4() {
        if (document.getElementById('spoiler8').style.display == 'none') {
            document.getElementById('spoiler8' ).style.display = ''
            document.getElementById('spoiler9' ).style.display = ''
        }
        else {
            document.getElementById('spoiler8').style.display = 'none'
            document.getElementById('spoiler9').style.display = 'none'

        }
    }
    function myFunction5() {
        if (document.getElementById('spoiler10').style.display == 'none') {
            document.getElementById('spoiler10' ).style.display = ''
            document.getElementById('spoiler11' ).style.display = ''
        }
        else {
            document.getElementById('spoiler10').style.display = 'none'
            document.getElementById('spoiler11').style.display = 'none'

        }
    }
</script>

</body>
</html>