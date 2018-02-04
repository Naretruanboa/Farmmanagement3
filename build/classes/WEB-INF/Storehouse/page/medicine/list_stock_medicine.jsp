<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${MedList }" var="medicine">
						<tr>
							<td><%=i++%></td>	
							<td>${medicine.tradeName }</td>					
				    		<td>${medicine.commonName }</td>	   	
				        	<td>${medicine.groupMedicine.value }</td>	
				        	<td>${medicine.quantity }</td>	
				        	<td>${medicine.unitMedicine.value }</td>	
				        	<td>${medicine.place }</td>		
				        	<%-- <td>
				   			<form:form action="detail_medicine?id=${medicine.id}" method="POST" commandName="show">
		
								<button type="submit" class="btn btn-warning">
									<i class="glyphicon glyphicon glyphicon-search"></i>
								</button>
							</form:form>
				   			</td>	 --%>
						</tr>
</c:forEach>
<tr>
<td colspan="7"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>