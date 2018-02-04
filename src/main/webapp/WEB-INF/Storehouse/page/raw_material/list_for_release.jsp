<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page1");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${List}" var="raw">
						<tr>
							<td><%=i++%></td>						
				    		<td>${raw.name }</td>	   	
				        	<td>${raw.typeMaterial.value }</td>	
				        	<td>${raw.quantity}</td>
				        	<td>${raw.unitRawMaterial.value }</td>	
				        	<td>
				        		<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" 
							data-id1="${raw.id }" data-name="${raw.name }" data-beforequantity="${raw.quantity }">เบิก
							</button>
							</td>
						</tr>
						</c:forEach>
<input type="hidden" id="countPage1" value="${count1}"/>
<input type="hidden" id="Page1" value="${page1}"/>