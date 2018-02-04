<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page1");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${MedRelease }" var="medicine">
						<tr>
							<td><%=i++%></td>	
							<td>${medicine.tradeName }</td>					
				    		<td>${medicine.commonName }</td>	   	
				        	<td>${medicine.groupMedicine.value }</td>	
				        	<td>${medicine.quantity }</td>
				        	<td>${medicine.unitMedicine.value }</td>
				        	<td>
				        		<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" 
							data-id1="${medicine.id }" data-name="${medicine.tradeName }" data-beforequantity="${medicine.quantity }">เบิก
							</button>
				        	</td>	
						</tr>
</c:forEach>
<input type="hidden" id="countPage1" value="${count1}"/>
<input type="hidden" id="Page1" value="${page1}"/>