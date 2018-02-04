<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page1");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${List }" var="semen">
						<tr>
							<td><%=i++%></td>						
				    		<td>${semen.nameCattle }</td>
				    		<td>${semen.HNumber }</td>	
				    		<td>${semen.breed.value }</td>	   	
				        	<td>${semen.quantity }</td>
				        	<td>หลอด (โดีส)</td>	
				        	<td>
				        		<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" 
							data-id1="${semen.id }" data-name="${semen.nameCattle }" data-beforequantity="${semen.quantity }">เบิก
							</button>
							</td>
						</tr>
						</c:forEach>
<input type="hidden" id="countPage1" value="${count1}"/>
<input type="hidden" id="Page1" value="${page1}"/>