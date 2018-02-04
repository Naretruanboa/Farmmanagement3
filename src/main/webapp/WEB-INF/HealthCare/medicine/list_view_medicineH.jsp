<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${MedList}" var="medicine">
						<tr>
										<td><%=i++%></td>
										<td>${medicine.tradeName}</td>
										<td>${medicine.commonName}</td>									
										<td>${medicine.groupMedicine.value}</td>
										<td>
										<form:form action="detail_medicineH" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${medicine.id}">
											<button type="submit" class="btn btn-warning">
												<i class="glyphicon glyphicon-search "></i>
											</button>
										</form:form>									
										</td>
										<td>
										<form:form action="edit_medicineH" method="POST" commandName="show">
											<input id="id" name="id" type="hidden"  value="${medicine.id}">
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form>
											
											<a href="">
												<input id="id" name="id" type="hidden"  value="${medicine.id}">
			  									
			  								</a>
											
										<%-- <form:form action="edit_medicine?id=${medicine.id }" method="POST" >
											<button name="action"  class="btn btn-primary">
												<i class="glyphicon glyphicon-pencil"></i>
											</button>
										</form:form> --%>
																			
										</td>
										<td>
										<button class="btn btn-danger"	value="${medicine.id }" onclick="chkdel(this.value)">
												<i class="glyphicon glyphicon glyphicon-remove"></i>
											</button>
																				
										</td>
						</tr>
						
</c:forEach>
<tr>
<td colspan="7"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>