<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 

%>
									<c:forEach items="${treat}" var="treatment">
									<tr>
										<%-- <td><%=i++ %></td> --%>
										<td >${treatment.dateTreat}</td>
																									 
										<td>${treatment.timeTreat}</td>
										
										<c:set var = "num" scope = "session"  value = "1"/>
										<c:if test= "${num==1}">
											<td><c:out value="${treatment.typeHealth.value }${treatment.disease.nameDisease}"></c:out></td>
										</c:if>
										
										<c:if test="${num==2}"><td><c:out value="${treatment.typeHealth.value }"></c:out></td></c:if>	 
										
										<c:if test="${num==3}"><td><c:out value="${treatment.typeHealth.value }"></c:out></td></c:if>	
										
										<td>${treatment.causeOfIllness}</td>
										
										<td><table class="table table-striped table-hover  table-bordered"
							style="font-size: 16px;">
											<tr><td style="width: 190px;">${treatment.medicine.tradeName}</td><td style="width: 60px;">1 CC${treatment.medicine.qty}</td></tr>
											<tr><td style="width: 190px;">${treatment.medicine.tradeName}</td><td style="width: 60px;">2 CC${treatment.medicine.qty}</td></tr>
											<tr><td style="width: 190px;">${treatment.medicine.tradeName}</td><td style="width: 60px;">2 CC${treatment.medicine.qty}</td></tr>
											<tr><td style="width: 190px;">${treatment.medicine.tradeName}</td><td style="width: 60px;">1 CC${treatment.medicine.qty}</td></tr>
											<tr><td style="width: 190px;">${treatment.medicine.tradeName}</td><td style="width: 60px;">0.5 CC ${treatment.medicine.qty}</td></tr>
											<tr><td style="width: 190px;">${treatment.medicine.tradeName}</td><td style="width: 60px;">1 CC${treatment.medicine.qty}</td></tr>
											
											</table></td>
									
										<%-- <td><table class="table table-striped table-hover  table-bordered"
							style="font-size: 16px;">
											<tr><td>1 ${treatment.medicine.qty}</td></tr>
											<tr><td>2 ${treatment.medicine.qty}</td></tr>
											<tr><td>3 ${treatment.medicine.qty}</td></tr>
											<tr><td>4 ${treatment.medicine.qty}</td></tr>
											<tr><td>5 ${treatment.medicine.qty}</td></tr>
											<tr><td>6 ${treatment.medicine.qty}</td></tr>
											
											</table></td>	 --%>
										<!-- <td></td> -->
										<td>${treatment.note}</td>
										
										
																										
									</tr>
								</c:forEach>
								
								
								
								
<!-- <tr>
<td colspan="7"><br></td>
</tr> -->

<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>